/client/proc/editappearplayer(mob/living/carbon/human/M as mob in GLOB.human_mob_list)
	set name = "Edit Appearance | Player"
	set category = null

	if(!check_rights(R_ADMIN)) return

	if(!istype(M, /mob/living/carbon/human))
		to_chat(usr, SPAN_DANGER("You can only do this to humans!"))
		return
	switch(alert("Are you sure you wish to edit this mob's appearance?",,"Yes","No"))
		if("No")
			return

	// Changing name \\

	var/newname = input(M, "What do you want to name them?", "Name:") as null|text
	if(!newname)
		return

	if(!M)
		to_chat(usr, "This mob no longer exists")
		return

	var/old_name = M.name
	M.change_real_name(M, newname)
	if(istype(M, /mob/living/carbon/human))
		var/mob/living/carbon/human/H = M
		if(H.wear_id)
			var/obj/item/card/id/card = H.wear_id
			card.name = "[H.real_name]'s ID Card"
			card.registered_name = "[H.real_name]"
			if(card.assignment)
				card.name += " ([card.assignment])"

	message_admins("[key_name(src)] changed name of [old_name] to [newname].")

	// Changing appear \\

	var/new_skin_color = tgui_input_list(M, "Choose your character's skin color:", "Character Preferences", GLOB.skin_color_list)
	if(new_skin_color)
		M.skin_color = new_skin_color

	var/new_facial = input(M, "Please select facial hair color.", "Character Generation") as color
	if(new_facial)
		M.r_facial = hex2num(copytext(new_facial, 2, 4))
		M.g_facial = hex2num(copytext(new_facial, 4, 6))
		M.b_facial = hex2num(copytext(new_facial, 6, 8))

	var/new_hair = input(M, "Please select hair color.", "Character Generation") as color
	if(new_facial)
		M.r_hair = hex2num(copytext(new_hair, 2, 4))
		M.g_hair = hex2num(copytext(new_hair, 4, 6))
		M.b_hair = hex2num(copytext(new_hair, 6, 8))

	var/new_eyes = input(M, "Please select eye color.", "Character Generation") as color
	if(new_eyes)
		M.r_eyes = hex2num(copytext(new_eyes, 2, 4))
		M.g_eyes = hex2num(copytext(new_eyes, 4, 6))
		M.b_eyes = hex2num(copytext(new_eyes, 6, 8))


	// hair
	var/new_hstyle = input(M, "Select a hair style", "Grooming")  as null|anything in GLOB.hair_styles_list
	if(new_hstyle)
		M.h_style = new_hstyle

	// facial hair
	var/new_fstyle = input(M, "Select a facial hair style", "Grooming")  as null|anything in GLOB.facial_hair_styles_list
	if(new_fstyle)
		M.f_style = new_fstyle

	var/new_gender = alert(M, "Please select gender.", "Character Generation", "Male", "Female")
	if (new_gender)
		if(new_gender == "Male")
			M.gender = MALE
		else
			M.gender = FEMALE
	M.update_hair()
	M.update_body()

//	ENTERING BYPASS and other shit. \\

/client
	var/enter_lock_bypass = 0
	var/total_enter_lock = 0

/client/proc/allow_to_join()
	set name = "Entering Lock Bypass"
	set category = "Game Master.Moderation"

	if(!check_rights())
		return
	var/client/player = tgui_input_list(usr, "Выберите игрока, что сможет обойти запрет на вход.", "Allow Bypass Entering Lock", GLOB.clients)
	if(!player.enter_lock_bypass)
		player.enter_lock_bypass = 1
		to_chat(player, FONT_SIZE_BIG(SPAN_NOTICE("Высшие силы даровали возможность тебе зайти!")))
		if(player.prefs.toggles_sound & SOUND_ADMINHELP)
			SEND_SOUND(player, sound('sound/effects/adminhelp_new.ogg'))
		message_admins("[usr] Игроку [player.ckey] дали возможность зайти в игру.")
	else
		player.enter_lock_bypass = 0
		to_chat(player, FONT_SIZE_BIG(SPAN_NOTICE("Высшие силы изъяли у тебя возможность зайти!")))
		message_admins("[usr] У игрока [player.ckey] забрали возможность зайти в игру.")

/*
* Прок блокирующий вход игроку на раунд
*/
/client/proc/disallow_to_join()
	set name = "Blacklist"
	set category = "Game Master.Moderation"

	if(!check_rights())
		return
	var/client/player = tgui_input_list(usr, "Выберите игрока, что будет исключен/включен.", "Blacklist", GLOB.clients)
	if(!player.total_enter_lock)
		player.total_enter_lock = 1
		to_chat(player, FONT_SIZE_BIG(SPAN_NOTICE("Ты исключен из игры на раунд. Ты можешь только наблюдать за ходом игры, но не сможешь зайти.")))
		if(player.prefs.toggles_sound & SOUND_ADMINHELP)
			SEND_SOUND(player, sound('sound/effects/adminhelp_new.ogg'))
		message_admins("[usr] исключил из игры [player.ckey].")
	else
		player.total_enter_lock = 0
		to_chat(player, FONT_SIZE_BIG(SPAN_NOTICE("Тебя вернули в игру. Теперь ты можешь попытаться зайти.")))
		if(player.prefs.toggles_sound & SOUND_ADMINHELP)
			SEND_SOUND(player, sound('sound/effects/adminhelp_new.ogg'))
		message_admins("[usr] вернул в игру [player.ckey]. Увы и ах!")

/client/proc/play_server_sound()
	set category = "Game Master.Extras"
	set name = "Music Player"
	if(!check_rights())
		return

	var/list/categories = list("Боевая", "Спокойная", "Напряжённая", "Пугающая", "Финальная", "Смешная")

	var/list/combat_music = list('music_player/-DARKTIDE- Disposal Unit.mp3',
								'music_player/-DARKTIDE- Auspex.mp3',
								'music_player/-DARKTIDE- Broadcast.mp3',
								'music_player/-DARKTIDE- Immortal.mp3',
								'music_player/-DARKTIDE- Interference.mp3',
								'music_player/-DARKTIDE- Nightsider.mp3',
								'music_player/-DARKTIDE- Reality Slipping.mp3',
								'music_player/-DARKTIDE- Transit Horde.mp3',
								'music_player/-DARKTIDE- Warp Traveller.mp3',

								'music_player/-AC- Zero.mp3',

								'music_player/-HD- Bug Planet.mp3',

								'music_player/-BOLGARICH- Running Out.mp3',
								'music_player/-BOLGARICH- Taypan.mp3',
								'music_player/-BOLGARICH- Colonial Marines.ogg',

								'music_player/-L4D2- Tank At The Concert.mp3',
								'music_player/-L4D2- Gas Can Of Victory.mp3')

	var/list/chill_music = list('music_player/-QM- Space Theme.mp3',
								'music_player/-QM- Emerald Empire(PH1).mp3',

								'music_player/-ALIENS- Combat Drop.mp3',
								'music_player/-ALIENS- Hypersleep.mp3',

								'music_player/-DARKTIDE- Mourningstar.mp3',
								'music_player/-DARKTIDE- Transmission.mp3',

								'music_player/-DRG- Deep Dive.mp3',
								'music_player/-DRG- Lost.mp3',

								'music_player/-HALO- Heretic.mp3',
								'music_player/-HALO- Peril.mp3',

								'music_player/-RIMWORLD- Chaos Bringer.mp3',

								'music_player/-XCOM- Briefing 1.mp3',
								'music_player/-XCOM- Defend.mp3',
								'music_player/-XCOM- Geoscape 1.mp3',)

	var/list/nervous_music = list('music_player/-DRG- Karl´s End.mp3',
								'music_player/-XCOM- Hidden Movement.mp3',

								'music_player/-L4D2- Cold Stream.mp3',
								'music_player/-L4D2- Death Is A Carousel.mp3',
								'music_player/-L4D2- Died On The Bayou.mp3',
								'music_player/-L4D2- Left For Dead V1.mp3',)

	var/list/scary_music = list('music_player/-L4D2- Witch Alert.mp3')

	var/list/ending_music = list('music_player/-L4D2- Skin On Our Teeth.mp3')

	var/list/funny_music = list()

	var/melody = null
	var/music_group = tgui_input_list(usr, "Выберите подходящую категорию!", "Список", categories)
	switch(music_group)
		if("Боевая")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", combat_music)
		if("Спокойная")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", chill_music)
		if("Напряжённая")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", nervous_music)
		if("Пугающая")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", scary_music)
		if("Финальная")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", ending_music)
		if("Смешная")
			melody = tgui_input_list(usr, "Выберите трэк, который хотите проиграть!", "Список", funny_music)

	if(!melody)
		return

	for(var/mob/target as anything in GLOB.mob_list)
		playsound_client(target.client, melody, vol = 50, vol_cat = VOLUME_ADM)

//	var/client/player = target
//	if(player == null)
//	var/client/player = tgui_input_list(usr, "Выберите игрока, что будет исключен/включен.", "Blacklist", GLOB.clients)


// Some MODULAR code \\

/client/add_admin_verbs()
	. = ..()
	if(CLIENT_HAS_RIGHTS(src, R_BUILDMODE))
		add_verb(src, /client/proc/disallow_to_join)
		add_verb(src, /client/proc/allow_to_join)
		add_verb(src, /client/proc/play_server_sound)
		add_verb(src, /client/proc/gm_lighting) //RU-PVE

/client/remove_admin_verbs()
	. = ..()
	remove_verb(src, list(
		/client/proc/disallow_to_join,
		/client/proc/allow_to_join,
		/client/proc/play_server_sound,
		/client/proc/gm_lighting,
	))

/mob/dead/join_as_freed_mob()
	if(usr.client.total_enter_lock)
		to_chat(usr, SPAN_WARNING("You have BLACKLISTED from entering!"))
		return
	. = ..()
