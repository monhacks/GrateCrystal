TreeMons:
; entries correspond to TREEMON_SET_* constants
	table_width 2, TreeMons
	dw TreeMonSet_City
	dw TreeMonSet_Canyon
	dw TreeMonSet_Town
	dw TreeMonSet_Route
	dw TreeMonSet_Kanto
	dw TreeMonSet_Lake
	dw TreeMonSet_Forest
	dw TreeMonSet_Rock
	assert_table_length NUM_TREEMON_SETS
	dw TreeMonSet_City ; unused

; Two tables each (common, rare).
; Structure:
;	db  %, species, level

TreeMonSet_City:
TreeMonSet_Canyon:
; common
	db 25, SPEAROW,    10
	db 20, SPEAROW,    10
	db 20, SPEAROW,    10
	db 15, AIPOM,      10
	db 10, AIPOM,      10
	db 10, AIPOM,      10
	db -1
; rare
	db 25, SPEAROW,    10
	db 20, HERACROSS,  10
	db 20, HERACROSS,  10
	db 15, AIPOM,      10
	db 10, AIPOM,      10
	db 10, AIPOM,      10
	db -1

TreeMonSet_Town:
; common
	db 25, SPEAROW,    10
	db 20, EKANS,      10
	db 20, SPEAROW,    10
	db 15, AIPOM,      10
	db 10, AIPOM,      10
	db 10, AIPOM,      10
	db -1
; rare
	db 25, SPEAROW,    10
	db 20, HERACROSS,  10
	db 20, HERACROSS,  10
	db 15, AIPOM,      10
	db 10, AIPOM,      10
	db 10, AIPOM,      10
	db -1

TreeMonSet_Route:
; common
	db 25, HOOTHOOT,   10
	db 20, SPINARAK,   10
	db 20, LEDYBA,     10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1
; rare
	db 25, HOOTHOOT,   10
	db 20, PINECO,     10
	db 20, PINECO,     10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1

TreeMonSet_Kanto:
; common
	db 25, HOOTHOOT,   10
	db 20, EKANS,      10
	db 20, HOOTHOOT,   10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1
; rare
	db 25, HOOTHOOT,   10
	db 20, PINECO,     10
	db 20, PINECO,     10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1

TreeMonSet_Lake:
; common
	db 25, HOOTHOOT,   10
	db 20, VENONAT,    10
	db 20, HOOTHOOT,   10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1
; rare
	db 25, HOOTHOOT,   10
	db 20, PINECO,     10
	db 20, PINECO,     10
	db 15, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db 10, EXEGGCUTE,  10
	db -1

TreeMonSet_Forest:
; common
	db 25, HOOTHOOT,   10
	db 20, PINECO,     10
	db 20, PINECO,     10
	db 15, NOCTOWL,    10
	db 10, BUTTERFREE, 10
	db 10, BEEDRILL,   10
	db -1
; rare
	db 25, HOOTHOOT,   10
	db 20, CATERPIE,   10
	db 20, WEEDLE,     10
	db 15, HOOTHOOT,   10
	db 10, METAPOD,    10
	db 10, KAKUNA,     10
	db -1

TreeMonSet_Rock:
	db 20, GEODUDE,    15
	db 20, KRABBY,     15
	db 20, SHELLDER,   15
	db 20, ARBOK,      15
	db 10, SHUCKLE,    15
	db 10, DUNSPARCE,  15
	db -1
