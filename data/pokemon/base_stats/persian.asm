	db PERSIAN ; 053

	db  65,  95,  65, 140,  65,  65
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, STEEL ; type
	db 90 ; catch rate
	db 148 ; base exp
	db NUGGET, AMULET_COIN ; items
	db GENDER_F50 ; gender ratio
	db 100 ; unknown 1
	db 20 ; step cycles to hatch
	db 5 ; unknown 2
	INCBIN "gfx/pokemon/persian/front.dimensions"
	dw NULL, NULL ; unused (beta front/back pics)
	db GROWTH_MEDIUM_FAST ; growth rate
	dn EGG_GROUND, EGG_FAIRY ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, ZAP_CANNON, PSYCH_UP, HIDDEN_POWER, SUNNY_DAY, SNORE, HYPER_BEAM, ICY_WIND, PROTECT, ENDURE, IRON_TAIL, THUNDER, RETURN, SHADOW_BALL, MUD_SLAP, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DEFENSE_CURL, DREAM_EATER, FALSE_SWIPE, REST, ATTRACT, THIEF, NIGHTMARE, DARK_PULSE, NIGHT_TERROR, SUBSTITUTE, HYPNOSIS, CUT, THUNDERBOLT
	; end
