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
	cp NEUTRAL_GAS
	jp z, EnemyNeutralGas
	ld a, [wPlayerAbility]
	cp NEUTRAL_GAS
	jp z, PlayerNeutralGas
	ld de, wBattleMonSpeed
	ld hl, wEnemyMonSpeed
	ld c, 2
	call CompareBytes
	jr z, .speed_tie
	jr nc, .player_goes_first
.enemy_goes_first
	call EnemyAbilityFirst
	call PlayerAbilityFirst
	ret

.player_goes_first
	call PlayerAbilityFirst
	call EnemyAbilityFirst
	ret

.speed_tie
	call BattleRandom
	cp 50 percent + 1
	jr c, .player_goes_first
	jr .enemy_goes_first

EnemyAbilityFirst:
	ld a, [wEnemyAbility]
	ld de, 3
	ld hl, .FirstAbilities
	call IsInArray
	jp nc, .NoFirstAbility
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.FirstAbilities:
	dbw INTIMIDATE,   .EnemyIntimidate
	dbw TRACE,        .EnemyTrace
	dbw MOLD_BREAKER, .EnemyMoldBreaker
	dbw PRESSURE,     .EnemyPressure
	dbw SCREEN_CLEAN, .EnemyScreenClean
	dbw FRISK,        .EnemyFrisk
	dbw UNNERVE,      .EnemyUnnerve
	dbw SLOW_START,   .EnemySlowStart
	dbw CLOUD_NINE,   .EnemyCloudNine
	dbw DROUGHT,      .EnemyDrought
	dbw SNOW_WARNING, .EnemySnowWarning
	dbw DRIZZLE,      .EnemyDrizzle
	dbw SANDSTREAM,   .EnemySandstream
	db -1

.EnemyIntimidate:
	farcall BattleCommand_SwitchTurn
	call EnemyIntimidate
	farcall BattleCommand_SwitchTurn
	ret

.EnemyTrace:
	farcall BattleCommand_SwitchTurn
	call EnemyTrace
	farcall BattleCommand_SwitchTurn
	ret

.EnemyMoldBreaker:
	farcall BattleCommand_SwitchTurn
	call MoldBreakerAbilityText
	farcall BattleCommand_SwitchTurn
	ret

.EnemyPressure:
	farcall BattleCommand_SwitchTurn
	call PressureAbility
	farcall BattleCommand_SwitchTurn
	ret

.EnemyScreenClean:
	farcall BattleCommand_SwitchTurn
	call ScreenClean
	farcall BattleCommand_SwitchTurn
	ret

.EnemyFrisk:
	farcall BattleCommand_SwitchTurn
	call FriskAbility
	farcall BattleCommand_SwitchTurn
	ret

.EnemyUnnerve:
	farcall BattleCommand_SwitchTurn
	call UnnerveAbility
	farcall BattleCommand_SwitchTurn
	ret

.EnemySlowStart:
	farcall BattleCommand_SwitchTurn
	call EnemySlowStart
	farcall BattleCommand_SwitchTurn
	ret

.EnemyCloudNine:
	jp CloudNineAbility

.EnemyDrought:
	jp DroughtScript

.EnemySnowWarning:
	jp SnowWarningScript

.EnemyDrizzle:
	jp DrizzleScript

.EnemySandstream:
	call SandstreamScript
.NoFirstAbility:
	ret

PlayerAbilityFirst:
	ld a, [wPlayerAbility]
	ld de, 3
	ld hl, .FirstAbilities
	call IsInArray
	jp nc, .NoPlayerFirstAbility
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.FirstAbilities:
	dbw INTIMIDATE,   .PlayerIntimidate
	dbw TRACE,        .PlayerTrace
	dbw MOLD_BREAKER, .PlayerMoldBreaker
	dbw PRESSURE,     .PlayerPressure
	dbw SCREEN_CLEAN, .PlayerScreenClean
	dbw FRISK,        .PlayerFrisk
	dbw UNNERVE,      .PlayerUnnerve
	dbw SLOW_START,   .PlayerSlowStart
	dbw CLOUD_NINE,   .PlayerCloudNine
	dbw DROUGHT,      .PlayerDrought
	dbw SNOW_WARNING, .PlayerSnowWarning
	dbw DRIZZLE,      .PlayerDrizzle
	dbw SANDSTREAM,   .PlayerSandstream
	db -1

.PlayerIntimidate:
	jp PlayerIntimidate

.PlayerTrace:
	jp PlayerTrace

.PlayerMoldBreaker:
	jp MoldBreakerAbilityText

.PlayerPressure:
	jp PressureAbility

.PlayerScreenClean:
	jp ScreenClean

.PlayerFrisk:
	jp FriskAbility

.PlayerUnnerve:
	jp UnnerveAbility

.PlayerSlowStart:
	jp PlayerSlowStart

.PlayerCloudNine:
	jp CloudNineAbility

.PlayerDrought:
	jp DroughtScript

.PlayerSnowWarning:
	jp SnowWarningScript

.PlayerDrizzle:
	jp DrizzleScript

.PlayerSandstream:
	call SandstreamScript
.NoPlayerFirstAbility:
	ret

EnemyNeutralGas:
	farcall BattleCommand_SwitchTurn
	ld hl, NeutralGasText
	call StdBattleTextbox
	farcall BattleCommand_SwitchTurn
	ret

PlayerNeutralGas:
	ld hl, NeutralGasText
	jp StdBattleTextbox

EnemyIntimidate:
	ld a, [wPlayerAbility]
	ld hl, NoIntimidateAbilities
	ld de, 1
	call IsInArray
	jr c, .EnemyIntimidateBlocked
	farcall BattleCommand_AttackDown
	ld hl, BattleText_IntimidateText
	call StdBattleTextbox
	ret

.EnemyIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	ret

PlayerIntimidate:
	ld a, [wEnemyAbility]
	ld hl, NoIntimidateAbilities
	ld de, 1
	call IsInArray
	jr c, .PlayerIntimidateBlocked
	farcall BattleCommand_AttackDown
	ld hl, BattleText_IntimidateText
	call StdBattleTextbox
	ret

.PlayerIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	ret

EnemyTrace:
	ld a, [wPlayerAbility]
	ld hl, NoTraceAbilities
	ld de, 1
	call IsInArray
	jr c, .EnemyTraceBlocked
	ld a, [wPlayerAbility]
	ld [wEnemyAbility], a
	ld hl, TraceText
	call StdBattleTextbox
	ld a, [wEnemyAbility]
	cp SLOW_START
	jp z, EnemySlowStart
	ret

.EnemyTraceBlocked:
	ret

PlayerTrace:
	ld a, [wEnemyAbility]
	ld hl, NoTraceAbilities
	ld de, 1
	call IsInArray
	jr c, .PlayerTraceBlocked
	ld a, [wEnemyAbility]
	ld [wPlayerAbility], a
	ld hl, TraceText
	call StdBattleTextbox
	ld a, [wPlayerAbility]
	cp SLOW_START
	jp z, PlayerSlowStart
	ret

.PlayerTraceBlocked:
	ret

DrizzleScript:
	ld a, WEATHER_RAIN
	ld [wBattleWeather], a
	ld a, 5
	ld [wWeatherCount], a
	ld de, ANIM_IN_RAIN
	farcall FarPlayBattleAnimation
	ld hl, DownpourText
	jp StdBattleTextbox

DroughtScript:
	ld a, WEATHER_SUN
	ld [wBattleWeather], a
	ld de, ANIM_IN_SUN
	farcall FarPlayBattleAnimation
	ld hl, SunGotBrightText
	jp StdBattleTextbox

SnowWarningScript:
	ld a, WEATHER_HAIL
	ld [wBattleWeather], a
	ld de, ANIM_IN_HAIL
	farcall FarPlayBattleAnimation
	ld hl, HailStartsText
	jp StdBattleTextbox

SandstreamScript:
	ld a, WEATHER_SANDSTORM
	ld [wBattleWeather], a
	ld de, ANIM_IN_SANDSTORM
	farcall FarPlayBattleAnimation
	ld hl, SandstormBrewedText
	jp StdBattleTextbox

NoTraceAbilities:
	db DISGUISE
	db NEUTRAL_GAS
	db ALCHEMY
	db TRACE
	db -1

MoldBreakerAbilityText:
	ld hl, BattleText_MoldBreaker
	jp StdBattleTextbox

PressureAbility:
	ld hl, PressureText
	jp StdBattleTextbox

ScreenClean:
	ld hl, wEnemyScreens
	ld a, [hl]
	res SCREENS_REFLECT, [hl]
	res SCREENS_LIGHT_SCREEN, [hl]
	call .CheckScreens

.PlayerScreens:
	ld hl, wPlayerScreens
	ld a, [hl]
	res SCREENS_REFLECT, [hl]
	res SCREENS_LIGHT_SCREEN, [hl]
	jp .CheckScreens

.CheckScreens
	push af
	and 1 << SCREENS_REFLECT
	jr z, .reflect_done
.reflect_done
	pop af
	and 1 << SCREENS_LIGHT_SCREEN
	ret z
	ld hl, ScreenCleanText
	jp StdBattleTextbox

UnnerveAbility:
	ld hl, UnnerveText
	jp StdBattleTextbox

FriskAbility:
	farcall GetOpponentItem
	ld a, [hl]
	and a
	ret z
	farcall GetOpponentItem
	ld a, [hl]
	ld [wNamedObjectIndexBuffer], a
	call GetItemName
	ld hl, FriskText
	jp StdBattleTextbox

EnemySlowStart:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_SLOW_START, [hl]
	ld a, 5
	ld [wEnemySlowStartCount], a
	ld hl, SlowStartText
	jp StdBattleTextbox

PlayerSlowStart:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_SLOW_START, [hl]
	ld a, 5
	ld [wPlayerSlowStartCount], a
	ld hl, SlowStartText
	jp StdBattleTextbox

CloudNineAbility:
	ld hl, CloudNineText
	jp StdBattleTextbox

SentOutAbility::
	call CheckNeutralGas
	cp NEUTRAL_GAS
	jp z, PlayerNeutralGas
	ldh a, [hBattleTurn]
	and a
	jr z, .CheckPlayerAbility
	ld a, [wEnemyAbility]
	jr .GotEnemyAbility

.CheckPlayerAbility
	ld a, [wPlayerAbility]
.GotEnemyAbility
	ld de, 3
	ld hl, .EitherFirstAbilities
	call IsInArray
	jp nc, .NoPlayerFirstAbility
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.EitherFirstAbilities:
	dbw INTIMIDATE,   .EitherIntimidate
	dbw TRACE,        .EitherTrace
	dbw MOLD_BREAKER, .EitherMoldBreaker
	dbw PRESSURE,     .EitherPressure
	dbw SCREEN_CLEAN, .EitherScreenClean
	dbw FRISK,        .EitherFrisk
	dbw UNNERVE,      .EitherUnnerve
	dbw SLOW_START,   .EitherSlowStart
	dbw CLOUD_NINE,   .EitherCloudNine
	dbw DROUGHT,      .EitherDrought
	dbw SNOW_WARNING, .EitherSnowWarning
	dbw DRIZZLE,      .EitherDrizzle
	dbw SANDSTREAM,   .EitherSandstream
	db -1

.EitherIntimidate:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerIntimidate
	jp EnemyIntimidate

.PlayerIntimidate:
	jp PlayerIntimidate

.EitherTrace:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerTrace
	jp EnemyTrace

.PlayerTrace:
	jp PlayerTrace

.EitherMoldBreaker:
	jp MoldBreakerAbilityText

.EitherPressure:
	jp PressureAbility

.EitherScreenClean:
	jp ScreenClean

.EitherFrisk:
	jp FriskAbility

.EitherUnnerve:
	jp UnnerveAbility

.EitherSlowStart:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerSlowStart
	jp EnemySlowStart

.PlayerSlowStart:
	jp PlayerSlowStart

.EitherCloudNine:
	jp CloudNineAbility

.EitherDrought:
	jp DroughtScript

.EitherSnowWarning:
	jp SnowWarningScript

.EitherDrizzle:
	jp DrizzleScript

.EitherSandstream:
	call SandstreamScript
.NoPlayerFirstAbility:
	ret

CheckContactAbilities:
	call CheckNeutralGas
	cp NEUTRAL_GAS
	ret z
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
	call GetUserAbility
	cp OVERCOAT
	ret z
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
	ld de, ANIM_PERISH_BODY
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
