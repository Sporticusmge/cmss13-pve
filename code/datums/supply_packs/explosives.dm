// Group to populate with all the explosives exept OB and mortar shell

/datum/supply_packs/explosives_mines
	name = "claymore mines crate (x20)"
	contains = list(
		/obj/item/storage/box/explosive_mines,
		/obj/item/storage/box/explosive_mines,
		/obj/item/storage/box/explosive_mines,
		/obj/item/storage/box/explosive_mines,
	)
	cost = 50
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive mine boxes crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_plastic
	name = "plastic explosives crate (x6)"
	contains = list(
		/obj/item/explosive/plastic,
		/obj/item/explosive/plastic,
		/obj/item/explosive/plastic,
		/obj/item/explosive/plastic,
		/obj/item/explosive/plastic,
		/obj/item/explosive/plastic,
	)
	cost = 60
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper plastic explosives crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_breaching_charge
	name = "breaching charge crate (x6)"
	contains = list(
		/obj/item/explosive/plastic/breaching_charge,
		/obj/item/explosive/plastic/breaching_charge,
		/obj/item/explosive/plastic/breaching_charge,
		/obj/item/explosive/plastic/breaching_charge,
		/obj/item/explosive/plastic/breaching_charge,
		/obj/item/explosive/plastic/breaching_charge,
	)
	cost = 60
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper plastic explosives crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_hedp
	name = "M40 HEDP blast grenade box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box,
	)
	cost = 100
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive HEDP grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_hiam_incendiary
	name = "M77 HIAM Incendiary grenade box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/incen,
	)
	cost = 100
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive HIAM grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_hedp_super
	name = "M40/2 HEDP blast grenade box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/super,
	)
	cost = 150
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive HEDP/2 grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_hedp_m15
	name = "M15 frag grenade box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/m15,
	)
	cost = 120
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive m15 frag grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_heap
	name = "M38 HEAP grenade box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/heap,
	)
	cost = 200
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive m38 HEAP grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_smoke
	name = "M47 HSDP smoke box crate (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/smoke,
	)
	cost = 30
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive m47 HSDP grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_40mm
	name = "40MM HEDP grenade box (for grenade launchers) (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/fourtymil,
	)
	cost = 50
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive 40mm HEDP grenade crate (WARNING)"
	group = "Explosives"

/datum/supply_packs/explosives_40mm_incendiary
	name = "40MM Incendiary grenade box (for grenade launchers) (x25)"
	contains = list(
		/obj/item/ammo_box/magazine/nade_box/fourtymil/incen,
	)
	cost = 50
	containertype = /obj/structure/closet/crate/explosives
	containername = "\improper explosive 40mm Incendiary grenade crate (WARNING)"
	group = "Explosives"
