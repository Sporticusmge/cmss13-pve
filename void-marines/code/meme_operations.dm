/obj/item/clothing/under/rank/bloodpact/fantasy
	name = "Battle Uniform"
	desc = "It smells like shit."

// ARMOR

/obj/item/clothing/suit/armor/storage/fantasy
	name = "Light armor"
	desc = "An solid armor plate, used by great army of light."
	icon = 'void-marines/icons/lifeweb/armor.dmi'
	icon_state = "cuirass"
	item_state = "cuirass"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/onmob_lifeweb/armor.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_ULTRAHIGH
	armor_energy = CLOTHING_ARMOR_ULTRAHIGH
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_ULTRAHIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH

	armor_internaldamage = CLOTHING_ARMOR_ULTRAHIGH

/obj/item/clothing/suit/armor/storage/fantasy/medium
	name = "Medium armor"
	desc = "An solid armor plate, used by great army of light."
	icon = 'void-marines/icons/lifeweb/armor.dmi'
	icon_state = "plate"
	item_state = "plate"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/onmob_lifeweb/armor.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_laser = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_energy = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_bomb = CLOTHING_ARMOR_GIGAHIGHPLUS

	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/suit/armor/storage/fantasy/medium/officer
	name = "Medium officer armor"
	desc = "An solid armor plate, used by officers of the army of light."
	icon = 'void-marines/wh40k/icons/krieg/icons/suits.dmi'
	icon_state = "ravcoat"
	item_state = "ravcoat"
	item_icons = list(
		WEAR_JACKET = 'void-marines/wh40k/icons/krieg/suit.dmi'
	)

/obj/item/clothing/suit/armor/storage/fantasy/heavy
	name = "Heavy armor"
	desc = "An solid armor plate, used by great army of light."
	icon = 'void-marines/icons/lifeweb/armor.dmi'
	icon_state = "vplate"
	item_state = "vplate"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/onmob_lifeweb/armor.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_HARDCORE
	armor_laser = CLOTHING_ARMOR_HARDCORE
	armor_energy = CLOTHING_ARMOR_HARDCORE
	armor_bomb = CLOTHING_ARMOR_HARDCORE

	armor_bio = CLOTHING_ARMOR_HARDCORE
	armor_rad = CLOTHING_ARMOR_HARDCORE

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/suit/armor/storage/fantasy/warlock
	name = "Warlock robe"
	desc = "An solid coat."
	icon = 'void-marines/icons/lifeweb/armor.dmi'
	icon_state = "warlock"
	item_state = "warlock"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/onmob_lifeweb/armor.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS|BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_ULTRAHIGH
	armor_energy = CLOTHING_ARMOR_ULTRAHIGH
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_ULTRAHIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH

	armor_internaldamage = CLOTHING_ARMOR_ULTRAHIGH

/obj/item/clothing/suit/armor/storage/fantasy/warlock/female
	name = "Warlock robe"
	desc = "An solid coat."
	icon = 'void-marines/wh40k/icons/krieg/icons/suits.dmi'
	icon_state = "ordinate"
	item_state = "ordinate"
	item_icons = list(
		WEAR_JACKET = 'void-marines/wh40k/icons/krieg/suit.dmi'
	)

/obj/item/clothing/suit/armor/storage/fantasy/cultist
	name = "Cultist robe"
	desc = "An solid coat."
	icon = 'void-marines/icons/lifeweb/armor.dmi'
	icon_state = "necrarobe"
	item_state = "necrarobe"
	item_icons = list(
		WEAR_JACKET = 'void-marines/icons/onmob_lifeweb/armor.dmi'
	)

	flags_armor_protection = BODY_FLAG_CHEST|BODY_FLAG_GROIN|BODY_FLAG_ARMS|BODY_FLAG_LEGS
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_MEDIUMHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUMHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

// HELMETS

/obj/item/clothing/head/helmet/fantasy
	name = "Knight Helmet"
	desc = "An armored helmet, used by army of light."
	icon = 'void-marines/icons/lifeweb/head.dmi'
	icon_state = "gatehelm"
	item_state = "gatehelm"
	item_icons = list(
		WEAR_HEAD = 'void-marines/icons/onmob_lifeweb/head.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_HIGH
	armor_bullet = CLOTHING_ARMOR_ULTRAHIGH
	armor_laser = CLOTHING_ARMOR_ULTRAHIGH
	armor_energy = CLOTHING_ARMOR_ULTRAHIGH
	armor_bomb = CLOTHING_ARMOR_ULTRAHIGH

	armor_bio = CLOTHING_ARMOR_ULTRAHIGH
	armor_rad = CLOTHING_ARMOR_ULTRAHIGH

	armor_internaldamage = CLOTHING_ARMOR_ULTRAHIGH

/obj/item/clothing/head/helmet/fantasy/medium
	icon_state = "topfhelm_gold"
	item_state = "topfhelm_gold"

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_laser = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_energy = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_bomb = CLOTHING_ARMOR_GIGAHIGHPLUS

	armor_bio = CLOTHING_ARMOR_GIGAHIGHPLUS
	armor_rad = CLOTHING_ARMOR_GIGAHIGHPLUS

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/head/helmet/fantasy/medium/officer
	icon_state = "puritan_hat"
	item_state = "puritan_hat"

/obj/item/clothing/head/helmet/fantasy/heavy
	icon_state = "vhelmet"
	item_state = "vhelmet"

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_ULTRAHIGH
	armor_bullet = CLOTHING_ARMOR_HARDCORE
	armor_laser = CLOTHING_ARMOR_HARDCORE
	armor_energy = CLOTHING_ARMOR_HARDCORE
	armor_bomb = CLOTHING_ARMOR_HARDCORE

	armor_bio = CLOTHING_ARMOR_HARDCORE
	armor_rad = CLOTHING_ARMOR_HARDCORE

	armor_internaldamage = CLOTHING_ARMOR_GIGAHIGHPLUS

/obj/item/clothing/head/helmet/fantasy/warlock
	name = "Warlock hood"
	desc = "An armored hood, used by warlocks of the army of light."
	icon = 'void-marines/icons/lifeweb/head.dmi'
	icon_state = "warlockhood"
	item_state = "warlockhood"
	item_icons = list(
		WEAR_HEAD = 'void-marines/icons/onmob_lifeweb/head.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_LOW
	armor_bullet = CLOTHING_ARMOR_LOW
	armor_laser = CLOTHING_ARMOR_LOW
	armor_energy = CLOTHING_ARMOR_LOW
	armor_bomb = CLOTHING_ARMOR_LOW

	armor_bio = CLOTHING_ARMOR_LOW
	armor_rad = CLOTHING_ARMOR_LOW

	armor_internaldamage = CLOTHING_ARMOR_LOW

/obj/item/clothing/head/helmet/fantasy/warlock/female
	icon = 'void-marines/wh40k/icons/krieg/icons/hats.dmi'
	icon_state = "ordinate"
	item_state = "ordinate"
	item_icons = list(
		WEAR_HEAD = 'void-marines/wh40k/icons/krieg/head.dmi'
	)

/obj/item/clothing/head/helmet/fantasy/cultist
	name = "Cultist's hood"
	desc = "An armored dark hood."
	icon = 'void-marines/icons/lifeweb/head.dmi'
	icon_state = "necrahood"
	item_state = "necrahood"
	item_icons = list(
		WEAR_HEAD = 'void-marines/icons/onmob_lifeweb/head.dmi'
	)

	flags_armor_protection = BODY_FLAG_HEAD
	armor_melee = CLOTHING_ARMOR_MEDIUMLOW
	armor_bullet = CLOTHING_ARMOR_MEDIUMHIGH
	armor_laser = CLOTHING_ARMOR_MEDIUMHIGH
	armor_energy = CLOTHING_ARMOR_MEDIUMHIGH
	armor_bomb = CLOTHING_ARMOR_MEDIUMHIGH

	armor_bio = CLOTHING_ARMOR_MEDIUMHIGH
	armor_rad = CLOTHING_ARMOR_MEDIUMHIGH

	armor_internaldamage = CLOTHING_ARMOR_MEDIUMHIGH

// CLOAKS

/obj/item/storage/backpack/fantasy
	name = "dark cloak"
	desc = "Old black cloak."
	icon = 'void-marines/wh40k/icons/krieg/icons/suits.dmi'
	worn_accessible = TRUE
	item_icons = list(
		WEAR_BACK = 'void-marines/wh40k/icons/krieg/suit.dmi')
	icon_state = "admeme"
	item_state = "admeme"
	max_storage_space = 20

/obj/item/storage/backpack/fantasy/cool
	name = "dark cloak"
	desc = "Old black cloak."
	icon = 'void-marines/icons/lifeweb/cloaks.dmi'
	worn_accessible = TRUE
	item_icons = list(
		WEAR_BACK = 'void-marines/icons/onmob_lifeweb/cloaks.dmi'
		)
	icon_state = "heartfelt_cloak"
	item_state = "heartfelt_cloak"
	max_storage_space = 20

// BOOTS

/obj/item/clothing/shoes/jackboots/fantasy
	name = "Combat Boots"
	desc = "Simple black boots."
	icon_state = "blackboots"
	item_state = "blackboots"
	icon = 'void-marines/icons/lifeweb/feet.dmi'
	item_icons = list(
		WEAR_FEET = 'void-marines/icons/onmob_lifeweb/feet.dmi'
	)

	flags_armor_protection = BODY_FLAG_FEET
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_MEDIUMLOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUM

// GLOVES

/obj/item/clothing/gloves/combat/fantasy
	name = "Combat Gloves"
	desc = "Simple battle-ready gloves."
	icon = 'void-marines/icons/lifeweb/gloves.dmi'
	icon_state = "gauntlets"
	item_state = "gauntlets"
	item_icons = list(
		WEAR_HANDS = 'void-marines/icons/onmob_lifeweb/gloves.dmi'
	)

	flags_armor_protection = BODY_FLAG_HANDS
	armor_melee = CLOTHING_ARMOR_MEDIUM
	armor_bullet = CLOTHING_ARMOR_MEDIUM
	armor_laser = CLOTHING_ARMOR_MEDIUMLOW
	armor_energy = CLOTHING_ARMOR_NONE
	armor_bomb = CLOTHING_ARMOR_MEDIUMLOW
	armor_bio = CLOTHING_ARMOR_MEDIUM
	armor_rad = CLOTHING_ARMOR_MEDIUMLOW
	armor_internaldamage = CLOTHING_ARMOR_MEDIUM

/obj/item/clothing/gloves/combat/fantasy/heavy
	icon_state = "vgloves"
	item_state = "vgloves"

// WEAPONS

/obj/item/magic_book
	name = "warlock spellbook"
	icon = 'void-marines/icons/lifeweb/books.dmi'
	icon_state = "bibble0"
	var/spellslots = 10
	var/recharge_time = 10

/obj/item/magic_book/Initialize(mapload, ...)
	. = ..()
	src.add_filter("healing_mode", 1, list("type" = "outline", "color" = "#1fd418", "size" = 1))
	START_PROCESSING(SSobj, src)

/obj/item/magic_book/process()
	if(recharge_time <= 0)
		spellslots += 1
		recharge_time = 10

	if(spellslots < 10)
		recharge_time -= 1

/obj/item/magic_book/afterattack(atom/A, mob/user as mob, proximity)
	if(get_dist(src, A) > 1)
		to_chat(user, SPAN_DANGER("Ты должен находиться вблизи для применения лечащего заклинания!"))
		return FALSE

	if(spellslots <= 0)
		to_chat(user, SPAN_DANGER("У тебя не осталось маны!"))
		return FALSE

	if(istype(A, /mob/living/carbon))
		var/mob/living/carbon/target = A
		if(do_after(user, 2 SECONDS, INTERRUPT_ALL, BUSY_ICON_FRIENDLY, target, INTERRUPT_MOVED, BUSY_ICON_MEDICAL))
			target.reagents.add_reagent("rsugar", 5)
			spellslots -= 1

/obj/item/weapon/gun/pistol/vp78/fantasy
	name = "Kadian-pattern combat pistol"
	desc = "The Kadian-pattern bolt pistol, designed for regular army to use."
	icon = 'void-marines/icons/lifeweb/ms_guns_scrap_40.dmi'
	icon_state = "pistol"
	item_state = "pistol"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi',
		WEAR_R_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi'
		)

	current_mag = /obj/item/ammo_magazine/pistol/vp78/fantasy

/obj/item/ammo_magazine/pistol/vp78/fantasy
	name = "\improper Pistol Magazine (.75)"
	icon = 'void-marines/icons/lifeweb/ms_ammo_redux.dmi'
	icon_state = "pistol"
	max_rounds = 50
	gun_type = /obj/item/weapon/gun/pistol/vp78/fantasy
	ammo_band_icon = "pistol"
	ammo_band_icon_empty = "pistol"

/obj/item/weapon/gun/rifle/m41aMK1/fantasy
	name = "Kadian-pattern combat rifle"
	desc = "The Kadian-pattern bolt rifle, designed for regular army to use."
	icon = 'void-marines/icons/lifeweb/ms_guns_scrap_40.dmi'
	icon_state = "rifle"
	item_state = "rifle"

	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi',
		WEAR_R_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi'
		)

	current_mag = /obj/item/ammo_magazine/rifle/m41aMK1/fantasy
	attachable_allowed = list()
	starting_attachment_types = list()
	start_automatic = TRUE

/obj/item/ammo_magazine/rifle/m41aMK1/fantasy
	name = "\improper Rifle Magazine (.75)"
	icon = 'void-marines/icons/lifeweb/ms_ammo_redux.dmi'
	icon_state = "rifle"
	max_rounds = 100
	gun_type = /obj/item/weapon/gun/rifle/m41aMK1/fantasy
	ammo_band_icon = "rifle"
	ammo_band_icon_empty = "rifle"
	bonus_overlay = "rifle"

/obj/item/weapon/gun/rifle/m41aMK1/fantasy/heavy
	name = "Kadian-pattern heavy rifle"
	desc = "The Kadian-pattern bolt rifle, designed for destroying fortified positions of the enemy."
	icon = 'void-marines/icons/lifeweb/ms_guns_scrap_40.dmi'
	icon_state = "heavy"
	item_state = "heavy"

	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi',
		WEAR_R_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi'
		)

	current_mag = /obj/item/ammo_magazine/rifle/m41aMK1/fantasy/heavy
	attachable_allowed = list()
	starting_attachment_types = list()
	start_automatic = TRUE

/obj/item/ammo_magazine/rifle/m41aMK1/fantasy/heavy
	name = "\improper Special Rifle Magazine (.75)"
	icon = 'void-marines/icons/lifeweb/ms_ammo_redux.dmi'
	icon_state = "heavy"
	max_rounds = 200
	gun_type = /obj/item/weapon/gun/rifle/m41aMK1/fantasy/heavy
	default_ammo = /datum/ammo/bullet/rifle/fantasy
	ammo_band_icon = "heavy"
	ammo_band_icon_empty = "heavy"
	bonus_overlay = "heavy"

/datum/ammo/bullet/rifle/fantasy
	damage = 60
	penetration = ARMOR_PENETRATION_TIER_5
	accuracy = HIT_ACCURACY_TIER_4
	scatter = SCATTER_AMOUNT_TIER_9
	shell_speed = AMMO_SPEED_TIER_3
	damage_falloff = DAMAGE_FALLOFF_TIER_7

/obj/item/weapon/gun/shotgun/pump/fantasy
	name = "Kadian-pattern Shotgun"
	icon = 'void-marines/icons/lifeweb/ms_guns_scrap_40.dmi'
	icon_state = "shotgun"
	item_state = "shotgun"

	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi',
		WEAR_R_HAND = 'void-marines/icons/lifeweb/ms_guns_scrap.dmi'
		)

	current_mag = /obj/item/ammo_magazine/internal/shotgun/fantasy

/obj/item/ammo_magazine/internal/shotgun/fantasy
	name = "shotgun tube"
	desc = "An internal magazine. It is not supposed to be seen or removed."
	default_ammo = /datum/ammo/bullet/shotgun/buckshot/special
	caliber = "12g"
	max_rounds = 2
	current_rounds = 0
	chamber_closed = 0

/obj/item/weapon/sword/fantasy
	name = "Armarian Pattern Claymore"
	desc = "A greatsword, made by Armarian design"
	icon = 'void-marines/icons/lifeweb/weapons.dmi'
	icon_state = "claymore"
	item_state = "claymore"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/onmob_lifeweb/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/icons/onmob_lifeweb/righthand.dmi'
		)
	force = 80
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 50
	sharp = IS_SHARP_ITEM_BIG
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/wristblades_hit.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 6

/obj/item/weapon/sword/fantasy/club
	name = "Makeshift club"
	desc = "An makeshift weapon"
	icon = 'void-marines/icons/lifeweb/weapons.dmi'
	icon_state = "hm_spikeclub"
	item_state = "hm_spikeclub"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/onmob_lifeweb/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/icons/onmob_lifeweb/righthand.dmi'
		)
	force = 80
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 50
	sharp = IS_SHARP_ITEM_SIMPLE
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 6

/obj/item/weapon/sword/fantasy/club/cult
	force = 30
	throwforce = 10

/obj/item/weapon/sword/fantasy/saber
	name = "Armarian Pattern Saber"
	desc = "An weapon, made by Armarian design"
	icon = 'void-marines/icons/lifeweb/weapons.dmi'
	icon_state = "saber"
	item_state = "saber"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/onmob_lifeweb/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/icons/onmob_lifeweb/righthand.dmi'
		)
	force = 80
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 50
	sharp = IS_SHARP_ITEM_SIMPLE
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 2

/obj/item/weapon/sword/fantasy/cult
	name = "Cultist blade"
	desc = "An weapon, made by unknown worksmith"
	icon = 'void-marines/icons/lifeweb/weapons-blades.dmi'
	icon_state = "huntingclaw"
	item_state = "huntingclaw"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/onmob_lifeweb/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/icons/onmob_lifeweb/righthand.dmi'
		)
	force = 60
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 20
	sharp = IS_SHARP_ITEM_SIMPLE
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 6

/obj/item/weapon/sword/fantasy/hammer
	name = "Armarian Pattern Battlehammer"
	desc = "An power-based weapon, made by Armarian design"
	icon = 'void-marines/icons/lifeweb/weapons.dmi'
	icon_state = "chargehammer_on"
	item_state = "chargehammer_on"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/onmob_lifeweb/lefthand.dmi',
		WEAR_R_HAND = 'void-marines/icons/onmob_lifeweb/righthand.dmi'
		)
	force = 200
	flags_equip_slot = SLOT_WAIST|SLOT_BACK
	throwforce = 100
	sharp = IS_SHARP_ITEM_BIG
	edge = 1
	w_class = SIZE_LARGE
	hitsound = 'sound/weapons/smash.ogg'
	attack_verb = list("attacked", "slashed", "sliced", "torn", "ripped", "diced", "cut")
	attack_speed = 10

// OUTFITS

/datum/equipment_preset/fantasy_cult
	name = " FANTASY | Cult"
	faction = FACTION_XENOMORPH
	flags = EQUIPMENT_PRESET_EXTRA
	idtype = /obj/item/card/id/lanyard
	skills = /datum/skills/civilian/survivor

	languages = list(LANGUAGE_XENOMORPH, LANGUAGE_ENGLISH)

	assignment = "Cultist"
	rank = "Cultist"

/datum/equipment_preset/fantasy_cult/New()
	. = ..()
	access = get_access(ACCESS_LIST_COLONIAL_ALL)

/datum/equipment_preset/fantasy_cult/load_gear(mob/living/carbon/human/new_human)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/under/rank/bloodpact/fantasy(new_human), WEAR_BODY)
	new_human.equip_to_slot_or_del(new /obj/item/clothing/shoes/jackboots/fantasy(new_human), WEAR_FEET)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/magazine(new_human), WEAR_R_STORE)
	new_human.equip_to_slot_or_del(new /obj/item/storage/pouch/survival/full(new_human), WEAR_L_STORE)

	var/obj/item/clothing/suit/armor/storage/fantasy/cultist/hoodie = new /obj/item/clothing/suit/armor/storage/fantasy/cultist(new_human)
	hoodie.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(hoodie, WEAR_JACKET)

	var/obj/item/clothing/head/helmet/fantasy/cultist/hood = new /obj/item/clothing/head/helmet/fantasy/cultist(new_human)
	hood.flags_item |= NODROP|DELONDROP
	new_human.equip_to_slot_or_del(hood, WEAR_HEAD)

	var/pick_gun = pick(1,2,3,4)
	switch(pick_gun)
		if(1)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/pistol/vp78/fantasy, WEAR_R_HAND)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/vp78/fantasy(new_human), WEAR_IN_R_STORE)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/pistol/vp78/fantasy(new_human), WEAR_IN_R_STORE)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/sword/fantasy/cult, WEAR_WAIST)
		if(2)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/m41aMK1/fantasy, WEAR_R_HAND)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/m41aMK1/fantasy(new_human), WEAR_IN_R_STORE)
			new_human.equip_to_slot_or_del(new /obj/item/ammo_magazine/rifle/m41aMK1/fantasy(new_human), WEAR_IN_R_STORE)
		if(3)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/gun/rifle/m41aMK1/fantasy/heavy, WEAR_R_HAND)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/sword/fantasy/club/cult, WEAR_WAIST)
		if(4)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/sword/fantasy/cult, WEAR_R_HAND)
		if(5)
			new_human.equip_to_slot_or_del(new /obj/item/weapon/sword/fantasy/club/cult, WEAR_R_HAND)


//*****************************************************************************************************/
/datum/equipment_preset/fantasy_cult/load_status(mob/living/carbon/human/new_human, hivenumber = XENO_HIVE_NORMAL)
	if(SSticker.mode && new_human.mind)
		SSticker.mode.xenomorphs += new_human.mind

	var/datum/hive_status/hive = GLOB.hive_datum[hivenumber]
	if(hive)
		new_human.faction = hive.internal_faction
		if(hive.leading_cult_sl == new_human)
			hive.leading_cult_sl = null
	new_human.hivenumber = hivenumber

	GLOB.xeno_cultists += new_human

	var/list/huds_to_add = list(MOB_HUD_XENO_INFECTION, MOB_HUD_XENO_STATUS)

	for(var/hud_to_add in huds_to_add)
		var/datum/mob_hud/hud = GLOB.huds[hud_to_add]
		hud.add_hud_to(new_human, new_human)

	var/list/actions_to_add = subtypesof(/datum/action/human_action/activable/cult)

	if(istype(new_human.wear_suit, /obj/item/clothing/head/helmet/fantasy/cultist) || istype(new_human.head, /obj/item/clothing/head/helmet/fantasy/cultist))
		actions_to_add -= /datum/action/human_action/activable/cult/obtain_equipment

	for(var/action_to_add in actions_to_add)
		give_action(new_human, action_to_add)

/obj/item/device/flashlight/lantern/fantasy
	icon = 'void-marines/icons/lifeweb/lighting.dmi'
	icon_state = "lamp"

// MECHA COMBAT

//SPECIES CODE

/obj/effect/temp_visual/dir_setting/bloodsplatter/mech
	splatter_type = "csplatter"
	color = COLOR_OIL

/mob/living/carbon/human/mech
	var/mech_name
	var/armor_color = "#ffffff"
	var/player_painted = FALSE
	var/datum/action/minimap/marine/minimap_type = /datum/action/minimap/marine

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
					armor_color = input(src, "Please select the color to paint your mech.", "Armor Color") as color|null
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

	overlays_standing[ARMOR_COLOR_LAYER] = color_overlays

	apply_overlay(ARMOR_COLOR_LAYER)

/obj/limb/proc/get_color_overlays()
	. = list()

	var/mob/living/carbon/human/mech/M = owner

	color_overlay.icon_state = "[icon_name]_colored"
	color_overlay.color = M.armor_color
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

	var/mob/living/carbon/human/mech/M = H
	M.armor_color = pick("#40493c","#3f475a","#837e53","#994b0c")
	M.update_color_overlays()

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

	var/mob/living/carbon/human/mech/M = H
	M.armor_color = pick("#40493c","#3f475a","#837e53","#994b0c")
	M.update_color_overlays()

	return ..()

/datum/species/mech/heavy
	group = SPECIES_MECHA_HEAVY
	name = SPECIES_MECHA_HEAVY

	slowdown = 2
	total_health = 2000

	brute_mod = 0.1
	burn_mod = 0.1

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

	var/mob/living/carbon/human/mech/M = H
	M.armor_color = pick("#40493c","#3f475a","#837e53","#994b0c")
	M.update_color_overlays()

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

	var/mob/living/carbon/human/mech/M = H
	M.armor_color = pick("#555555","#633c3c","#635438","#855235")
	M.update_color_overlays()

	return ..()

/obj/item/weapon/gun/drg_scout_assault/mech
	name = "\improper Assault Rifle"
	desc = "A dependable, hefty weapon."

	icon = 'void-marines/icons/mecha_equipment_64x32.dmi'
	icon_state = "assaultrifle"
	item_state = "assaultrifle_inhand"
	item_icons = list(
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons.dmi'
		)

	current_mag = /obj/item/ammo_magazine/rifle/drg_scout_assault/mech

/obj/item/weapon/gun/drg_scout_assault/mech/set_gun_config_values()
	set_fire_delay(FIRE_DELAY_TIER_LMG)
	accuracy_mult = BASE_ACCURACY_MULT + HIT_ACCURACY_MULT_TIER_6
	damage_mult = BASE_BULLET_DAMAGE_MULT + BULLET_DAMAGE_MULT_TIER_8
	recoil = RECOIL_OFF

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
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons.dmi'
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
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons.dmi'
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
		WEAR_L_HAND = 'void-marines/icons/mech_core_weapons.dmi',
		WEAR_R_HAND = 'void-marines/icons/mech_core_weapons.dmi'
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
