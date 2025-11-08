/datum/weather_event/tornado
	name = "Hurricane (Infinite)"
	display_name = "Hurricane"
	length = INFINITY

	turf_overlay_icon_state = "strata_storm"
	turf_overlay_alpha = 200

	effect_message = null
	damage_per_tick = 0.1
	damage_type = BRUTE

	ambience = 'sound/ambience/varadero_storm.ogg'

	has_process = TRUE
	lightning_chance = 9

	fire_smothering_strength = 4

	wind_strength = 1
