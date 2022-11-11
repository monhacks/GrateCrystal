	db MEWTWO ; 150

	db 106, 110,  90, 130, 154,  90
	;   hp  atk  def  spd  sat  sdf

	db PSYCHIC_TYPE, FIGHTING ; type
	db 5 ; catch rate
	db 220 ; base exp
	db X_SPECIAL, BERSERK_GENE ; items
	db GENDER_UNKNOWN ; gender ratio
	db 100 ; unknown 1
	db 84 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/mewtwo/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_SLOW ; growth rate
	dn EGG_NONE, EGG_NONE ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, POISON_JAB, SOLARBEAM, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, FIRE_BLAST, SWIFT, THUNDERPUNCH, DREAM_EATER, REST, FIRE_PUNCH, NIGHTMARE, NIGHT_TERROR, SUBSTITUTE, HYPNOSIS, TELEPORT, FLY, STRENGTH, FLASH, ROCK_SMASH, FLAMETHROWER, THUNDERBOLT, ICE_BEAM, TRI_ATTACK, AURA_SPHERE
	; end
