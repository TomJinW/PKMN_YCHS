PrintStatusAilment:
	ld a, [de]
	ld de, 0
	bit PSN, a
	jr nz, .end
	inc e
	bit BRN, a
	jr nz, .end
	inc e
	bit FRZ, a
	jr nz, .end
	inc e
	bit PAR, a
	jr nz, .end
	inc e
	and SLP
	jr nz, .end
	ret ; ret zero
.end
	push hl
	ld hl, .StatusText
	add hl, de
	add hl, de
	add hl, de
	ld d, h
	ld e, l
	pop hl
	call PlaceString
	rlca ; ret nozero
	ret

.StatusText
	db $C4, $C5, $50 ; 中毒
	db $C6, $C7, $50 ; 灼伤
	db $C8, $C9, $50 ; 冰冻
	db $CA, $CB, $50 ; 麻痹
	db $C2, $C3, $50 ; 睡眠
	db $50
