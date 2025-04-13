/datum/equipment_preset/mech
	name = "MECH | Bluefor"
	faction = FACTION_MARINE
	faction_group = (FACTION_MARINE)
	flags = EQUIPMENT_PRESET_EXTRA
	idtype = null
	skills = /datum/skills/synthetic

	languages = list(LANGUAGE_ENGLISH)

	assignment = "Mech"
	rank = "Mech"

/datum/equipment_preset/mech/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/mech/load_name(mob/living/carbon/human/mech/new_human, randomise)
	var/new_name = "MECHANIZED UNIT ([rand(1, 9)][rand(1, 9)][rand(1, 9)])"
	new_human.change_real_name(new_human, new_name)

/datum/equipment_preset/mech/load_race(mob/living/carbon/human/mech/new_human, client/mob_client, late_join)
	var/mob/living/carbon/human/mech/M = new /mob/living/carbon/human/mech(new_human.loc)

	if(!new_human.mind)
		new_human.mind_initialize()

	new_human.mind.transfer_to(M, TRUE)

	QDEL_IN(new_human, 0.3 SECONDS)

	M.set_species(SPECIES_MECHA)
	M.body_type = "mech"

	spawn(0.4 SECONDS)

		load_name(M, mob_client)
		load_skills(M, mob_client)
		load_languages(M, mob_client)
		load_id(M, mob_client)
		load_gear(M, mob_client)
		load_status(M, mob_client)

		load_traits(M, mob_client)

		M.assigned_equipment_preset = src

		M.regenerate_icons()

		handle_late_join(M, late_join)

		M.hud_set_squad()
		M.add_to_all_mob_huds()

	return TRUE

/datum/equipment_preset/mech/New()
	. = ..()
	access = get_access(ACCESS_LIST_COLONIAL_ALL)

/datum/equipment_preset/mech/load_gear(mob/living/carbon/human/mech/new_human)
	var/obj/item/clothing/under/rank/mech/armor = new /obj/item/clothing/under/rank/mech(new_human)
	armor.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(armor, WEAR_BODY)

	var/pick_gun = pick(1,2)
	switch(pick_gun)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_scout_assault/mech, WEAR_R_HAND)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_engineer_shotgun/mech, WEAR_R_HAND)

/datum/equipment_preset/mech/heavy
	name = "HEAVY MECH | Bluefor"
	faction = FACTION_MARINE
	faction_group = (FACTION_MARINE)

/datum/equipment_preset/mech/heavy/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/mech/heavy/load_race(mob/living/carbon/human/mech/new_human, client/mob_client, late_join)
	var/mob/living/carbon/human/mech/heavy/M = new /mob/living/carbon/human/mech/heavy(new_human.loc)

	if(!new_human.mind)
		new_human.mind_initialize()

	new_human.mind.transfer_to(M, TRUE)

	QDEL_IN(new_human, 0.3 SECONDS)

	M.set_species(SPECIES_MECHA_HEAVY)
	M.body_type = "mech"

	spawn(0.4 SECONDS)

		load_name(M, mob_client)
		load_skills(M, mob_client)
		load_languages(M, mob_client)
		load_id(M, mob_client)
		load_gear(M, mob_client)
		load_status(M, mob_client)

		load_traits(M, mob_client)

		M.assigned_equipment_preset = src

		M.regenerate_icons()

		handle_late_join(M, late_join)

		M.hud_set_squad()
		M.add_to_all_mob_huds()

	return TRUE

/datum/equipment_preset/mech/heavy/load_gear(mob/living/carbon/human/mech/new_human)
	var/obj/item/clothing/under/rank/mech/armor = new /obj/item/clothing/under/rank/mech(new_human)
	armor.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(armor, WEAR_BODY)

	var/pick_gun = pick(1,2)
	switch(pick_gun)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_scout_assault/mech, WEAR_R_HAND)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_engineer_shotgun/mech, WEAR_R_HAND)

/datum/equipment_preset/mech/light
	name = "LIGHTWEIGHT MECH | Bluefor"
	faction = FACTION_MARINE
	faction_group = (FACTION_MARINE)

/datum/equipment_preset/mech/light/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/mech/light/load_race(mob/living/carbon/human/mech/new_human, client/mob_client, late_join)
	var/mob/living/carbon/human/mech/light/M = new /mob/living/carbon/human/mech/light(new_human.loc)

	if(!new_human.mind)
		new_human.mind_initialize()

	new_human.mind.transfer_to(M, TRUE)

	QDEL_IN(new_human, 0.3 SECONDS)

	M.set_species(SPECIES_MECHA_LIGHT)
	M.body_type = "mech"

	spawn(0.4 SECONDS)

		load_name(M, mob_client)
		load_skills(M, mob_client)
		load_languages(M, mob_client)
		load_id(M, mob_client)
		load_gear(M, mob_client)
		load_status(M, mob_client)

		load_traits(M, mob_client)

		M.assigned_equipment_preset = src

		M.regenerate_icons()

		handle_late_join(M, late_join)

		M.hud_set_squad()
		M.add_to_all_mob_huds()

	return TRUE

/datum/equipment_preset/mech/light/load_gear(mob/living/carbon/human/mech/new_human)
	var/obj/item/clothing/under/rank/mech/armor = new /obj/item/clothing/under/rank/mech(new_human)
	armor.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(armor, WEAR_BODY)

	var/pick_gun = pick(1,2)
	switch(pick_gun)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_scout_assault/mech, WEAR_R_HAND)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_engineer_shotgun/mech, WEAR_R_HAND)


////////////
////////////
////////////
////////////
////////////
////////////


/datum/equipment_preset/mech/red
	name = "MECH | Redfor"
	faction = FACTION_INSURRECTIONUA
	faction_group = (FACTION_INSURRECTIONUA)
	flags = EQUIPMENT_PRESET_EXTRA
	idtype = /obj/item/card/id/lanyard
	skills = /datum/skills/civilian/survivor

	languages = list(LANGUAGE_ENGLISH)

	assignment = "Mech"
	rank = "Mech"

/datum/equipment_preset/mech/red/load_race(mob/living/carbon/human/mech/enemy/new_human, client/mob_client, late_join)
	var/mob/living/carbon/human/mech/enemy/M = new /mob/living/carbon/human/mech/enemy(new_human.loc)

	M.faction = FACTION_INSURRECTIONUA
	M.faction_group = (FACTION_INSURRECTIONUA)

	if(!new_human.mind)
		new_human.mind_initialize()

	new_human.mind.transfer_to(M, TRUE)

	QDEL_IN(new_human, 0.3 SECONDS)

	M.set_species(SPECIES_MECHA_ENEMY)
	M.body_type = "mech"

	spawn(0.4 SECONDS)

		load_name(M, mob_client)
		load_skills(M, mob_client)
		load_languages(M, mob_client)
		load_id(M, mob_client)
		load_gear(M, mob_client)
		load_status(M, mob_client)

		load_traits(M, mob_client)

		M.assigned_equipment_preset = src

		M.regenerate_icons()

		handle_late_join(M, late_join)

		M.hud_set_squad()
		M.add_to_all_mob_huds()

		M.AddComponent(/datum/component/human_ai)

		var/datum/human_ai_brain/ai_brain = M.get_ai_brain()
		if(ai_brain)
			ai_brain.appraise_inventory()
	return TRUE

/datum/equipment_preset/mech/red/space
	name = " MECH SPACED | Redfor"

/datum/equipment_preset/mech/red/space/load_gear(mob/living/carbon/human/mech/new_human)
	var/obj/item/clothing/under/rank/mech/armor = new /obj/item/clothing/under/rank/mech(new_human)
	armor.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(armor, WEAR_BODY)

	new_human.equip_to_slot_or_del(new /obj/item/tank/jetpack/mech, WEAR_BACK)

	var/pick_gun = pick(1,2)
	switch(pick_gun)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_scout_assault/mech, WEAR_R_HAND)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/drg_engineer_shotgun/mech, WEAR_R_HAND)
