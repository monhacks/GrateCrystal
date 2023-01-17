	db CASTAWEIGH ; 240

	db  75, 120,  90,  65,  80,  80
	;   hp  atk  def  spd  sat  sdf

	db WATER, DARK ; type
	db 60 ; catch rate
	db 175 ; base exp
	db X_ATTACK, SLOWPOKETAIL ; items
	db GENDER_F50 ; gender ratio
	db 20 ; step cycles to hatch
	INCBIN "gfx/pokemon/castaweigh/front.dimensions"
	db GROWTH_SLOW ; growth rate
	dn EGG_WATER_2, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm HEADBUTT, CURSE, ROAR, TOXIC, PSYCH_UP, HIDDEN_POWER, SNORE, BLIZZARD, HYPER_BEAM, ICY_WIND, PROTECT, RAIN_DANCE, ENDURE, POISON_JAB, IRON_TAIL, EARTHQUAKE, RETURN, DOUBLE_TEAM, SWAGGER, SLEEP_TALK, SWIFT, DREAM_EATER, FALSE_SWIPE, REST, ATTRACT, THIEF, FURY_CUTTER, NIGHTMARE, DARK_PULSE, HAIL, NIGHT_TERROR, SUBSTITUTE, SCALD, CUT, SURF, WHIRLPOOL, WATERFALL, ROCK_SMASH, ICE_BEAM
	; end
