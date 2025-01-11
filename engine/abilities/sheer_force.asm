BattleCommand_SheerForce:
	call GetUserAbility
	cp SHEER_FORCE
	ret nz

	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	ld hl, SheerForceEffects
	ld de, 1
	call IsInArray
	jr c, .SheerForceEffectRemoval
	ret

.SheerForceEffectRemoval:
	farcall EndMoveEffect
	ret

SheerForceEffectCheck:
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	ld hl, SheerForceEffects
	ld de, 1
	call IsInArray
	ret
