BattleCommand_SkillSwap:
	call GetTargetAbility
	cp NEUTRAL_GAS
	jr z, .NoSwap
	cp DISGUISE
	jr z, .NoSwap
	cp NO_ABILITY
	jr z, .NoSwap

	push af
	call GetUserAbility
	ld [wEnemyAbility], a
	pop af
	ld [wPlayerAbility], a
	farcall AnimateCurrentMove
	ld hl, SkillSwapText
	jp StdBattleTextbox

.NoSwap
	farcall FailMove
	ret
