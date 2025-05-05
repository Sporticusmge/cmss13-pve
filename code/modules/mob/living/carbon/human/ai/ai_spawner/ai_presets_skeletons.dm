/datum/human_ai_equipment_preset/skeletons
	faction = FACTION_UNDEAD

/datum/equipment_preset/uscm/private_equipped/undead
	name = "USCM Soldier (Undead)"
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/uscm/private_equipped/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/uscm/private_equipped/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/uscm/leader_equipped/undead
	name = "USCM Leader (Undead)"
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/uscm/leader_equipped/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/uscm/leader_equipped/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/rifleman/undead
	name = "UPP Soldier (Undead)"
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/rifleman/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/rifleman/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/machinegunner/undead
	name = "UPP Gunner (Undead)"
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/machinegunner/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/machinegunner/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/squadlead/undead
	name = "UPP Leader (Undead)"
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/squadlead/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/squadlead/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/human_ai_equipment_preset/skeletons/dead_marine
	name = "Undead USCM Rifleman"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/uscm/private_equipped/undead

/datum/human_ai_equipment_preset/skeletons/dead_marine_leader
	name = "Undead USCM Squad Leader"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/uscm/leader_equipped/undead

/datum/human_ai_equipment_preset/skeletons/dead_upp_rifleman
	name = "Undead UPP Rifleman"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/upp/rifleman/undead

/datum/human_ai_equipment_preset/skeletons/dead_upp_machinegunner
	name = "Undead UPP Gunner"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/upp/machinegunner/undead

/datum/human_ai_equipment_preset/skeletons/dead_upp_sergeant
	name = "Undead UPP Sergeant"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/upp/squadlead/undead
