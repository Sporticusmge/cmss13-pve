//ARSR packs
//These are non orderable packs that get in automaticly though the ARSR system.
//Note these should never show up to buy and some will only show up later in the round.
//BIG NOTE: Don't add living things to crates, that's bad, it will break the shuttle.


/datum/supply_packs_asrs
	/// How likely we are to select this pack over others
	var/cost = ASRS_MEDIUM_WEIGHT
	/// Which pool of ASRS automatically dispensed supplies this belongs to
	var/pool = ASRS_POOL_MAIN
	/// What supply pack would this dispense
	var/datum/supply_packs/reference_package

//===================================
// Rounds
//===================================
// Magazines
/datum/supply_packs_asrs/gun/ammo_hpr
	reference_package = /datum/supply_packs/ammo_hpr
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_m4a3_mag_box
	reference_package = /datum/supply_packs/ammo_m4a3_mag_box
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_m4a3_mag_box_ap
	reference_package = /datum/supply_packs/ammo_m4a3_mag_box_ap
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_m4a3_mag_box_hp
	reference_package = /datum/supply_packs/ammo_m4a3_mag_box_hp
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_mag_box
	reference_package = /datum/supply_packs/ammo_mag_box
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_mag_box_ap
	reference_package = /datum/supply_packs/ammo_mag_box_ap

/datum/supply_packs_asrs/ammo_shell_box
	reference_package = /datum/supply_packs/ammo_shell_box
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_shell_box_buck
	reference_package = /datum/supply_packs/ammo_shell_box_buck
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_shell_box_flechette
	reference_package = /datum/supply_packs/ammo_shell_box_flechette
	cost = ASRS_HIGHEST_WEIGHT

/datum/supply_packs_asrs/ammo_smartgun
	reference_package = /datum/supply_packs/ammo_smartgun

/datum/supply_packs_asrs/ammo_napalm
	reference_package = /datum/supply_packs/ammo_napalm
	cost = ASRS_HIGHEST_WEIGHT

//===================================
// Mortar ammo
//===================================
// Misc supplies

/datum/supply_packs_asrs/batteries
	reference_package = /datum/supply_packs/batteries
	cost = ASRS_HIGHEST_WEIGHT

// ============================
// FOOD POOL - for Mess Tech gradual supplies throughout the round
/datum/supply_packs_asrs/ingredient
	reference_package = /datum/supply_packs/ingredient
	pool = ASRS_POOL_FOOD
	cost = ASRS_HIGHEST_WEIGHT
