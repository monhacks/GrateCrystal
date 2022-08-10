	object_const_def

SeafoamCavePuzzleChamber_MapScripts:
	def_scene_scripts
	scene_script .DummyScene ; SCENE_FINISHED

	def_callbacks
	callback MAPCALLBACK_TILES, .HiddenDoors

.DummyScene:
	end

.HiddenDoors:
	checkevent EVENT_WALL_OPENED_IN_SEAFOAM_CAVE
	iftrue .WallOpen
	changeblock 4, 0, $2e ; closed wall
.WallOpen:
	changeblock 2, 2, $01 ; left floor
	changeblock 4, 2, $02 ; right floor
	endcallback

SeafoamCaveUbeqcPuzzle:
	refreshscreen
	setval UNOWNPUZZLE_UBEQC
	special UnownPuzzle
	closetext
	iftrue .PuzzleComplete
	end

.PuzzleComplete:
	setevent EVENT_WALL_OPENED_IN_SEAFOAM_CAVE
	pause 30
	earthquake 30
	showemote EMOTE_SHOCK, PLAYER, 20
	pause 30
	playsound SFX_STRENGTH
	changeblock 4, 0, $30 ; open wall
	reloadmappart
	earthquake 50
	setscene SCENE_FINISHED
	closetext
	end

SeafoamCavePuzzleChamberAncientReplica:
	jumptext SeafoamCavePuzzleChamberAncientReplicaText

SeafoamCavePuzzleChamberDescriptionSign:
	jumptext SeafoamCavePuzzleChamberDescriptionText

SeafoamCavePuzzleChamberWallPatternLeft:
	opentext
	writetext SeafoamCavePuzzleChamberWallPatternLeftText
	setval UNOWNWORDS_GRATE
	special DisplayUnownWords
	closetext
	end

SeafoamCavePuzzleChamberWallPatternRight:
	checkevent EVENT_WALL_OPENED_IN_SEAFOAM_CAVE
	iftrue .WallOpen
	opentext
	writetext SeafoamCavePuzzleChamberWallPatternRightText
	setval UNOWNWORDS_GRATE
	special DisplayUnownWords
	closetext
	end

.WallOpen:
	opentext
	writetext SeafoamCavePuzzleChamberWallHoleText
	waitbutton
	closetext
	end

SeafoamCavePuzzleChamberWallPatternLeftText:
	text "Patterns appeared"
	line "on the walls…"
	done

SeafoamCavePuzzleChamberWallPatternRightText:
	text "Patterns appeared"
	line "on the walls…"
	done

SeafoamCavePuzzleChamberWallHoleText:
	text "There's a big hole"
	line "in the wall!"
	done

SeafoamCavePuzzleChamberAncientReplicaText:
	text "It's a replica of"
	line "an ancient #-"
	cont "MON."
	done

SeafoamCavePuzzleChamberDescriptionText:
	text "The GRATE ORACLE"
	line "LEWOT's personal"
	cont "symbol of balance."
	done

SeafoamCavePuzzleChamber_MapEvents:
	db 0, 0 ; filler

	def_warp_events
	warp_event  3,  9, ROUTE_20, 2
	warp_event  4,  9, ROUTE_20, 2
	warp_event  4,  0, SEAFOAM_CAVE_1F, 1

	def_coord_events

	def_bg_events
	bg_event  2,  3, BGEVENT_READ, SeafoamCavePuzzleChamberAncientReplica
	bg_event  5,  3, BGEVENT_READ, SeafoamCavePuzzleChamberAncientReplica
	bg_event  3,  2, BGEVENT_UP, SeafoamCavePuzzleChamberPuzzle
	bg_event  4,  2, BGEVENT_UP, SeafoamCavePuzzleChamberDescriptionSign
	bg_event  3,  0, BGEVENT_UP, SeafoamCavePuzzleChamberWallPatternLeft
	bg_event  4,  0, BGEVENT_UP, SeafoamCavePuzzleChamberWallPatternRight

	def_object_events
