/datum/supply_packs/bodybag
	name = "body bag crate (x28)"
	contains = list(
		/obj/item/storage/box/bodybags,
		/obj/item/storage/box/bodybags,
		/obj/item/storage/box/bodybags,
		/obj/item/storage/box/bodybags,
	)
	cost = 7
	containertype = /obj/structure/closet/crate/medical
	containername = "body bag crate"
	group = "Medical"

/datum/supply_packs/cryobag
	name = "stasis bag crate (x3)"
	contains = list(
		/obj/item/bodybag/cryobag,
		/obj/item/bodybag/cryobag,
		/obj/item/bodybag/cryobag,
	)
	cost = 15
	containertype = /obj/structure/closet/crate/medical
	containername = "stasis bag crate"
	group = "Medical"

/datum/supply_packs/upgraded_medical_kits
	name = "upgraded medical equipment crate"
	contains = list(
		/obj/item/storage/box/czsp/medic_upgraded_kits/full,
		/obj/item/storage/box/czsp/medic_upgraded_kits/full,
		/obj/item/stack/medical/splint/nano,
		/obj/item/stack/medical/splint/nano,
		/obj/item/storage/pill_bottle/merabica,
		/obj/item/storage/pill_bottle/merabica,
		/obj/item/storage/pill_bottle/keloderm,
		/obj/item/storage/pill_bottle/keloderm,
		/obj/item/storage/pill_bottle/imialk,
		/obj/item/storage/pill_bottle/imialk,
	)
	cost = 170
	containertype = /obj/structure/closet/crate/medical
	containername = "upgraded medical equipment crate"
	group = "Medical"
