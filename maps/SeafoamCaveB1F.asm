	object_const_def

SeafoamCaveB1F_MapScripts:
	def_scene_scripts

	def_callbacks

SeafoamCaveRadio:
	jumpstd Radio2Script

SeafoamCaveStatue:
	jumptext SeafoamCaveStatueText

SeafoamCaveBed:
	opentext
	writetext SeafoamCaveBedText1
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_HEAL
	pause 60
	special RestartMapMusic
	special FadeInQuickly
	opentext
	writetext SeafoamCaveBedText2
	closetext
	end

SeafoamCaveB1FHiddenTimerBall:
	hiddenitem TIMER_BALL, EVENT_SEAFOAM_CAVE_B1F_HIDDEN_TIMER_BALL

SeafoamCaveStatueText:
	text "It's a statue of a"
	line "FERALIGATR."
	done

SeafoamCaveBedText1:
	text "A comfy bed!"
	line "Time to sleep…"
	autodone

SeafoamCaveBedText2:
	text "Ah, refreshed and"
	line "restored!"
	autodone

SeafoamCaveB1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 11, 16, SEAFOAM_CAVE_1F, 2
	warp_event 24, 27, SEAFOAM_CAVE_B1F, 1

	def_coord_events

	def_bg_events
	bg_event  3,  0, BGEVENT_READ, SeafoamCaveRadio
	bg_event 11, 21, BGEVENT_READ, SeafoamCaveStatue
	bg_event 16, 22, BGEVENT_READ, FastShipBed
	bg_event 16, 23, BGEVENT_READ, FastShipBed
	bg_event 17, 40, BGEVENT_ITEM, SeafoamCaveB1FHiddenTimerBall

	def_object_events
