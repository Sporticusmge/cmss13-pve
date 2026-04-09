// add all the gear in this group.

/datum/supply_packs/motiondetector
	name = "Motion Detector (x2)"
	contains = list(
		/obj/item/device/motiondetector,
		/obj/item/device/motiondetector,
		)
	cost = 40
	containertype = /obj/structure/closet/crate/supply
	containername = "Motion Detector crate"
	group = "Gear"

/datum/supply_packs/motiondetector_suit
	name = "XM4 pattern intel armor (x1)"
	contains = list(
		/obj/item/device/motiondetector,
		)
	cost = 100
	containertype = /obj/structure/closet/crate/supply
	containername = "XM4 crate"
	group = "Gear"

/datum/supply_packs/night_vision
	name = "Night Vision (x4)"
	contains = list(
		/obj/item/device/helmet_visor/night_vision,
		/obj/item/device/helmet_visor/night_vision,
		/obj/item/device/helmet_visor/night_vision,
		/obj/item/device/helmet_visor/night_vision,
		)
	cost = 80
	containertype = /obj/structure/closet/crate/supply
	containername = "Night vision crate"
	group = "Gear"

/datum/supply_packs/night_vision
	name = "Medical Visor (x4)"
	contains = list(
		/obj/item/device/helmet_visor/medical,
		/obj/item/device/helmet_visor/medical,
		/obj/item/device/helmet_visor/medical,
		/obj/item/device/helmet_visor/medical,
		)
	cost = 60
	containertype = /obj/structure/closet/crate/supply
	containername = "Medical Visor crate"
	group = "Gear"
