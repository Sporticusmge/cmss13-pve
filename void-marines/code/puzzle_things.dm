/obj/item/puzzle/keycard
	name = "security keycard"
	desc = "This feels like it belongs to a door."
	icon = 'void-marines/icons/puzzle_things.dmi'
	icon_state = "keycard"
	force = 0
	throwforce = 0
	throw_speed = 1
	throw_range = 7
	var/unlock_tag

/obj/structure/machinery/puzzle/keycard_panel
	name = "keycard panel"
	desc = "A panel that controls something nearby. This one requires a keycard."
	icon = 'void-marines/icons/puzzle_things.dmi'
	icon_state = "panel_keycard"
	var/list/to_open = list()
	var/unlock_item = /obj/item/puzzle/keycard
	var/id_tag

/obj/structure/machinery/door/airlock/puzzle
	name = "locked door"
	desc = "This door only opens under certain conditions. It looks virtually indestructible."
	icon = 'void-marines/icons/puzzle_things.dmi'
	no_panel = TRUE
	not_weldable = TRUE
	use_power = FALSE
	autoclose = FALSE
	locked = TRUE
	icon_state = "door_locked"
	stat = 0
	heavy = TRUE
	masterkey_resist = TRUE
	openspeed = 8 SECONDS
	unacidable = TRUE

/obj/structure/machinery/door/airlock/puzzle/Initialize()
	. = ..()
	for(var/obj/structure/machinery/puzzle/keycard_panel/P in world)
		if(P.id_tag == id_tag)
			P.to_open += src

/obj/structure/machinery/puzzle/keycard_panel/attackby(obj/item/I,mob/user)
	if(istype(I,/obj/item/puzzle/keycard))
		var/obj/item/puzzle/keycard/K = I
		if(K.unlock_tag != id_tag)
			to_chat(user, "Access Denied")
			playsound(user.loc, 'sound/machines/terminal_error.ogg', 25, 0)
			return
		flick("panel_keycard", src)
		playsound(user.loc, 'sound/machines/ping.ogg', 25, 0)
		for(var/obj/structure/machinery/door/airlock/A in to_open)
			if(A.locked)
				A.unlock()
				A.open()
				A.lock()
			else
				A.unlock()
				A.close()
				A.lock()
		to_chat(user, "You swipe the keycard.")
