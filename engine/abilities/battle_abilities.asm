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
