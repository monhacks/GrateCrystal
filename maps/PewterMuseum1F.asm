	object_const_def
	const PEWTERMUSEUM1F_SCIENTIST
	const PEWTERMUSEUM1F_GOLD_TROPHY

PewterMuseum1F_MapScripts:
	def_scene_scripts

	def_callbacks

PewterMuseum1FScientistScript:
	faceplayer
	opentext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .GaveScientistFossil
	checkevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	iftrue .GiveAerodactyl
	checkevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	iftrue .GiveKabuto
	checkevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	iftrue .GiveOmanyte
	writetext PewterMuseum1FScientistIntroText
	waitbutton
	checkitem HELIX_FOSSIL
	iftrue .HaveFossil
	checkitem DOME_FOSSIL
	iftrue .HaveFossil
	checkitem OLD_AMBER
	iftrue .HaveFossil
	closetext
	end

.HaveFossil:
	writetext PewterMuseum1FScientistHaveFossilText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_OLD_AMBER, .OldAmber
	sjump .Cancel

.HelixFossil:
	checkitem HELIX_FOSSIL
	iffalse .WrongFossil
	getmonname STRING_BUFFER_3, OMANYTE
	writetext PewterMuseum1FScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	takeitem HELIX_FOSSIL
	writetext PewterMuseum1FScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.DomeFossil:
	checkitem DOME_FOSSIL
	iffalse .WrongFossil
	getmonname STRING_BUFFER_3, KABUTO
	writetext PewterMuseum1FScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	takeitem DOME_FOSSIL
	opentext
	writetext PewterMuseum1FScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.OldAmber
	checkitem OLD_AMBER
	iffalse .WrongFossil
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext PewterMuseum1FScientistMonText
	promptbutton
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	setevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	takeitem OLD_AMBER
	writetext PewterMuseum1FScientistGiveText
	waitbutton
	sjump .GaveScientistFossil

.Cancel
	writetext PewterMuseum1FScientistCancelText
	waitbutton
	closetext
	end

.WrongFossil
	writetext PewterMuseum1FScientistWrongFossilText
	loadmenu .MoveMenuHeader
	verticalmenu
	closewindow
	ifequal REVIVE_HELIX_FOSSIL, .HelixFossil
	ifequal REVIVE_DOME_FOSSIL, .DomeFossil
	ifequal REVIVE_OLD_AMBER, .OldAmber
	sjump .Cancel

.GaveScientistFossil:
	writetext PewterMuseum1FScientistTimeText
	waitbutton
	closetext
	end

.GiveAerodactyl:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_OLD_AMBER
	writetext PewterMuseum1FScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, AERODACTYL
	writetext PewterMuseum1FScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke AERODACTYL, 1
	closetext
	end

.GiveKabuto:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_DOME_FOSSIL
	writetext PewterMuseum1FScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, KABUTO
	writetext PewterMuseum1FScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke KABUTO, 1
	closetext
	end

.GiveOmanyte:
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .NoRoom
	clearevent EVENT_GAVE_SCIENTIST_HELIX_FOSSIL
	writetext PewterMuseum1FScientistDoneText
	promptbutton
	getmonname STRING_BUFFER_3, OMANYTE
	writetext PewterMuseum1FScientistReceiveText
	playsound SFX_CAUGHT_MON
	waitsfx
	givepoke OMANYTE, 1
	closetext
	end

.NoRoom:
	writetext PewterMuseum1FScientistPartyFullText
	waitbutton
	closetext
	end

.MoveMenuHeader:
	db MENU_BACKUP_TILES ; flags
	menu_coords 0, 2, 15, TEXTBOX_Y - 1
	dw .MenuData
	db 1 ; default option

.MenuData:
	db STATICMENU_CURSOR ; flags
	db 4 ; items
	db "HELIX FOSSIL@"
	db "DOME FOSSIL@"
	db "OLD AMBER@"
	db "CANCEL@"

PewterMuseum1FGoldTrophy:
	jumptext PewterMuseum1FGoldTrophyText

AerodactylFossilSignScript:
	refreshscreen
	trainerpic AEROBONES
	waitbutton
	closepokepic
	opentext
	writetext AerodactylFossilSignText
	waitbutton
	closetext
	end

KabutopsFossilSignScript:
	refreshscreen
	trainerpic KABUBONES
	waitbutton
	closepokepic
	opentext
	writetext KabutopsFossilSignText
	waitbutton
	closetext
	end

GrowlitheBookshelfScript:
	jumptext GrowlitheBookshelfText

VoltorbBookshelfScript:
	jumptext VoltorbBookshelfText

TyphlosionBookshelfScript:
	jumptext TyphlosionBookshelfText

QwilfishBookshelfScript:
	jumptext QwilfishBookshelfText

SneaselBookshelfScript:
	jumptext SneaselBookshelfText

MewBookshelfScript:
	jumptext MewBookshelfText

PewterMuseum1FScientistIntroText:
	text "Thanks to our"
	line "successful fossil"

	para "breeding program,"
	line "you can now find"

	para "once-extinct #-"
	line "MON in the wild!"

	para "That means fewer"
	line "people come here"

	para "to see our fossil"
	line "exhibits, though…"
	done

PewterMuseum1FScientistHaveFossilText:
	text "Oh! You have a"
	line "fossil?"

	para "I may be able to"
	line "revive it."

	para "Which one should I"
	line "work on?"
	done

PewterMuseum1FScientistCancelText:
	text "Oh… never mind…"
	done

PewterMuseum1FScientistWrongFossilText:
	text "You don't have one"
	line "of those."

	para "Which one should I"
	line "work on?"
	done

PewterMuseum1FScientistPartyFullText:
	text "Your party's full…"
	done

PewterMuseum1FScientistTimeText:
	text "This will take a"
	line "little time."

	para "Please come back"
	line "in a bit."
	done

PewterMuseum1FScientistDoneText:
	text "What took you so"
	line "long?"

	para "Here's your fossil"
	line "#MON!"
	done

PewterMuseum1FScientistMonText:
	text "Ah! That's a"
	line "fossil of…"

	para "@"
	text_ram wStringBuffer3
	text "!"

	para "I should be able"
	line "to resurrect it!"
	done

PewterMuseum1FScientistGiveText:
	text "<PLAYER> handed"
	line "over the fossil."
	done

PewterMuseum1FScientistReceiveText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

PewterMuseum1FGoldTrophyText:
	text "It's an award for"
	line "paleontology."
	done

AerodactylFossilSignText:
	text "A fossil of a"
	line "#MON that ruled"

	para "the skies in anci-"
	line "ent times, now"

	para "identified as"
	line "AERODACTYL."

	para "Originally hypoth-"
	line "esized to have"

	para "gained the rock"
	line "type through the"

	para "fossilization pro-"
	line "cess, research in-"
	cont "to mega evolution"

	para "has shown that it"
	line "had the typing"

	para "even in its pre-"
	line "historic form."
	done

KabutopsFossilSignText:
	text "A fossil of a"
	line "#MON that ruled"

	para "the seas in anci-"
	line "ent times, now"

	para "identified as"
	line "KABUTOPS."

	para "Despite its lanky"
	line "appearance, it was"

	para "a swift swimmer"
	line "and could quickly"

	para "attack prey with"
	line "its scythe-like"

	para "arms while being"
	line "protected by its"
	cont "rocky carapace."
	done

GrowlitheBookshelfText:
	text "It's packed with"
	line "research about an"

	para "ancient fire/rock"
	line "type form of"
	cont "GROWLITHE."
	done

VoltorbBookshelfText:
	text "It's packed with"
	line "research about an"

	para "ancient electric/"
	line "grass type form of"
	cont "VOLTORB."
	done

TyphlosionBookshelfText:
	text "It's packed with"
	line "research about an"

	para "ancient fire/ghost"
	line "type form of"
	cont "TYPHLOSION."
	done

QwilfishBookshelfText:
	text "It's packed with"
	line "research about an"

	para "ancient dark/"
	line "poison type form"
	cont "of QWILFISH."
	done

SneaselBookshelfText:
	text "It's packed with"
	line "research about an"

	para "ancient fighting/"
	line "poison type form"
	cont "of SNEASEL."
	done

MewBookshelfText:
	text "It's packed with"
	line "research about"

	para "something called"
	line "PARADOX #MON."
	done

PewterMuseum1F_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event 10,  7, PEWTER_CITY, 6
	warp_event 11,  7, PEWTER_CITY, 6
	warp_event 16,  7, PEWTER_CITY, 7
	warp_event 17,  7, PEWTER_CITY, 7
	warp_event  7,  7, PEWTER_MUSEUM_2F, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, AerodactylFossilSignScript
	bg_event  2,  6, BGEVENT_READ, KabutopsFossilSignScript
	bg_event 13,  1, BGEVENT_READ, GrowlitheBookshelfScript
	bg_event 14,  1, BGEVENT_READ, VoltorbBookshelfScript
	bg_event 15,  1, BGEVENT_READ, TyphlosionBookshelfScript
	bg_event 17,  1, BGEVENT_READ, QwilfishBookshelfScript
	bg_event 18,  1, BGEVENT_READ, SneaselBookshelfScript
	bg_event 19,  1, BGEVENT_READ, MewBookshelfScript

	def_object_events
	object_event 12,  2, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FScientistScript, -1
	object_event 16,  2, SPRITE_GOLD_TROPHY, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, PewterMuseum1FGoldTrophy, -1
