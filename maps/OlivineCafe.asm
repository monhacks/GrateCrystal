	object_const_def
	const OLIVINECAFE_SAILOR1
	const OLIVINECAFE_FISHING_GURU
	const OLIVINECAFE_SAILOR2

OlivineCafe_MapScripts:
	def_scene_scripts

	def_callbacks

OlivineCafeStrengthSailorScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM04_STRENGTH
	iftrue .GotStrength
	writetext OlivineCafeStrengthSailorText
	promptbutton
	verbosegiveitem HM_STRENGTH
	setevent EVENT_GOT_HM04_STRENGTH
.GotStrength:
	writetext OlivineCafeStrengthSailorText_GotStrength
	waitbutton
	closetext
	end

OlivineCafeFishingGuruScript:
	jumptextfaceplayer OlivineCafeFishingGuruText

OlivineCafeSailorScript:
	jumptextfaceplayer OlivineCafeSailorText

OlivineCafeStrengthSailorText:
	text "A long time ago in"
	line "a galaxy far, far"
	cont "away…"

	para "A devout order"
	line "known as the JEDI"

	para "learned to tap into"
	line "the energy field"

	para "given off by all"
	line "life, THE FORCE."

	para "With this HM, your"
	line "#MON can do the"
	cont "same!"
	done

OlivineCafeStrengthSailorText_GotStrength:
	text "Using THE FORCE,"
	line "#MON can move"

	para "large boulders"
	line "with the power of"
	cont "their minds."
	done

OlivineCafeFishingGuruText:
	text "OLIVINE CAFE's"
	line "menu is chock full"

	para "of hearty fare for"
	line "beefy SAILORS!"
	done

OlivineCafeSailorText:
	text "Whenever I roll"
	line "into this town, I"

	para "always visit the"
	line "OLIVINE CAFE."

	para "Everything on the"
	line "menu makes me feel"

	para "stronger. I can't"
	line "stop eating!"
	done

OlivineCafe_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, OLIVINE_CITY, 6
	warp_event  3,  7, OLIVINE_CITY, 6

	def_coord_events

	def_bg_events

	def_object_events
	object_event  4,  3, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeStrengthSailorScript, -1
	object_event  7,  3, SPRITE_FISHING_GURU, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeFishingGuruScript, -1
	object_event  6,  6, SPRITE_SAILOR, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, OlivineCafeSailorScript, -1
