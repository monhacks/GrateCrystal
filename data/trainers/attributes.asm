TrainerClassAttributes:
; entries correspond to trainer classes (see constants/trainer_constants.asm)
	table_width NUM_TRAINER_ATTRIBUTES, TrainerClassAttributes

; Falkner
	db SUPER_POTION, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Whitney
	db MOOMOO_MILK, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Bugsy
	db FULL_HEAL, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Morty
	db FULL_HEAL, FULL_HEAL ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Pryce
	db HYPER_POTION, FULL_HEAL ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Jasmine
	db HYPER_POTION, FULL_HEAL ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Chuck
	db HYPER_POTION, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Clair
	db FULL_HEAL, MAX_POTION ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Rival1
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; PokemonProf
	db FULL_RESTORE, FULL_RESTORE ; items
	db 2 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Will
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Cal
	db NO_ITEM, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Bruno
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Karen
	db FULL_RESTORE, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Koga
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Champion
	db FULL_RESTORE, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Brock
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Misty
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Lt Surge
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Scientist
	db FULL_HEAL, HYPER_POTION ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Erika
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Youngster
	db NO_ITEM, NO_ITEM ; items
	db 9 ; base reward
	dw AI_BASIC | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Schoolboy
	db NO_ITEM, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Bird Keeper
	db X_SPEED, NO_ITEM ; items
	db 11 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Lass
	db NO_ITEM, NO_ITEM ; items
	db 11 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Janine
	db DIRE_HIT, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Cooltrainerm
	db DIRE_HIT, MAX_POTION ; items
	db 17 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Cooltrainerf
	db GUARD_SPEC, MAX_POTION ; items
	db 17 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Beauty
	db NO_ITEM, NO_ITEM ; items
	db 27 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Pokemaniac
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_SETUP | AI_OFFENSIVE | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gruntm
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gentleman
	db FULL_RESTORE, NO_ITEM ; items
	db 23 ; base reward
	dw AI_BASIC | AI_SETUP | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Skier
	db NO_ITEM, NO_ITEM ; items
	db 23 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Teacher
	db FULL_HEAL, NO_ITEM ; items
	db 1 ; base reward
	dw AI_BASIC | AI_OPPORTUNIST | AI_AGGRESSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Sabrina
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Bug Catcher
	db NO_ITEM, NO_ITEM ; items
	db 9 ; base reward
	dw AI_BASIC | AI_SETUP | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Fisher
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_OFTEN

; Swimmerm
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_OFFENSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Swimmerf
	db NO_ITEM, NO_ITEM ; items
	db 20 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Sailor
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Super Nerd
	db SUPER_POTION, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Rival2
	db FULL_HEAL, MAX_POTION ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Guitarist
	db NO_ITEM, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Hiker
	db X_DEFEND, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Biker
	db NO_ITEM, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_TYPES | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Blaine
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Burglar
	db NO_ITEM, NO_ITEM ; items
	db 27 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Firebreather
	db NO_ITEM, NO_ITEM ; items
	db 17 ; base reward
	dw AI_BASIC | AI_SETUP | AI_OFFENSIVE | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Juggler
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Blackbelt T
	db X_ATTACK, NO_ITEM ; items
	db 11 ; base reward
	dw AI_BASIC | AI_OFFENSIVE | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Executivem
	db FULL_HEAL, HYPER_POTION ; items
	db 23 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_SMART | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Psychic T
	db X_SPECIAL, X_SP_DEFEND ; items
	db 13 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Picnicker
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Camper
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw AI_BASIC | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Executivef
	db FULL_HEAL, HYPER_POTION ; items
	db 23 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_SMART | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Sage
	db NO_ITEM, NO_ITEM ; items
	db 13 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Medium
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_SETUP | AI_TYPES | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Boarder
	db NO_ITEM, NO_ITEM ; items
	db 23 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Pokefanm
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Kimono Girl
	db FULL_HEAL, HYPER_POTION ; items
	db 23 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Twins
	db NO_ITEM, NO_ITEM ; items
	db 10 ; base reward
	dw NO_AI
	dw CONTEXT_USE | SWITCH_OFTEN

; Pokefanf
	db NO_ITEM, NO_ITEM ; items
	db 25 ; base reward
	dw AI_BASIC | AI_TYPES | AI_SMART | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Red
	db FULL_RESTORE, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Blue
	db FULL_RESTORE, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Officer
	db NO_ITEM, NO_ITEM ; items
	db 30 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_STATUS
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Gruntf
	db NO_ITEM, NO_ITEM ; items
	db 15 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Mysticalman
	db FULL_HEAL, HYPER_POTION ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Real Karen
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Real Koga
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Boss
	db FULL_HEAL, FULL_RESTORE ; items
	db 30 ; base reward
	dw AI_BASIC | AI_SETUP | AI_SMART | AI_AGGRESSIVE | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Jessie and James
	db NO_ITEM, NO_ITEM ; items
	db 21 ; base reward
	dw AI_BASIC | AI_TYPES | AI_OPPORTUNIST | AI_CAUTIOUS | AI_STATUS | AI_RISKY
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Aerobones
	db NO_ITEM, NO_ITEM ; items
	db 1 ; base reward
	dw NO_AI
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Kabubones
	db NO_ITEM, NO_ITEM ; items
	db 1 ; base reward
	dw NO_AI
	dw CONTEXT_USE | SWITCH_SOMETIMES

; Missingno
	db NO_ITEM, NO_ITEM ; items
	db 1 ; base reward
	dw NO_AI
	dw CONTEXT_USE | SWITCH_SOMETIMES

	assert_table_length NUM_TRAINER_CLASSES
