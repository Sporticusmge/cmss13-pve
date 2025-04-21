/datum/human_ai_equipment_preset/skeletons
	faction = FACTION_UNDEAD

/datum/equipment_preset/uscm/private_equipped/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/uscm/private_equipped/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/uscm/private_equipped/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/uscm/leader_equipped/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/uscm/leader_equipped/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/uscm/leader_equipped/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/rifleman/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/rifleman/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/rifleman/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/machinegunner/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/machinegunner/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/machinegunner/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/upp/squadlead/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/upp/squadlead/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/upp/squadlead/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/clf/soldier/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/clf/soldier/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/clf/soldier/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/clf/soldier/shotgun/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/clf/soldier/shotgun/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/clf/soldier/shotgun/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
	new_human.set_species("Skeleton")
	new_human.body_type = "skeleton"

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/flamer/undead
	faction = FACTION_UNDEAD
	faction_group = FACTION_UNDEAD

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/flamer/undead/load_id(mob/living/carbon/human/mech/new_human)
	new_human.faction = faction
	new_human.faction_group = faction_group

/datum/equipment_preset/colonist/bluecollar/rebel/soldier/flamer/undead/load_race(mob/living/carbon/human/new_human, client/mob_client)
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

/datum/human_ai_equipment_preset/skeletons/dead_rebel_soldier/undead
	name = "Undead Rebel Soldier"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/clf/soldier/undead

/datum/human_ai_equipment_preset/skeletons/dead_rebel_soldier_alt
	name = "Undead Rebel Soldier"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/colonist/bluecollar/rebel/soldier/undead

/datum/human_ai_equipment_preset/skeletons/dead_rebel_shotgunner
	name = "Undead Rebel Breacher"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/clf/soldier/shotgun/undead

/datum/human_ai_equipment_preset/skeletons/dead_rebel_flamer
	name = "Undead Rebel Liquidator"
	desc = "Long-dead soldier."
	path = /datum/equipment_preset/colonist/bluecollar/rebel/soldier/flamer/undead
