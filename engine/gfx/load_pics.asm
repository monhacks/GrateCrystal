GetUnownLetter:
; Return Unown letter in wUnownLetter based on DVs at hl

; Take the middle 2 bits of each DV and place them in order:
;	atk  def  spd  spc
;	.ww..xx.  .yy..zz.

	; atk
	ld a, [hl]
	and %01100000
	sla a
	ld b, a
	; def
	ld a, [hli]
	and %00000110
	swap a
	srl a
	or b
	ld b, a

	; spd
	ld a, [hl]
	and %01100000
	swap a
	sla a
	or b
	ld b, a
	; spc
	ld a, [hl]
	and %00000110
	srl a
	or b

; Divide by 9 to get 0-28
	ldh [hDividend + 3], a
	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a
	ldh [hDividend + 2], a
	ld a, 9
	ldh [hDivisor], a
	ld b, 4
	call Divide

; Increment to get 1-29
	ldh a, [hQuotient + 3]
	inc a
; The valid range is 1-28, so use UNOWN_A instead of 29
	cp NUM_UNOWN + 1
	jr c, .valid
	ld a, UNOWN_A
.valid
	ld [wUnownLetter], a
	ret

GetPikachuForm:
; Return Pikachu form in wPikachuForm based on DVs at hl

; Take the middle 2 bits of each DV and place them in order:
;	atk  def  spd  spc
;	.ww..xx.  .yy..zz.

	; atk
	ld a, [hl]
	and %01100000
	sla a
	ld b, a
	; def
	ld a, [hli]
	and %00000110
	swap a
	srl a
	or b
	ld b, a

	; spd
	ld a, [hl]
	and %01100000
	swap a
	sla a
	or b
	ld b, a
	; spc
	ld a, [hl]
	and %00000110
	srl a
	or b

; Divide by 51 to get 0-5
	ldh [hDividend + 3], a
	xor a
	ldh [hDividend], a
	ldh [hDividend + 1], a
	ldh [hDividend + 2], a
	ld a, 51
	ldh [hDivisor], a
	ld b, 4
	call Divide

; Increment to get 1-6
	ldh a, [hQuotient + 3]
	inc a
	ld [wPikachuForm], a
	ret

GetMonFrontpic:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call IsAPokemon
	ret c
	ldh a, [rSVBK]
	push af
	call _GetFrontpic
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

GetAnimatedFrontpic:
	ld a, [wCurPartySpecies]
	ld [wCurSpecies], a
	call IsAPokemon
	ret c
	ldh a, [rSVBK]
	push af
	xor a
	ldh [hBGMapMode], a
	call _GetFrontpic
	ld a, BANK(vTiles3)
	ldh [rVBK], a
	call GetAnimatedEnemyFrontpic
	xor a
	ldh [rVBK], a
	pop af
	ldh [rSVBK], a
	jp CloseSRAM

_GetFrontpic:
	ld a, BANK(sEnemyFrontpicTileCount)
	call OpenSRAM
	push de
	call GetBaseData
	ld a, [wBasePicSize]
	and $f
	ld b, a
	push bc
	call GetFrontpicPointer
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	; Save decompressed size
	swap e
	swap d
	ld a, d
	and $f0
	or e
	ld [sEnemyFrontpicTileCount], a
	pop bc
	ld hl, sPaddedEnemyFrontpic
	ld de, wDecompressScratch
	call PadFrontpic
	pop hl
	push hl
	ld de, sPaddedEnemyFrontpic
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ret

GetFrontpicPointer:
	ld a, [wCurPartySpecies]
	cp PIKACHU
	jr z, .pikachu
	cp UNOWN
	jr z, .unown
	ld hl, PokemonPicPointers
	ld a, [wCurPartySpecies]
	ld d, BANK(PokemonPicPointers)
	jr .ok
.pikachu
	ld hl, PikachuPicPointers
	ld a, [wPikachuForm]
	ld d, BANK(PikachuPicPointers)
	jr .ok
.unown
	ld hl, UnownPicPointers
	ld a, [wUnownLetter]
	ld d, BANK(UnownPicPointers)
.ok
	dec a
	ld bc, 6
	call AddNTimes
	ld a, d
	call GetFarByte
	push af
	inc hl
	ld a, d
	call GetFarWord
	pop bc
	ret

GetAnimatedEnemyFrontpic:
	push hl
	ld de, sPaddedEnemyFrontpic
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop hl
	ld de, 7 * 7 tiles
	add hl, de
	push hl
	ld a, BANK(wBasePicSize)
	ld hl, wBasePicSize
	call GetFarWRAMByte
	pop hl
	and $f
	ld de, wDecompressScratch + 5 * 5 tiles
	ld c, 5 * 5
	cp 5
	jr z, .got_dims
	ld de, wDecompressScratch + 6 * 6 tiles
	ld c, 6 * 6
	cp 6
	jr z, .got_dims
	ld de, wDecompressScratch + 7 * 7 tiles
	ld c, 7 * 7
.got_dims
	; Get animation size (total tiles - base sprite size)
	ld a, [sEnemyFrontpicTileCount]
	sub c
	ret z ; Return if there are no animation tiles
	ld c, a
	push hl
	push bc
	call LoadFrontpicTiles
	pop bc
	pop hl
	ld de, wDecompressScratch
	ldh a, [hROMBank]
	ld b, a
	; If we can load it in a single pass, just do it
	ld a, c
	sub 128 - 7 * 7
	jr c, .finish
	; Otherwise, load the first part...
	inc a
	ld [sEnemyFrontpicTileCount], a
	ld c, 127 - 7 * 7
	call Get2bpp
	; ...then load the rest into vTiles4
	ld de, wDecompressScratch + (127 - 7 * 7) tiles
	ld hl, vTiles4
	ldh a, [hROMBank]
	ld b, a
	ld a, [sEnemyFrontpicTileCount]
	ld c, a
.finish
	jp Get2bpp

LoadFrontpicTiles:
	ld hl, wDecompressScratch
	swap c
	ld a, c
	and $f
	ld b, a
	ld a, c
	and $f0
	ld c, a
	push bc
	call LoadOrientedFrontpic
	pop bc
	ld a, c
	and a
	jr z, .handle_loop
	inc b
	jr .handle_loop
.loop
	push bc
	ld c, 0
	call LoadOrientedFrontpic
	pop bc
.handle_loop
	dec b
	jr nz, .loop
	ret

GetMonBackpic:
	ld a, [wCurPartySpecies]
	call IsAPokemon
	ret c

	ld a, [wCurPartySpecies]
	ld b, a
	ld a, [wUnownLetter]
	ld c, a
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	push de

	ld hl, PokemonPicPointers
	ld a, b
	ld d, BANK(PokemonPicPointers)
	cp UNOWN
	jr nz, .check_pikachu
	ld hl, UnownPicPointers
	ld a, c
	ld d, BANK(UnownPicPointers)
	jr .ok
.check_pikachu
	cp PIKACHU
	jr nz, .ok
	ld hl, wBattleMonDVs
	predef GetPikachuForm
	ld hl, PikachuPicPointers
	ld a, [wPikachuForm]
	ld d, BANK(PikachuPicPointers)
.ok
	dec a
	ld bc, 6
	call AddNTimes
	ld bc, 3
	add hl, bc
	ld a, d
	call GetFarByte
	push af
	inc hl
	ld a, d
	call GetFarWord
	ld de, wDecompressScratch
	pop af
	call FarDecompress
	ld hl, wDecompressScratch
	ld c, 6 * 6
	call FixBackpicAlignment
	pop hl
	ld de, wDecompressScratch
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ldh [rSVBK], a
	ret

GetTrainerPic:
	ld a, [wTrainerClass]
	and a
	ret z
	cp NUM_TRAINER_CLASSES + 1
	ret nc
	call WaitBGMap
	xor a
	ldh [hBGMapMode], a
	ld hl, TrainerPicPointers
	ld a, [wTrainerClass]
	dec a
	ld bc, 3
	call AddNTimes
	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a
	push de
	ld a, BANK(TrainerPicPointers)
	call GetFarByte
	push af
	inc hl
	ld a, BANK(TrainerPicPointers)
	call GetFarWord
	pop af
	ld de, wDecompressScratch
	call FarDecompress
	pop hl
	ld de, wDecompressScratch
	ld c, 7 * 7
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp
	pop af
	ldh [rSVBK], a
	call WaitBGMap
	ld a, 1
	ldh [hBGMapMode], a
	ret

DecompressGet2bpp:
; Decompress lz data from b:hl to wDecompressScratch, then copy it to address de.

	ldh a, [rSVBK]
	push af
	ld a, BANK(wDecompressScratch)
	ldh [rSVBK], a

	push de
	push bc
	ld a, b
	ld de, wDecompressScratch
	call FarDecompress
	pop bc
	ld de, wDecompressScratch
	pop hl
	ldh a, [hROMBank]
	ld b, a
	call Get2bpp

	pop af
	ldh [rSVBK], a
	ret

FixBackpicAlignment:
	push de
	push bc
	ld a, [wBoxAlignment]
	and a
	jr z, .keep_dims
	ld a, c
	cp 7 * 7
	ld de, 7 * 7 tiles
	jr z, .got_dims
	cp 6 * 6
	ld de, 6 * 6 tiles
	jr z, .got_dims
	ld de, 5 * 5 tiles

.got_dims
	ld a, [hl]
	ld b, 0
	ld c, 8
.loop
	rra
	rl b
	dec c
	jr nz, .loop
	ld a, b
	ld [hli], a
	dec de
	ld a, e
	or d
	jr nz, .got_dims

.keep_dims
	pop bc
	pop de
	ret

PadFrontpic:
; pads frontpic to fill 7x7 box
	ld a, b
	cp 6
	jr z, .six
	cp 5
	jr z, .five

.seven_loop
	ld c, 7 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .seven_loop
	ret

.six
	ld c, 7 << 4
	xor a
	call .Fill
.six_loop
	ld c, (7 - 6) << 4
	xor a
	call .Fill
	ld c, 6 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .six_loop
	ret

.five
	ld c, 7 << 4
	xor a
	call .Fill
.five_loop
	ld c, (7 - 5) << 4
	xor a
	call .Fill
	ld c, 5 << 4
	call LoadOrientedFrontpic
	dec b
	jr nz, .five_loop
	ld c, 7 << 4
	xor a
	call .Fill
	ret

.Fill:
	ld [hli], a
	dec c
	jr nz, .Fill
	ret

LoadOrientedFrontpic:
	ld a, [wBoxAlignment]
	and a
	jr nz, .x_flip
.left_loop
	ld a, [de]
	inc de
	ld [hli], a
	dec c
	jr nz, .left_loop
	ret

.x_flip
	push bc
.right_loop
	ld a, [de]
	inc de
	ld b, a
	xor a
rept 8
	rr b
	rla
endr
	ld [hli], a
	dec c
	jr nz, .right_loop
	pop bc
	ret
