// Each subtype of weather_event defines a distinct weather event type
// E.G. blizzard, snowstorm, dust storm, etc.
// These are basically just "state holders"
// that hold state necessary for the weather event to
// be handled across the world and by the weather subsystem

/datum/weather_event
	//// MANDATORY vars
	var/name = "set this" // Make this a copy of display name unless theres a good reason
	var/display_name = "set this" // The "display name" of this event
	var/length = 0 // Length of the event

	//// Optional vars
	var/turf_overlay_icon_state // The icon to set on the VFX holder instanced into every turf at round start
	var/turf_overlay_alpha = 255

	var/effect_message = "tell a coder to fix this | WEATHER EVENT EFFECT MESSAGE"
	var/damage_per_tick = 200 // more likely to report the bug if it instantly kills them
	var/damage_type = BURN

	var/ambience = 'sound/ambience/strata/strata_snow.ogg'

	var/has_process = FALSE // to be used with handle_weather_process()
	var/lightning_chance = 0

	var/fire_smothering_strength = 0 // How much will this weather smother fires on turfs and on mobs - should be 0 to 10

	var/wind_strength = 0
	var/wind_direction = WEST
	var/wind_change_prob = 5

/datum/weather_event/proc/start_weather_event()
	return

// remember, this happens every five seconds or so
/datum/weather_event/proc/handle_weather_process()
	if(lightning_chance && prob(lightning_chance))
		lightning_strike()
	if(wind_strength && prob(wind_change_prob))
		wind_direction = pick(CARDINAL_ALL_DIRS)
		message_admins("Ground wind changed it's direction. Now it's blowing towards [uppertext(dir2text(wind_direction))].")

/datum/weather_event/proc/lightning_strike()
	var/sound_delay = rand(1 SECONDS, 4 SECONDS)
	addtimer(CALLBACK(GLOBAL_PROC, GLOBAL_PROC_REF(playsound_z), SSmapping.levels_by_trait(ZTRAIT_GROUND), pick('sound/soundscape/thunderclap1.ogg', 'sound/soundscape/thunderclap2.ogg')), sound_delay)
	var/target_alpha = rand(0,60)
	var/random_duration = rand(1 SECONDS, 3 SECONDS)
	for(var/mob/mob as anything in GLOB.mob_list)
		if(!(mob.z in SSmapping.levels_by_trait(ZTRAIT_GROUND)))
			continue
		if(!mob.hud_used)
			continue
		var/atom/movable/screen/plane_master/lighting/lighting = mob.hud_used.plane_masters["[LIGHTING_PLANE]"]
		if(!lighting)
			continue
		lighting.alpha = target_alpha
		animate(lighting, random_duration, easing = BOUNCE_EASING|EASE_IN, alpha = min(GLOB.minimum_exterior_lighting_alpha, mob.lighting_alpha))

/datum/weather_event/proc/process_mob_effect(mob/living/carbon/affected_mob, delta_time = 1)
	if(effect_message && prob(WEATHER_MESSAGE_PROB))
		to_chat(affected_mob, SPAN_WARNING(effect_message))
	if(damage_per_tick)
		var/calculated_damage = (isxeno(affected_mob) ? damage_per_tick * 3 : damage_per_tick) * delta_time
		affected_mob.apply_damage(calculated_damage, damage_type)
		affected_mob.last_damage_data = create_cause_data("Exposure")
	if(wind_strength && wind_direction && affected_mob.client)
		var/turf/dir_turf = get_step(affected_mob, wind_direction)
		var/desired_x = (dir_turf.x - affected_mob.x) * 12 * wind_strength
		var/desired_y = (dir_turf.y - affected_mob.y) * 12 * wind_strength
		animate(affected_mob.client, time = 2 SECONDS, easing = CUBIC_EASING|EASE_OUT, pixel_x = desired_x, pixel_y = desired_y, flags = ANIMATION_PARALLEL)
		var/shake_strength = wind_strength / 2
		var/i = 0
		while(i < 20)
			animate(pixel_x = desired_x + rand(-(shake_strength), shake_strength), pixel_y = desired_y + rand(-(shake_strength), shake_strength), easing = CUBIC_EASING | EASE_IN, time = 1)
			i++
		addtimer(CALLBACK(affected_mob, TYPE_PROC_REF(/mob, clear_wind_vfx)), 3 SECONDS, flags = TIMER_UNIQUE|TIMER_OVERRIDE)

/mob/proc/clear_wind_vfx(fade_time = 2 SECONDS)
	if(!client)
		return
	animate(client, fade_time, easing = SINE_EASING|EASE_OUT, pixel_x = 0, pixel_y = 0)
