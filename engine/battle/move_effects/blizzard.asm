BattleCommand_BlizzardAccuracy:
; blizzardaccuracy

	call CheckNeutralGas
	jr z, .SkipCloudNine
	call CheckCloudNine
	ret z
.SkipCloudNine
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	and TYPE_MASK
	inc hl
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	jr z, .hail
	cp WEATHER_SUN
	ret nz
	ld [hl], 50 percent + 1
	ret

.hail
	; Redundant with CheckHit guranteeing hit
	ld [hl], 100 percent
	ret
