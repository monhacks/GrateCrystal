	db ELECTABUZZ ; 125

	db  70, 103,  62, 100,  95,  85
	;   hp  atk  def  spd  sat  sdf

	db ELECTRIC, FIGHTING ; type
	db 45 ; catch rate
	db 177 ; base exp
	db TM_THUNDERPUNCH, TM_THUNDER ; items
	db GENDER_F25 ; gender ratio
	db 13 ; step cycles to hatch
	INCBIN "gfx/pokemon/electabuzz/front.dimensions"
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_HUMANSHAPE, EGG_MONSTER ; egg groups

	; tm/hm learnset
	tmhm DYNAMICPUNCH, HEADBUTT, CURSE, ZAP_CANNON, HIDDEN_POWER, SNORE, HYPER_BEAM, PROTECT, RAIN_DANCE, ENDURE, IRON_TAIL, THUNDER, RETURN, PSYCHIC_M, MUD_SLAP, DOUBLE_TEAM, ICE_PUNCH, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, THUNDERPUNCH, REST, ATTRACT, THIEF, FIRE_PUNCH, SUBSTITUTE, STRENGTH, FLASH, ROCK_SMASH, THUNDERBOLT, TRI_ATTACK, AURA_SPHERE
	; end
