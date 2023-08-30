	object_const_def
	const VERMILIONMART_CLERK
	const VERMILIONMART_BIRD
	const VERMILIONMART_SUPER_NERD
	const VERMILIONMART_BEAUTY

VermilionMart_MapScripts:
	def_scene_scripts

	def_callbacks

VermilionMartClerkScript:
	opentext
	pokemart MARTTYPE_STANDARD, MART_VERMILION
	closetext
	end

VermilionMartDelibirdScript:
	jumpstd MartDelibirdScript

VermilionMartSuperNerdScript:
	jumptextfaceplayer VermilionMartSuperNerdText

VermilionMartBeautyScript:
	jumptextfaceplayer VermilionMartBeautyText

VermilionMartSuperNerdText:
	text "Have you been to"
	line "the LENTAL REGION?"

	para "I have photos!"
	done

VermilionMartBeautyText:
	text "I'm thinking about"
	line "going shopping in"
	cont "SAFFRON."
	done

VermilionMart_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  2,  7, VERMILION_CITY, 5
	warp_event  3,  7, VERMILION_CITY, 5

	def_coord_events

	def_bg_events

	def_object_events
	object_event  1,  3, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartClerkScript, -1
	object_event  1,  2, SPRITE_BIRD, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VermilionMartDelibirdScript, -1
	object_event  5,  2, SPRITE_SUPER_NERD, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, VermilionMartSuperNerdScript, -1
	object_event  8,  6, SPRITE_BEAUTY, SPRITEMOVEDATA_WALK_LEFT_RIGHT, 1, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VermilionMartBeautyScript, -1
