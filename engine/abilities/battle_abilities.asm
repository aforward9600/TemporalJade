SetPlayerAbility::
	ld a, [wCurBattleMon]
	ld hl, wPartyMon1CaughtAbility
	call GetPartyLocation
	ld a, [wBattleMonSpecies]
	ld c, a
	call GetAbility
	ld [wPlayerAbility], a
	ret

SetEnemyAbility::
	ld a, [wEnemyMonSpecies]
	ld c, a
	ld hl, wEnemyMonAbility
	call GetAbility
	ld [wEnemyAbility], a
	ret

SentOutAbilityBoth::
	ld a, [wEnemyAbility]
	cp INTIMIDATE
	jr z, .EnemyIntimidate
	ld a, [wPlayerAbility]
	cp INTIMIDATE
	jr z, .PlayerIntimidate
	ret

.EnemyIntimidate
	farcall BattleCommand_SwitchTurn
	ld a, [wPlayerAbility]
	ld hl, NoIntimidateAbilities
	ld de, 1
	call IsInArray
	jr c, .EnemyIntimidateBlocked
	farcall BattleCommand_AttackDown
	ld hl, BattleText_IntimidateText
	call StdBattleTextbox
	farcall BattleCommand_SwitchTurn
.PlayerIntimidate
	ld a, [wPlayerAbility]
	cp INTIMIDATE
	jr nz, .DoNotIntimidate
	ld a, [wEnemyAbility]
	ld hl, NoIntimidateAbilities
	ld de, 1
	call IsInArray
	jr c, .PlayerIntimidateBlocked
	farcall BattleCommand_AttackDown
	ld hl, BattleText_IntimidateText
	call StdBattleTextbox
.DoNotIntimidate
	ret

.EnemyIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	farcall BattleCommand_SwitchTurn
	ret

.PlayerIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	ret

SentOutAbility::
	ldh a, [hBattleTurn]
	and a
	jr z, .CheckPlayerAbility
	ld a, [wEnemyAbility]
	cp INTIMIDATE
	jr z, .intimdate
	ret

.CheckPlayerAbility
	ld a, [wPlayerAbility]
	cp INTIMIDATE
	jr z, .intimdate
	ret

.intimdate:
	ld hl, NoIntimidateAbilities
	ld de, 1
	call IsInArray
	jr c, .IntimidateBlocked
	farcall BattleCommand_AttackDown
	ld hl, BattleText_IntimidateText
	call StdBattleTextbox
	ret

.IntimidateBlocked
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	ret

CheckContactAbilities:
	call GetTargetAbility
	cp CURSED_BODY
	jr z, .cursedbody
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVar
	ld b, a
	push hl
	ld hl, ContactMoves
	farcall CheckMoveInList
	pop hl
	ret nz
	call GetUserAbility
	cp POISON_TOUCH
	jr z, .PoisonTouch
	cp LONG_REACH
	ret z
.ReconveneContact:
	call GetTargetAbility
	ld de, 3
	ld hl, .ContactAbilities
	call IsInArray
	jp nc, .NoContactAilities
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.PoisonTouch:
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_PoisonTarget
	jr .ReconveneContact

.cursedbody:
	call GetUserAbility
	cp LONG_REACH
	ret z
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_Disable
	farcall BattleCommand_SwitchTurn
	call GetUserAbility
	cp POISON_TOUCH
	jr z, .PoisonTouch
	ret

.ContactAbilities:
	dbw STATIC,       .Static
	dbw POISON_POINT, .PoisonPoint
	dbw FLAME_BODY,   .FlameBody
	dbw MUMMY,        .Mummy
	dbw WANDERSPIRIT, .WanderSpirit
	dbw ROUGH_SKIN,   .RoughSkin
	dbw IRON_BARBS,   .IronBarbs
	dbw CUTE_CHARM,   .CuteCharm
	dbw EFFECT_SPORE, .EffectSpore
	dbw GOOEY,        .Gooey
	dbw PERISH_BODY,  .PerishBody
	dbw AFTERMATH,    .Aftermath
	db -1

.Static
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_ParalyzeTarget
	farcall BattleCommand_SwitchTurn
	ret

.PoisonPoint:
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_PoisonTarget
	farcall BattleCommand_SwitchTurn
	ret

.FlameBody:
	ld hl, wBattleMonType1
	ldh a, [hBattleTurn]
	and a
	jr z, .GotPlayerType
	ld hl, wEnemyMonType1
.GotPlayerType
	ld a, [hli]
	cp FIRE
	ret z
	ld a, [hl]
	cp FIRE
	ret z
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_BurnTarget
	farcall BattleCommand_SwitchTurn
	ret

.EffectSpore:
	farcall BattleCommand_SwitchTurn
	call BattleRandom
	cp 30 percent + 1
	ret nc
	call BattleRandom
	cp 33 percent + 1
	jr c, .EffectSporePoison
	call BattleRandom
	cp 50 percent + 1
	jr c, .EffectSporeSleep
	farcall BattleCommand_ParalyzeTarget
	jr .FinishEffectSpore

.EffectSporePoison:
	farcall BattleCommand_PoisonTarget
	jr .FinishEffectSpore

.EffectSporeSleep:
	farcall BattleCommand_SleepHit
.FinishEffectSpore:
	farcall BattleCommand_SwitchTurn
	ret

.RoughSkin:
	farcall GetEighthMaxHP
	farcall SubtractHPFromUser
	ld hl, BattleText_RoughSkin
	jp StdBattleTextbox

.IronBarbs:
	farcall GetEighthMaxHP
	farcall SubtractHPFromUser
	ld hl, IronBarbsText
	jp StdBattleTextbox

.PerishBody:
	ld hl, wPlayerSubStatus1
	ld de, wEnemySubStatus1
	bit SUBSTATUS_PERISH, [hl]
	jr z, .ok

	ld a, [de]
	bit SUBSTATUS_PERISH, a
	jp nz, .NoContactAilities

.ok:
	bit SUBSTATUS_PERISH, [hl]
	jr nz, .enemy

	set SUBSTATUS_PERISH, [hl]
	ld a, 4
	ld [wPlayerPerishCount], a

.enemy
	ld a, [de]
	bit SUBSTATUS_PERISH, a
	jr nz, .done

	set SUBSTATUS_PERISH, a
	ld [de], a
	ld a, 4
	ld [wEnemyPerishCount], a

.done
	ld de, PERISH_SONG
	farcall FarPlayBattleAnimation
	ld hl, StartPerishText
	jp StdBattleTextbox

.Aftermath:
	call GetUserAbility
	cp DAMP
	ret z
	farcall BattleCommand_SwitchTurn
	farcall HasUserFainted
	ret nz
	farcall BattleCommand_SwitchTurn
	farcall GetQuarterMaxHP
	farcall SubtractHPFromUser
	ld hl, AftermathText
	jp StdBattleTextbox

.CuteCharm:
	call BattleRandom
	cp 30 percent + 1
	ret nc
	call GetUserAbility
	cp OBLIVIOUS
	ret z
	farcall BattleCommand_SwitchTurn
	farcall CheckOppositeGender
	jp c, .NoContactAilities
	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_IN_LOVE, [hl]
	jp nz, .NoContactAilities
	set SUBSTATUS_IN_LOVE, [hl]
	farcall BattleCommand_SwitchTurn
	ld de, ANIM_IN_LOVE
	farcall FarPlayBattleAnimation
	ld hl, CuteCharmText
	jp StdBattleTextbox

.Gooey:
	call GetUserAbility
	cp CLEAR_BODY
	ret z
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpeedDown
	farcall BattleCommand_SwitchTurn
	ld hl, GooeyText
	jp StdBattleTextbox

.Mummy:
	call GetUserAbility
	cp DISGUISE
	ret z
	cp MUMMY
	ret z
	call GetTargetAbility
	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerMummy
	pop af
	ld [wEnemyAbility], a
	jr .FinishMummy

.PlayerMummy:
	pop af
	ld [wPlayerAbility], a
.FinishMummy:
	ld hl, MummyText
	jp StdBattleTextbox

.WanderSpirit:
	call GetUserAbility
	cp NEUTRAL_GAS
	ret z
	cp DISGUISE
	ret z
	cp NO_ABILITY
	ret z

	push af
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerWanderSpirit
	call GetTargetAbility
	ld [wEnemyAbility], a
	pop af
	ld [wPlayerAbility], a
	jr .FinishWanderSpirit

.PlayerWanderSpirit:
	call GetTargetAbility
	ld [wPlayerAbility], a
	pop af
	ld [wEnemyAbility], a
.FinishWanderSpirit:
	ld hl, SkillSwapText
	jp StdBattleTextbox

.NoContactAilities:
	ret
