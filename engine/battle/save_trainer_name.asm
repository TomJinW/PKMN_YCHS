SaveTrainerName:
	ld hl, TrainerNamePointers
	ld a, [wTrainerClass]
	dec a
	ld c, a
	ld b, 0
	add hl, bc
	add hl, bc
	ld a, [hli]
	ld h, [hl]
	ld l, a
	ld de, wcd6d
.CopyCharacter
	ld a, [hli]
	ld [de], a
	inc de
	cp "@"
	jr nz, .CopyCharacter
	ret

TrainerNamePointers:
; what is the point of these?
	dw YoungsterName
	dw BugCatcherName
	dw LassName
	dw wTrainerName
	dw JrTrainerMName
	dw JrTrainerFName
	dw PokemaniacName
	dw SuperNerdName
	dw wTrainerName
	dw wTrainerName
	dw BurglarName
	dw EngineerName
	dw JugglerXName
	dw wTrainerName
	dw SwimmerName
	dw wTrainerName
	dw wTrainerName
	dw BeautyName
	dw PsychicName
	dw RockerName
	dw JugglerName
	dw wTrainerName
	dw wTrainerName
	dw BlackbeltName
	dw wTrainerName
	dw ProfOakName
	dw ChiefName
	dw ScientistName
	dw wTrainerName
	dw RocketName
	dw CooltrainerMName
	dw CooltrainerFName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName
	dw wTrainerName

YoungsterName:
	db "短裤@"
BugCatcherName:
	db "捕虫@"
LassName:
	db "迷你裙@"
JrTrainerMName:
	db "童子军@"
JrTrainerFName:
	db "女童军@"
PokemaniacName:
	db "怪兽狂@"
SuperNerdName:
	db "理科男@"
BurglarName:
	db "打劫者@"
EngineerName:
	db "电工@"
JugglerXName:
	db "艺人@"
SwimmerName:
	db "泳裤@"
BeautyName:
	db "大姐姐@"
PsychicName:
	db "能力者@"
RockerName:
	db "摇滚团@"
JugglerName:
	db "艺人@"
BlackbeltName:
	db "空手道@"
ProfOakName:
	db "大木@"
ChiefName:
	db "经理@"
ScientistName:
	db "研究员@"
RocketName:
	db "火箭队@"
CooltrainerMName:
	db "精英@"
CooltrainerFName:
	db "精英@"
