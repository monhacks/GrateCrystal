	db MANKEY ; 056

	db  40,  80,  35,  70,  35,  45
	;   hp  atk  def  spd  sat  sdf

	db FIGHTING, DARK ; type
	db 190 ; catch rate
	db 74 ; base exp
	db TM_THIEF, TM_IRON_TAIL ; items
	db GENDER_F50 ; gender ratio
	db 10 ; step cycles to hatch
	INCBIN "gfx/pokemon/mankey/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_HUMANSHAPE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, PROTECT, ENDURE, POISON_JAB, IRON_TAIL, THUNDER, RETURN, DIG, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, SUBSTITUTE, STRENGTH, ROCK_SMASH, THUNDERBOLT
	; end
