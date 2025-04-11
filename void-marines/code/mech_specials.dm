/datum/action/human_action/activable/eject
	name = "Pilot Ejection"
	icon_file = 'icons/mob/hud/actions.dmi'
	action_icon_state = "cancel_view"

	cooldown = 2 SECONDS

/datum/action/human_action/activable/eject/action_activate()
	SHOULD_CALL_PARENT(FALSE)
	if(!ishuman(owner))
		return

	if(!can_use_action() || !action_cooldown_check())
		return

	var/mob/living/carbon/human/mech/X = owner

	to_chat(X, SPAN_XENODANGER("You starting to prepare emergency eject protocol..."))

	if(!do_after(X, 2 SECONDS, INTERRUPT_ALL | BEHAVIOR_IMMOBILE, BUSY_ICON_HOSTILE))
		to_chat(X, SPAN_XENODANGER("You stop preparing your escape."))
		return

	if(!can_use_action() || !action_cooldown_check())
		return

	enter_cooldown()

	for(var/mob/living/carbon/human/pilot in X.contents)
		pilot.forceMove(get_turf(X))
		pilot.ckey = X.ckey
		shake_camera(pilot, 2, 1)

	return ..()

// MESSAGE SYSTEM

/datum/action/innate/message_squad/mech

/datum/action/innate/message_squad/mech/action_activate()
	SHOULD_CALL_PARENT(FALSE)

	if(!can_use_action())
		return
	var/mob/living/carbon/human/mech/mech_owner = owner

	var/text = tgui_input_text(mech_owner, "Enter the body text for the screen alert.", title = "Announcement Body", multiline = TRUE, encode = FALSE)
	if(!text)
		return

	TIMER_COOLDOWN_START(mech_owner, COOLDOWN_HUD_ORDER, 30 SECONDS)
	addtimer(CALLBACK(src, PROC_REF(update_button_icon)), 30 SECONDS + 1)
	update_button_icon()
	log_game("[key_name(mech_owner)] has broadcasted the hud message [text] at [AREACOORD(mech_owner)]")

	var/icon_choice
	var/icon_choice_state
	var/name

	icon_choice = 'void-marines/icons/mech_portraits.dmi'

	if(istype(mech_owner, /mob/living/carbon/human/mech/light))
		icon_choice_state = "light"
	if(istype(mech_owner, /mob/living/carbon/human/mech/heavy))
		icon_choice_state = "heavy"
	else
		icon_choice_state = "standart"

	name = mech_owner.real_name

	var/title

	title = "INCOMING TRANSMISSION"

	var/list/alert_receivers = list()
	for(var/mob/living/carbon/human/human as anything in GLOB.alive_human_list)
		alert_receivers += human
	alert_receivers += GLOB.observer_list
	for(var/mob/mob_receiver in alert_receivers)
		mob_receiver.play_screen_text("<span class='langchat' style=font-size:24pt;text-align:left valign='top'><u>[uppertext(title)]</u></span><br>" + text, new /atom/movable/screen/text/screen_text/potrait(null, null, name, icon_choice, icon_choice_state))

// Heavy shield

/mob/living/carbon/human/mech/heavy
	var/in_defensive_state = FALSE
	var/shield_charge = 500

/mob/living/carbon/human/mech/heavy/Life(delta_time)
	. = ..()
	if(shield_charge <= 0)
		remove_shield()

/mob/living/carbon/human/mech/heavy/proc/remove_shield()
	in_defensive_state = FALSE
	shield_charge = 500
	remove_filter("shield_outline")

/mob/living/carbon/human/mech/heavy/bullet_act(obj/projectile/P)
	if(in_defensive_state)
		create_shrapnel(get_turf(src), 8, null, null, /datum/ammo/bullet/shrapnel/light, create_cause_data(src.name, src), TRUE)
		shield_charge -= 5
		return TRUE
	..()

/datum/action/human_action/activable/mech_shield
	name = "Combat Shield"
	icon_file = 'icons/mob/hud/actions.dmi'
	action_icon_state = "accuracy_improvement"

	cooldown = 1 MINUTES

/datum/action/human_action/activable/mech_shield/action_activate()
	SHOULD_CALL_PARENT(FALSE)
	if(!can_use_action() || !action_cooldown_check())
		return

	var/mob/living/carbon/human/mech/heavy/X = owner

	to_chat(X, SPAN_XENODANGER("You starting to activate your holo-shield..."))

	if(!do_after(X, 1 SECONDS, INTERRUPT_ALL | BEHAVIOR_IMMOBILE, BUSY_ICON_HOSTILE))
		to_chat(X, SPAN_XENODANGER("You stop preparing your shield."))
		return

	if(!can_use_action() || !action_cooldown_check())
		return

	enter_cooldown()

	X.in_defensive_state = TRUE
	X.balloon_alert_to_viewers("*shield is up!*")
	X.add_filter("shield_outline", 1, list("type" = "outline", "color" = "#00cfbe", "size" = 2))
	addtimer(CALLBACK(src, PROC_REF(remove_shield)), 30 SECONDS)

	return ..()

/datum/action/human_action/activable/mech_shield/proc/remove_shield()
	var/mob/living/carbon/human/mech/heavy/X = owner
	X.in_defensive_state = FALSE
	X.shield_charge = 500
	X.remove_filter("shield_outline")

// Speedboost

/datum/action/human_action/activable/mech_boost
	name = "Combat Boost"
	icon_file = 'icons/mob/hud/actions.dmi'
	action_icon_state = "accuracy_improvement"

	cooldown = 1 MINUTES

/datum/action/human_action/activable/mech_boost/action_activate()
	SHOULD_CALL_PARENT(FALSE)
	if(!can_use_action() || !action_cooldown_check())
		return

	var/mob/living/carbon/human/mech/light/X = owner

	to_chat(X, SPAN_XENODANGER("You starting to prepare your engines..."))

	if(!do_after(X, 1 SECONDS, INTERRUPT_ALL | BEHAVIOR_IMMOBILE, BUSY_ICON_HOSTILE))
		to_chat(X, SPAN_XENODANGER("You stop preparing boost."))
		return

	if(!can_use_action() || !action_cooldown_check())
		return

	enter_cooldown()

	X.species.slowdown = -3
	X.balloon_alert_to_viewers("*engines lit!*")
	X.add_filter("boost_outline", 1, list("type" = "outline", "color" = "#f33100", "size" = 1))
	addtimer(CALLBACK(src, PROC_REF(remove_boost)), 15 SECONDS)

	return ..()

/datum/action/human_action/activable/mech_boost/proc/remove_boost()
	var/mob/living/carbon/human/mech/light/X = owner
	X.species.slowdown = -1.5
	X.remove_filter("boost_outline")

// Repair

/datum/action/human_action/activable/mech_repair
	name = "Combat Repair"
	icon_file = 'icons/mob/hud/actions.dmi'
	action_icon_state = "accuracy_improvement"

	cooldown = 1 MINUTES
	var/uses = 5


/datum/action/human_action/activable/mech_repair/action_activate()
	SHOULD_CALL_PARENT(FALSE)
	if(!can_use_action() || !action_cooldown_check() || uses <= 0)
		return

	var/mob/living/carbon/human/mech/X = owner

	to_chat(X, SPAN_XENODANGER("You starting to prepare your engines..."))

	if(!do_after(X, 0.3 SECONDS, INTERRUPT_ALL | BEHAVIOR_IMMOBILE, BUSY_ICON_HOSTILE))
		to_chat(X, SPAN_XENODANGER("You stop preparing boost."))
		return

	if(!can_use_action() || !action_cooldown_check())
		return

	enter_cooldown()

	X.rejuvenate()
	uses -= 1
	return ..()
