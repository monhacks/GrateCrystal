command: MACRO
	const \1_command
\1 EQUS "db \1_command"
ENDM

; BattleCommandPointers indexes (see data/battle/effect_command_pointers.asm)
	const_def 1
	command checkturn               ; 01
	command checkobedience          ; 02
	command usedmovetext            ; 03
	command doturn                  ; 04
	command critical                ; 05
	command damagestats             ; 06
	command stab                    ; 07
	command damagevariation         ; 08
	command checkhit                ; 09
	command lowersub                ; 0a
	command moveanimnosub           ; 0b
	command raisesub                ; 0c
	command failuretext             ; 0d
	command applydamage             ; 0e
	command criticaltext            ; 0f
	command supereffectivetext      ; 10
	command checkfaint              ; 11
	command buildopponentrage       ; 12
	command poisontarget            ; 13
	command sleeptarget             ; 14
	command draintarget             ; 15
	command eatdream                ; 16
	command burntarget              ; 17
	command freezetarget            ; 18
	command paralyzetarget          ; 19
	command selfdestruct            ; 1a
	command mirrormove              ; 1b
	command statup                  ; 1c
	command statdown                ; 1d
	command payday                  ; 1e
	command conversion              ; 1f
	command resetstats              ; 20
	command storeenergy             ; 21
	command unleashenergy           ; 22
	command forceswitch             ; 23
	command endloop                 ; 24
	command flinchtarget            ; 25
	command ohko                    ; 26
	command recoil                  ; 27
	command mist                    ; 28
	command focusenergy             ; 29
	command confuse                 ; 2a
	command confusetarget           ; 2b
	command heal                    ; 2c
	command transform               ; 2d
	command screen                  ; 2e
	command poison                  ; 2f
	command paralyze                ; 30
	command substitute              ; 31
	command rechargenextturn        ; 32
	command metronome               ; 33
	command leechseed               ; 34
	command disable                 ; 35
	command cleartext               ; 36
	command charge                  ; 37
	command checkcharge             ; 38
	command traptarget              ; 39
	command checkfloatmon           ; 3a
	command rampage                 ; 3b
	command checkrampage            ; 3c
	command constantdamage          ; 3d
	command counter                 ; 3e
	command encore                  ; 3f
	command snore                   ; 40
	command conversion2             ; 41
	command lockon                  ; 42
	command sketch                  ; 43
	command sleeptalk               ; 44
	command destinybond             ; 45
	command spite                   ; 46
	command falseswipe              ; 47
	command healbell                ; 48
	command kingsrock               ; 49
	command triplekick              ; 4a
	command kickcounter             ; 4b
	command thief                   ; 4c
	command arenatrap               ; 4d
	command nightmare               ; 4e
	command flamewheel              ; 4f
	command curse                   ; 50
	command protect                 ; 51
	command spikes                  ; 52
	command foresight               ; 53
	command perishsong              ; 54
	command startsandstorm          ; 55
	command endure                  ; 56
	command checkcurl               ; 57
	command rolloutpower            ; 58
	command furycutter              ; 59
	command attract                 ; 5a
	command happinesspower          ; 5b
	command present                 ; 5c
	command damagecalc              ; 5d
	command safeguard               ; 5e
	command checksafeguard          ; 5f
	command getmagnitude            ; 60
	command batonpass               ; 61
	command pursuit                 ; 62
	command clearhazards            ; 63
	command healmorn                ; 64
	command healday                 ; 65
	command healnite                ; 66
	command hiddenpower             ; 67
	command startrain               ; 68
	command startsun                ; 69
	command attackup                ; 6a
	command defenseup               ; 6b
	command speedup                 ; 6c
	command specialattackup         ; 6d
	command specialdefenseup        ; 6e
	command accuracyup              ; 6f
	command evasionup               ; 70
	command attackup2               ; 71
	command defenseup2              ; 72
	command speedup2                ; 73
	command specialattackup2        ; 74
	command specialdefenseup2       ; 75
	command accuracyup2             ; 76
	command evasionup2              ; 77
	command attackdown              ; 78
	command defensedown             ; 79
	command speeddown               ; 7a
	command specialattackdown       ; 7b
	command specialdefensedown      ; 7c
	command accuracydown            ; 7d
	command evasiondown             ; 7e
	command attackdown2             ; 7f
	command defensedown2            ; 80
	command speeddown2              ; 81
	command specialattackdown2      ; 82
	command specialdefensedown2     ; 83
	command accuracydown2           ; 84
	command evasiondown2            ; 85
	command statupmessage           ; 86
	command statdownmessage         ; 87
	command statupfailtext          ; 88
	command statdownfailtext        ; 89
	command effectchance            ; 8a
	command statdownanim            ; 8b
	command statupanim              ; 8c
	command switchturn              ; 8d
	command bellydrum               ; 8e
	command psychup                 ; 8f
	command rage                    ; 90
	command doubleflyingdamage      ; 91
	command doubleundergrounddamage ; 92
	command mirrorcoat              ; 93
	command checkfuturesight        ; 94
	command futuresight             ; 95
	command doubleminimizedamage    ; 96
	command skipsuncharge           ; 97
	command starthail               ; 98
	command beatup                  ; 99
	command ragedamage              ; 9a
	command resettypematchup        ; 9b
	command allstatsup              ; 9c
	command bidefailtext            ; 9d
	command raisesubnoanim          ; 9e
	command lowersubnoanim          ; 9f
	command beatupfailtext          ; a0
	command clearmissdamage         ; a1
	command movedelay               ; a2
	command moveanim                ; a3
	command tristatuschance         ; a4
	command supereffectivelooptext  ; a5
	command startloop               ; a6
	command curl                    ; a7
	command undergroundflyer        ; a8
NUM_EFFECT_COMMANDS EQU const_value - 1

	const_def -1, -1
	command endmove                 ; ff
	command endturn                 ; fe
