/mob/living/proc/handle_run_stamina()
	if(!stamina || !stamina.has_stamina)
		return

	if(m_intent != MOVE_INTENT_RUN)
		return

	if(stamina.current_stamina < 20)
		set_movement_intent(MOVE_INTENT_WALK)
		to_chat(src, SPAN_WARNING("You are too exhausted to keep running!"))
		return

	var/loss = calculate_stamina_loss_per_run_tick()
	stamina.apply_damage(loss)

/mob/living/proc/calculate_stamina_loss_per_run_tick()
	var/stamina_loss = 1.4

	if(!skills || iszombie(src) || issynth(src))
		return 0

	switch(skills.get_skill_level(SKILL_ENDURANCE))
		if(SKILL_ENDURANCE_NONE)
			stamina_loss += 0.6 //2.0
		if(SKILL_ENDURANCE_TRAINED)
			stamina_loss += 0.2 //1.6
		if(SKILL_ENDURANCE_EXPERT)
			stamina_loss -= 0.3 //1.1
		if(SKILL_ENDURANCE_MASTER)
			stamina_loss -= 0.6 //0.8

	return stamina_loss
