// MECHA COMBAT

#define SPECIES_MECHA "Mech"
#define SPECIES_MECHA_HEAVY "Mech Heavy Frame"
#define SPECIES_MECHA_LIGHT "Mech Light Frame"
#define SPECIES_MECHA_ENEMY "Mech Enemy"


//SPECIES CODE

/obj/effect/temp_visual/dir_setting/bloodsplatter/mech
	splatter_type = "csplatter"
	color = COLOR_OIL

/obj/item/device/motiondetector/sg/mech
	icon = 'void-marines/icons/armored/hardpoint_modules.dmi'
	icon_state = "warray"
	detector_range = 10

	var/mob/living/carbon/human/mech/linked_mech

/mob/living/carbon/human/mech
	var/mech_name
	var/armor_color = "#ffffff"
	var/player_painted = FALSE
	var/datum/action/minimap/marine/minimap_type = /datum/action/minimap/marine
	var/obj/item/device/motiondetector/sg/mech/md

/mob/living/carbon/human/mech/Initialize(mapload, new_species = SPECIES_MECHA)
	. = ..(mapload, new_species)

	var/datum/action/minimap/mini = new minimap_type
	mini.give_to(src, mini)

/mob/living/carbon/human/mech/Life(delta_time)
	. = ..()
	if(pixel_x != -32)
		pixel_x = -32

/mob/living/carbon/human/mech/attack_hand(mob/user)
	var/mob/living/carbon/human/pilot = user
	if(!istype(pilot))
		return ..()

	if(stat == DEAD)
		return

	. = ..()
	if(pilot.mob_size < MOB_SIZE_BIG)
		if(pilot.a_intent == INTENT_GRAB || pilot.a_intent == INTENT_DISARM)
			return FALSE
	else
		return .

	if(do_after(pilot, 5 SECONDS, INTERRUPT_ALL|BEHAVIOR_IMMOBILE, BUSY_ICON_FRIENDLY))
		for(var/mob/living/carbon/human/occupant in contents)
			occupant.forceMove(get_turf(src))
			occupant.ckey = src.ckey
			if(!occupant.client)
				var/ai_brain = src.GetComponent(/datum/component/human_ai)
				QDEL_NULL(ai_brain)

		spawn(0.2 SECONDS)
			pilot.forceMove(src)
			src.ckey = pilot.ckey
			faction = pilot.faction
			if(!client)
				AddComponent(/datum/component/human_ai)
				get_ai_brain().appraise_inventory()
			else if(!mech_name)
				var/new_name = tgui_input_text(src, "Enter the name of your mecha.", title = "Name")
				if(!new_name)
					return
				src.mech_name = new_name
				src.real_name = mech_name
				src.name = mech_name
				if(!player_painted)

					var/painting_mode = tgui_alert(src, "Do you want deep or simple customisation?", "Painting Mode", list("Simple", "Deep"))
					switch(painting_mode)
						if("Simple")
							armor_color = input(src, "Please select the color to paint your mech.", "Armor Color") as color|null
							player_painted = TRUE

							for(var/obj/limb/part as anything in limbs)
								if(part.status & LIMB_DESTROYED)
									continue
								part.plate_color = armor_color

							update_color_overlays()
						if("Deep")
							deep_coloring()

				var/support_module = tgui_alert(src, "Choose Additional Module", "Modification", list("Sensor Array", "Air-Dump"))
				switch(support_module)
					if("Sensor Array")
						md = new(src)
						md = new(src)
						md.linked_mech = src
						md.iff_signal = LAZYACCESS(faction_group, 1)
						md.toggle_active(null, FALSE)
					if("Air-Dump")
						give_action(src, /datum/action/human_action/activable/mech_thow)
		return TRUE

/mob/living/carbon/human/mech/proc/deep_coloring()
	var/list/parts_list = list("Head", "Torso", "Left Arm", "Right Arm", "Legs")

	var/part = tgui_input_list(src, "What part you want to color?", "Painting Mode", parts_list)
	switch(part)
		if("Head")
			var/part_color = input(src, "Please select the color to paint your head.", "Armor Color") as color|null
			var/obj/limb/head/head = get_limb("head")
			if(head)
				head.plate_color = part_color
			var/continue_painting = tgui_alert(src, "Do you want to continue?", "Painting Mode", list("Yes", "No"))
			switch(continue_painting)
				if("Yes")
					deep_coloring()
					return TRUE
				if("No")
					player_painted = TRUE
					update_color_overlays()
					return TRUE
		if("Torso")
			var/part_color = input(src, "Please select the color to paint your head.", "Armor Color") as color|null
			var/obj/limb/chest/chest = get_limb("chest")
			if(chest)
				chest.plate_color = part_color
			var/continue_painting = tgui_alert(src, "Do you want to continue?", "Painting Mode", list("Yes", "No"))
			switch(continue_painting)
				if("Yes")
					deep_coloring()
					return TRUE
				if("No")
					player_painted = TRUE
					update_color_overlays()
					return TRUE
		if("Legs")
			var/part_color = input(src, "Please select the color to paint your head.", "Armor Color") as color|null
			var/obj/limb/leg/r_leg/r_leg = get_limb("r_leg")
			var/obj/limb/leg/l_leg/l_leg = get_limb("l_leg")
			if(r_leg && l_leg)
				r_leg.plate_color = part_color
				l_leg.plate_color = part_color
			var/continue_painting = tgui_alert(src, "Do you want to continue?", "Painting Mode", list("Yes", "No"))
			switch(continue_painting)
				if("Yes")
					deep_coloring()
					return TRUE
				if("No")
					player_painted = TRUE
					update_color_overlays()
					return TRUE
		if("Right Arm")
			var/part_color = input(src, "Please select the color to paint your head.", "Armor Color") as color|null
			var/obj/limb/arm/r_arm/r_arm = get_limb("r_arm")
			var/obj/limb/hand/r_hand/r_hand = get_limb("r_hand")
			if(r_arm && r_hand)
				r_arm.plate_color = part_color
				r_hand.plate_color = part_color
			var/continue_painting = tgui_alert(src, "Do you want to continue?", "Painting Mode", list("Yes", "No"))
			switch(continue_painting)
				if("Yes")
					deep_coloring()
					return TRUE
				if("No")
					player_painted = TRUE
					update_color_overlays()
					return TRUE
		if("Left Arm")
			var/part_color = input(src, "Please select the color to paint your head.", "Armor Color") as color|null
			var/obj/limb/arm/l_arm/l_arm = get_limb("l_arm")
			var/obj/limb/hand/l_hand/l_hand = get_limb("l_hand")
			if(l_arm && l_hand)
				l_arm.plate_color = part_color
				l_hand.plate_color = part_color
			var/continue_painting = tgui_alert(src, "Do you want to continue?", "Painting Mode", list("Yes", "No"))
			switch(continue_painting)
				if("Yes")
					deep_coloring()
					return TRUE
				if("No")
					player_painted = TRUE
					update_color_overlays()
					return TRUE

/mob/living/carbon/human/mech/proc/update_color_overlays()
	remove_overlay(ARMOR_COLOR_LAYER)

	var/list/color_overlays = list()
	for(var/obj/limb/part as anything in limbs)
		if(part.status & LIMB_DESTROYED)
			continue

		color_overlays += part.get_color_overlays()

	overlays_standing[ARMOR_COLOR_LAYER] += color_overlays

	apply_overlay(ARMOR_COLOR_LAYER)

/obj/limb/proc/get_color_overlays()
	. = list()

	color_overlay.icon_state = "[icon_name]_colored"
	color_overlay.color = plate_color
	. += color_overlay

/mob/living/carbon/human/mech/can_be_pulled_by(mob/M)
	. = ..()
	if(M.mob_size < MOB_SIZE_BIG)
		return FALSE

/mob/living/carbon/human/mech/light/Initialize(mapload, new_species = SPECIES_MECHA_LIGHT)
	. = ..(mapload, new_species)
	var/special_overlay = image('void-marines/icons/mecha_ability_overlays.dmi', icon_state = "booster_active", pixel_x = 10)
	overlays += special_overlay

/mob/living/carbon/human/mech/heavy/Initialize(mapload, new_species = SPECIES_MECHA_HEAVY)
	. = ..(mapload, new_species)
	var/special_overlay = image('void-marines/icons/mech_core_overlays.dmi', icon_state = "assaultarmor")
	overlays += special_overlay

/mob/living/carbon/human/mech/enemy/Initialize(mapload, new_species = SPECIES_MECHA_ENEMY)
	. = ..(mapload, new_species)

/datum/unarmed_attack/punch/heavy_mech
	attack_verb = list("punch","clock","slugg","bludgeon","maul")
	attack_sound = 'sound/weapons/synthpunch1.ogg'
	damage = 100

/datum/species/mech
	group = SPECIES_MECHA
	name = SPECIES_MECHA
	icobase = 'void-marines/icons/mech_medium.dmi'
	deform = 'void-marines/icons/mech_medium.dmi'
	eyes = "blank_s"
	mob_flags = KNOWS_TECHNOLOGY
	flags = NO_BREATHE|NO_CLONE_LOSS|NO_BLOOD|NO_POISON|IS_SYNTHETIC|NO_CHEM_METABOLIZATION|NO_NEURO
	insulated = TRUE
	pain_type = /datum/pain/human_hero
	stamina_type = /datum/stamina/none
	unarmed_type = /datum/unarmed_attack/punch/synthetic
	secondary_unarmed_type = /datum/unarmed_attack/punch/synthetic
	death_message = "lets out a blip as it collapses and stops moving..."
	knock_down_reduction = 5
	stun_reduction = 5
	gibbed_anim = "gibbed-m"
	dusted_anim = "dust-m"
	mob_inherent_traits = list(
		TRAIT_EMOTE_CD_EXEMPT,
		TRAIT_YAUTJA_TECH,
		TRAIT_FOREIGN_BIO,
		TRAIT_SUPER_STRONG,
		TRAIT_LEADERSHIP
	)
	blood_color = COLOR_OIL
	uses_skin_color = FALSE
	speech_sounds = list()
	speech_chance = 0

	has_organ = list(
		"heart" = /datum/internal_organ/heart/prosthetic,
		"brain" = /datum/internal_organ/brain/prosthetic,
		)

	inherent_verbs = list(
		/mob/living/carbon/human/proc/toggle_inherent_nightvison
	)

	cold_level_1 = -1
	cold_level_2 = -1
	cold_level_3 = -1

	heat_level_1 = 500
	heat_level_2 = 1000
	heat_level_3 = 2000

	slowdown = -0.5
	total_health = 1000

	brute_mod = 0.2
	burn_mod = 0.1

	bloodsplatter_type = /obj/effect/temp_visual/dir_setting/bloodsplatter/mech

/datum/species/mech/apply_signals(mob/living/carbon/human/H)
	RegisterSignal(H, COMSIG_HUMAN_IMPREGNATE, PROC_REF(cancel_impregnate), TRUE)

/datum/species/mech/proc/cancel_impregnate(datum/source)
	SIGNAL_HANDLER
	return COMPONENT_NO_IMPREGNATE

/datum/species/mech/handle_post_spawn(mob/living/carbon/human/H)
	give_action(H, /datum/action/innate/message_squad/mech)
	give_action(H, /datum/action/human_action/activable/mech_repair)
	give_action(H, /datum/action/human_action/activable/eject)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	H.mob_size = MOB_SIZE_BIG
	H.pixel_x = -32

	return ..()

/datum/species/mech/handle_death(mob/living/carbon/human/H, gibbed)
	. = ..()
	for(var/mob/living/carbon/human/pilot in H.contents)
		pilot.forceMove(get_turf(H))
		pilot.ckey = H.ckey

/datum/species/mech/light
	group = SPECIES_MECHA_LIGHT
	name = SPECIES_MECHA_LIGHT

	slowdown = -1.5
	total_health = 600

	brute_mod = 0.4
	burn_mod = 0.2

/datum/species/mech/light/handle_post_spawn(mob/living/carbon/human/H)
	give_action(H, /datum/action/innate/message_squad/mech)
	give_action(H, /datum/action/human_action/activable/mech_repair)
	give_action(H, /datum/action/human_action/activable/eject)
	give_action(H, /datum/action/human_action/activable/mech_boost)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	H.mob_size = MOB_SIZE_BIG
	H.pixel_x = -32

	return ..()

/datum/species/mech/heavy
	group = SPECIES_MECHA_HEAVY
	name = SPECIES_MECHA_HEAVY

	slowdown = 2
	total_health = 2000

	brute_mod = 0.1
	burn_mod = 0.1

	unarmed_type = /datum/unarmed_attack/punch/heavy_mech
	secondary_unarmed_type = /datum/unarmed_attack/punch/heavy_mech

/datum/species/mech/heavy/handle_post_spawn(mob/living/carbon/human/H)
	give_action(H, /datum/action/innate/message_squad/mech)
	give_action(H, /datum/action/human_action/activable/mech_repair)
	give_action(H, /datum/action/human_action/activable/eject)
	give_action(H, /datum/action/human_action/activable/mech_shield)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	H.mob_size = MOB_SIZE_BIG
	H.pixel_x = -32

	return ..()

/datum/species/mech/less
	group = SPECIES_MECHA_ENEMY
	name = SPECIES_MECHA_ENEMY

	slowdown = -0.5
	total_health = 500

	brute_mod = 0.6
	burn_mod = 0.1

/datum/species/mech/less/handle_post_spawn(mob/living/carbon/human/H)
	H.universal_speak = TRUE
	H.universal_understand = TRUE
	H.gender = PLURAL

	H.mob_size = MOB_SIZE_BIG
	H.pixel_x = -32

	return ..()

/obj/item/weapon/gun/drg_scout_assault/mech
	name = "\improper Assault Rifle"
	desc = "A dependable, hefty weapon."

	flags_gun_features = GUN_AUTO_EJECTOR|GUN_AMMO_COUNTER|GUN_ONE_HAND_WIELDED

	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "assaultrifle"
	item_state = "assaultrifle_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons_l.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons_r.dmi'
		)

	current_mag = /obj/item/ammo_magazine/rifle/drg_scout_assault/mech

/obj/item/weapon/gun/drg_scout_assault/mech/set_gun_config_values()
	set_fire_delay(FIRE_DELAY_TIER_LMG)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_OFF
	recoil_unwielded = RECOIL_OFF
	accuracy_mult_unwielded = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	scatter_unwielded = SCATTER_AMOUNT_NONE

/obj/item/ammo_magazine/rifle/drg_scout_assault/mech
	name = "\improper Magazine (10x24mm)"
	desc = "A 10x24mm assault rifle magazine."
	icon = 'void-marines/icons/mecha_ammo.dmi'
	icon_state = "lightcannon_ammo"
	item_state = "generic_mag"
	max_rounds = 300
	w_class = SIZE_SMALL
	gun_type = /obj/item/weapon/gun/drg_scout_assault/mech

/obj/item/weapon/gun/drg_engineer_shotgun/mech
	name = "\improper Autoshotgun"
	desc = "The primary weapon for the Breaching Mechs."
	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "rpg"
	item_state = "rpg_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons_l.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons_r.dmi'
		)

	current_mag = /obj/item/ammo_magazine/drg_engineer_shotgun/mech

	starting_attachment_types = list()
	attachable_allowed = list()

/obj/item/weapon/gun/drg_engineer_shotgun/mech/set_gun_config_values()
	..()
	set_fire_delay(FIRE_DELAY_TIER_5)
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_10
	recoil = RECOIL_AMOUNT_TIER_5

/obj/item/ammo_magazine/drg_engineer_shotgun/mech
	name = "\improper buckshot drum (12g)"
	desc = "A 12g automatic shotgun drum magazine."
	icon = 'void-marines/icons/mecha_ammo.dmi'
	icon_state = "grenadelauncher_ammo"
	gun_type = /obj/item/weapon/gun/drg_engineer_shotgun/mech
	w_class = SIZE_SMALL
	max_rounds = 100

/obj/item/weapon/gun/drg_gunner_minigun/mech
	name = "\improper Powered Chaingun"
	desc = "What's more effective than bullets? A whole LOT of bullets."

	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "minigun"
	item_state = "minigun_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons_l.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons_r.dmi'
		)

	current_mag = /obj/item/ammo_magazine/drg_gunner_minigun/mech
	aim_slowdown = SLOWDOWN_ADS_SUPERWEAPON

/obj/item/weapon/gun/drg_gunner_minigun/mech/set_gun_config_values()
	set_fire_delay(FIRE_DELAY_TIER_12)

/obj/item/ammo_magazine/drg_gunner_minigun/mech
	name = "\improper drum (20mm)"
	icon = 'void-marines/icons/mecha_ammo.dmi'
	icon_state = "minigun_ammo"
	item_state = "generic_mag"
	w_class = SIZE_MEDIUM
	max_rounds = 5000
	gun_type = /obj/item/weapon/gun/drg_gunner_minigun/mech
	ammo_band_icon = null
	ammo_band_icon_empty = null

/obj/item/weapon/sword/mech
	name = "Mech Sword"
	desc = "An weapon, made by best USCM engineers"
	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "blade"
	item_state = "blade_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons_l.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons_r.dmi'
		)
	force = 100
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 50
	sharp = IS_SHARP_ITEM_SIMPLE
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/Egloves.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 2

/obj/item/clothing/under/rank/mech
	name = "youshouldntseethis"
	desc = "REPORT!!!"
	icon = 'void-marines/icons/mech_dam.dmi'
	icon_state = "lol"
	item_state = "lol"
	worn_state = "lol"
	item_icons = list(
		WEAR_BODY = 'void-marines/icons/mech_dam.dmi'
	)

/obj/item/tank/jetpack/mech
	icon = 'void-marines/icons/mech_equipment.dmi'
	icon_state = "mech_missile_pod"
	item_state =  "tfoot_gas"
	item_icons = list(
		WEAR_BACK = 'void-marines/icons/mech_core_overlays.dmi'
		)

/obj/item/parachute/mech
	icon = 'void-marines/icons/mech_equipment.dmi'
	icon_state = "mecha_drill_loader"

/obj/structure/machinery/computer/mech_selection
	name = "mech requisition"
	icon_state = "robot"
	density = TRUE

	var/radius = 4
	var/list/previous_users = list()

/obj/structure/machinery/computer/mech_selection/attack_hand(mob/living/user)
	if(user in previous_users)
		to_chat(user, SPAN_WARNING("Ты не можешь выбрать больше одного меха."))
		return

	. = ..()

	var/mech_selection = tgui_alert(user, "What type of mech you want to select?", "Mech selection", list("Medium", "Heavy", "Light"))
	if(!mech_selection)
		return

	var/mech_type
	switch(mech_selection)
		if("Medium")
			mech_type = /datum/equipment_preset/mech
		if("Heavy")
			mech_type = /datum/equipment_preset/mech/heavy
		if("Light")
			mech_type = /datum/equipment_preset/mech/light

	var/turf/target = get_random_turf_in_range_unblocked(loc, radius, 2)
	var/obj/structure/droppod/equipment/mech/droppod = new(target, mech_type)

	droppod.drop_time = 3 SECONDS
	droppod.launch(target)

	playsound(target, 'sound/effects/alert.ogg', 75)
	previous_users += user

/obj/structure/droppod/equipment/mech
	var/mech_type

/obj/structure/droppod/equipment/mech/spawn_equipment(mech_type)
	equipment_to_spawn = new /mob/living/carbon/human/mech(src)
	src.mech_type = mech_type
	return equipment_to_spawn

/obj/structure/droppod/equipment/mech/move_equipment()
	..()
	arm_equipment(equipment_to_spawn, mech_type)

	playsound(loc, 'sound/mecha/powerup.ogg', 100, FALSE)
	addtimer(CALLBACK(loc, GLOBAL_PROC_REF(playsound), loc, 'sound/mecha/nominal.ogg', 100, FALSE), 3 SECONDS)
