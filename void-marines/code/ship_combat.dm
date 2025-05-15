/obj/structure/sector_ftl/enemy
	name = "ship"
	desc = "It's big"
	icon = null
	icon_state = null

	var/next_move_in = 20

// Теряется за сломанный компонент. Умирает на нуле
	var/max_hull_health = 5
	var/hull_health = 5

// Берёт на себя урон, если уклонение не прошло
	var/shield_down = FALSE
	var/shield_health = 3

// Если ноль - НПС не стреляет
	var/guns_down = FALSE
	var/guns_health = 3

// Если ноль - НПС не может уклонится и сдвинуться с места
	var/engines_down = FALSE
	var/engines_health = 3

// Мы горим
	var/on_fire = FALSE

// Установленное оружие
	var/list/weapons = list(/obj/structure/weapons_ftl)

/obj/structure/sector_ftl/enemy/Entered(atom/movable/A)
	. = ..()
	if(istype(A, /obj/structure/ship_ftl/players))
		var/obj/structure/ship_ftl/players/P = A
		P.in_combat = TRUE
		P.console.balloon_alert_to_viewers("WARNING! ENEMY CONTACT INBOUND!")
		START_PROCESSING(SSobj, src)

/obj/structure/sector_ftl/enemy/process()

	if(next_move_in > 0)
		next_move_in -= 1

	if(next_move_in <= 0)
		var/action = pick("Attack","Repair", "Move")
		switch(action)
			if("Attack")
				attack_playership()
			if("Repair")
				fix_ship()
			if("Move")
				move_ship()
		next_move_in = 20

/obj/structure/sector_ftl/enemy/proc/attack_playership()
/obj/structure/sector_ftl/enemy/proc/fix_ship()
/obj/structure/sector_ftl/enemy/proc/move_ship()

/obj/item/ammo_ftl
	name = "ammo box"
	desc = "It's big"

/obj/structure/weapons_ftl
	name = "gun"
	desc = "It's big"
	icon = null
	icon_state = null

	// Текущий боезапас и максимальный
	var/max_ammo = 1
	var/ammo = 1

	// Какие боеприпасы принимает
	var/accepting_ammo = /obj/item/ammo_ftl

	// Сколько урона с одного попадания
	var/damage = 1
	// Сколько выстрелов за применение
	var/shots_at_time = 1
	// Некоторое оружие бьёт сквозь щиты
	var/ignore_shields = FALSE
	// Некоторое оружие может поджечь случайный компонент
	var/flamable = FALSE

/obj/structure/ship_ftl/players
	name = "ship"
	desc = "It's big"
	icon = null
	icon_state = null

	var/in_combat = FALSE // Мы в бою?
	var/evading = FALSE // Мы уклоняемся?
	var/deflecting = FALSE // Мы блокируем?
	var/firing_distance = "Close" // "Far", "Normal", "Close". У разных пушек разная дистанция стрельбы

	var/can_fire = TRUE // Работают у нас пушки в принципе?
	var/can_jump = FALSE // Можем мы сбежать из боя?

	var/max_hull_health = 10
	var/hull_health = 10 // Понижается, когда какой-то компонент ломается. ГГ, если ноль
	var/list/ship_modules = list("Shield","Cannons","Engines","Reactor","Scanner") // Компоненты

	var/obj/structure/helm_ftl/console = null // Привязанная консоль

/obj/structure/helm_ftl/Initialize()
	. = ..()
	for(var/obj/structure/helm_ftl/controlled_console in world)
		console = controlled_console

/obj/structure/helm_ftl
	name = "ship control panel"
	desc = "Pilot ship using this"
	icon = null
	icon_state = null

	anchored = TRUE
	density = TRUE

	var/obj/structure/ship_ftl/players/P = null // Привязанный шип

	var/list/actions = list(
		"Jump" = image('mods/_fd/fd_tbs/icons/tbs_ui.dmi', "Ability"), // Переместиться в следующий сектор
		"Engage" = image('mods/_fd/fd_tbs/icons/tbs_ui.dmi', "Ability"), // Уменьшить дистанцию до врага
		"Disengage" = image('mods/_fd/fd_tbs/icons/tbs_ui.dmi', "Ability"), // Увеличить дистанцию между кораблём и врагом
		"Evade" = image('mods/_fd/fd_tbs/icons/tbs_ui.dmi', "Ability") // Уклониться от следующего залпа ценой двигателей
		"Deflect" = image('mods/_fd/fd_tbs/icons/tbs_ui.dmi', "Ability") // Попытаться заблокировать следующий залп ценой щитов
	)

/obj/structure/helm_ftl/Initialize()
	. = ..()
	for(var/obj/structure/ship_ftl/players/playable_ship in world)
		P = playable_ship

/obj/structure/helm_ftl/attack_hand(mob/user)
	var/

	var/action = show_radial_menu(user, src, actions, require_near = TRUE)
	if(!action)
		return
	switch(action)

		if("Jump")
			if(P.in_combat)
				if(P.can_jump)
					balloon_alert_to_viewers("FTL-JUMP INITIATED...")
					if(do_after(user, 5 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.Move(get_step(P, dir))
						return TRUE
				else
					balloon_alert_to_viewers("CURRENTLY CHARGING!")
					return FALSE
			else
				balloon_alert_to_viewers("FTL-JUMP INITIATED...")
				if(do_after(user, 5 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
					P.Move(get_step(P, dir))
					return TRUE

		if("Engage")
			// Добавить сюда проверку на то, цел ли хоть один из двигателей
			if(P.in_combat)
				if(P.firing_distance == "Close")
					balloon_alert_to_viewers("WARNING! SHIP ON THE COLLISION COURSE!")
					if(do_after(user, 5 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_HOSTILE))
						// Тут код столкновения с другим кораблём
						return TRUE
				if(P.firing_distance == "Normal")
					balloon_alert_to_viewers("WARNING! MOVING TO KILLZONE!")
					if(do_after(user, 1 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.firing_distance = "Close"
						return TRUE
				if(P.firing_distance == "Far")
					balloon_alert_to_viewers("WARNING! MOVING TO THE MIDDLE LINE!")
					if(do_after(user, 1 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.firing_distance = "Normal"
						return TRUE
			else
				balloon_alert_to_viewers("NO ENEMY SHIP DETECTED...PROCEED FURTHER...")
				return FALSE

		if("Disengage")
			// Добавить сюда проверку на то, цел ли хоть один из двигателей
			if(P.in_combat)
				if(P.firing_distance == "Close")
					balloon_alert_to_viewers("WARNING! MOVING OUT OF THE KILLZONE!")
					if(do_after(user, 1 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.firing_distance = "Normal"
				if(P.firing_distance == "Normal")
					balloon_alert_to_viewers("WARNING! MOVING OUT OF THE MIDDLE LINE!")
					if(do_after(user, 1 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.firing_distance = "Far"
						return TRUE
				if(P.firing_distance == "Far")
					balloon_alert_to_viewers("WARNING! SHIP UNABLE TO MOVE FURTHER!")
					return FALSE
			else
				balloon_alert_to_viewers("NO ENEMY SHIP DETECTED...PROCEED FURTHER...")
				return FALSE

		if("Evade")
			// Добавить сюда проверку на то, цел ли хоть один из двигателей
			if(P.in_combat)
				if(P.evading == TRUE)
					balloon_alert_to_viewers("EVADING MANEUVER ALREADY IN ACTION...")
					return FALSE
				if(P.evading == FALSE)
					balloon_alert_to_viewers("SETTING ENGINES UP...")
					if(do_after(user, 2 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
						P.evading = TRUE
						// Код нанесения урона модулям двигателей должен быть вот тут
					return TRUE
			else
				balloon_alert_to_viewers("NO ENEMY SHIP DETECTED...PROCEED FURTHER...")
				return FALSE
		if("Deflect")
			// Добавить сюда проверку на то, цел ли щит
			if(P.in_combat)
					if(P.deflecting == TRUE)
						balloon_alert_to_viewers("SHIELDS ALREADY UP...")
						return FALSE
					if(P.deflecting == FALSE)
						balloon_alert_to_viewers("FOCUSING POWER ON THE FRONT SHIELD...")
						if(do_after(user, 2 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_GENERIC))
							P.deflecting = TRUE
							// Код нанесения урона модулю щита должен быть вот тут
						return TRUE
			else
				balloon_alert_to_viewers("NO ENEMY SHIP DETECTED...PROCEED FURTHER...")
				return FALSE
