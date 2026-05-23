//group for putting all the items about mortar. mortar/shells/backpack...

//---------------------------------------------
//Backpacks
//---------------------------------------------

/datum/supply_packs/mortar
	name = "M112 HIMAT crate (Mortar HIMAT x1)"
	contains = list(
		/obj/item/mortar_kit/himat,
		/obj/item/storage/belt/gun/mortarbelt,
		/obj/item/storage/backpack/marine/mortarpack,
	)
	cost = 40
	containertype = /obj/structure/closet/crate/weapon
	containername = "\improper M112 HIMAT mortar crate"
	group = "Mortar"

//------------------------Mortar ammunition crates----------------

/datum/supply_packs/ammo_mortar_he
	name = "M112 HIMAT mortar shells crate (x25 HE)"
	cost = 100
	contains = list(
		/obj/structure/largecrate/supply/explosives/himat_explosive,
	)
	containertype = /obj/structure/closet/crate/secure/mortar_ammo
	containername = "\improper M112 mortar HE shells crate"
	group = "Mortar"

/datum/supply_packs/ammo_mortar_ap
	name = "M112 HIMAT mortar shells crate (x25 AP)"
	cost = 100
	contains = list(
		/obj/structure/largecrate/supply/explosives/himat_antipersonnel,
	)
	containertype = /obj/structure/closet/crate/secure/mortar_ammo
	containername = "\improper M112 mortar AP shells crate"
	group = "Mortar"

/datum/supply_packs/ammo_mortar_incendiary
	name = "M112 HIMAT mortar shells crate (x25 Incendiary)"
	cost = 100
	contains = list(
		/obj/structure/largecrate/supply/explosives/himat_incendiary,
	)
	containertype = /obj/structure/closet/crate/secure/mortar_ammo
	containername = "\improper M112 mortar INC shells crate"
	group = "Mortar"
