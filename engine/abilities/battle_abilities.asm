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
	call GetTargetAbility
	cp RATTLED
	ret nz
	call RattledAbility
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
	call GetTargetAbility
	cp RATTLED
	ret nz
	jp RattledAbility

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

RattledAbility:
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpeedUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	ld hl, RattledText
	jp StdBattleTextbox

SentOutAbility::
	call CheckNeutralGas
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
	ret z
	call GetTargetAbility
	cp CURSED_BODY
	jr z, .cursedbody
	cp RATTLED
	jr z, .rattled
.AfterCursedBody
	ld a, BATTLE_VARS_LAST_MOVE
	call GetBattleVar
	ld b, a
	ld hl, ContactMoves
	call CheckMoveInListAbilities
	ret nc
	call GetUserAbility
	cp POISON_TOUCH
	jr z, .PoisonTouch
	cp STENCH
	jr z, .Stench
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
	call GetTargetAbility
	cp SHIELD_DUST
	jr z, .ReconveneContact
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_PoisonTarget
	jr .ReconveneContact

.Stench:
	call GetTargetAbility
	cp SHIELD_DUST
	jr z, .ReconveneContact
	call BattleRandom
	cp 10 percent + 1
	ret nc
	farcall BattleCommand_FlinchTarget
	jr .ReconveneContact

.cursedbody:
	call BattleRandom
	cp 30 percent + 1
	ret nc
	farcall BattleCommand_SwitchTurn
	farcall CursedBodyAbility
	farcall BattleCommand_SwitchTurn
	jr .AfterCursedBody

.rattled:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp BUG
	jr z, .ActivateRattle
	cp DARK
	jr z, .ActivateRattle
	cp GHOST
	ret nz
.ActivateRattle
	jp RattledAbility

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
	dbw WEAK_ARMOR,   .WeakArmor
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
	ld de, .RoughSkinName
	call .Copy
	ld hl, IronBarbsText
	jp StdBattleTextbox

.IronBarbs:
	farcall GetEighthMaxHP
	farcall SubtractHPFromUser
	ld de, .IronBarbsName
	call .Copy
	ld hl, IronBarbsText
	jp StdBattleTextbox

.Copy
	ld hl, wStringBuffer1
	jp CopyName2

.IronBarbsName:
	db "Iron Barbs@"
.RoughSkinName:
	db "Rough Skin@"

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

.WeakArmor:
	ldh a, [hBattleTurn]
	and a
	jr z, .HasEnemyFainted
	farcall HasPlayerFainted
	ret z
.ContinueWeakArmor
	farcall BattleCommand_DefenseDown
	ld a, [wAttackMissed]
	and a
	jr nz, .TrySpeedUp
	ld hl, WeakArmorDefenseText
	call StdBattleTextbox
.TrySpeedUp
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpeedUp2
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	ld hl, WeakArmorSpeedText
	jp StdBattleTextbox

.HasEnemyFainted:
	farcall HasEnemyFainted
	ret z
	jr .ContinueWeakArmor

.NoContactAilities:
	ret

HandleEndMoveAbility:
	ld de, wBattleMonSpeed
	ld hl, wEnemyMonSpeed
	ld c, 2
	call CompareBytes
	jr z, .speed_tie
	jr nc, .player_goes_first
.enemy_goes_first
	call SetEnemyTurn
	call .do_it
	call SetPlayerTurn
	jr .do_it

.speed_tie
	call BattleRandom
	cp 50 percent + 1
	jr c, .player_goes_first
	jr .enemy_goes_first

.player_goes_first
	call SetPlayerTurn
	call .do_it
	call SetEnemyTurn

.do_it
	call CheckNeutralGas
	ret z
	call GetUserAbility
	ld de, 3
	ld hl, .EndTurnAbilities
	call IsInArray
	jp nc, .NoEndTurnAbilities
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.EndTurnAbilities:
	dbw RAIN_DISH,       .RainDish
	dbw DRY_SKIN,        .DrySkin
	dbw SPEED_BOOST,     .SpeedBoost
	dbw SHED_SKIN,       .ShedSkin
	dbw TRUANT,          .Truant
	dbw HYDRATION,       .Hydration
	db -1

.Hydration:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	ret nz
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	cp 0
	ret z
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	ld a, [hl]
	ld [hl], 0
	ld hl, HydrationText
	jp StdBattleTextbox

.RainDish:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	ret nz
	ld de, .RainDishName
	call .Copy
	call CheckFullHPAbilities
	ret

.DrySkin:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	jr z, .DrySkinRain
	cp WEATHER_SUN
	ret nz
	farcall GetEighthMaxHP
	farcall SubtractHPFromUser
	ld hl, DrySkinHurtText
	jp StdBattleTextbox

.DrySkinRain:
	ld de, .DrySkinName
	call .Copy
	call CheckFullHPAbilities
	ret

.Copy
	ld hl, wStringBuffer1
	jp CopyName2

.RainDishName:
	db "Rain Dish@"
.DrySkinName:
	db "Dry Skin@"

.SpeedBoost:
	push bc
	farcall BattleCommand_SpeedUp
	pop bc
	ld a, [wAttackMissed]
	and a
	ret nz
	ld hl, SpeedBoostText
	jp StdBattleTextbox

.ShedSkin:
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	cp 0
	ret z
	call BattleRandom
	cp 30 percent + 1
	ret nc
	ld a, BATTLE_VARS_STATUS
	call GetBattleVarAddr
	ld a, [hl]
	ld [hl], 0
	ld hl, ShedSkinText
	jp StdBattleTextbox

.Truant:
	ld a, [wPlayerAbility]
	cp TRUANT
	ret nz
	ld hl, wPlayerSubStatus3
	bit SUBSTATUS_TRUANT, [hl]
	jr nz, .ResetPlayerTruant
	set SUBSTATUS_TRUANT, [hl]
.CheckEnemyTruant:
	ld a, [wEnemyAbility]
	cp TRUANT
	ret nz
	ld hl, wEnemySubStatus3
	bit SUBSTATUS_TRUANT, [hl]
	jr nz, .ResetEnemyTruant
	set SUBSTATUS_TRUANT, [hl]
	ret

.ResetPlayerTruant:
	ld hl, wPlayerSubStatus3
	res SUBSTATUS_TRUANT, [hl]
	jr .CheckEnemyTruant
.ResetEnemyTruant:
	ld hl, wEnemySubStatus3
	res SUBSTATUS_TRUANT, [hl]
.NoEndTurnAbilities:
	ret

CheckFullHPAbilities:
	ld hl, wBattleMonHP
	ldh a, [hBattleTurn]
	and a
	jr z, .got_hp
	ld hl, wEnemyMonHP

.got_hp
; Don't restore if we're already at max HP
	ld a, [hli]
	ld b, a
	ld a, [hli]
	ld c, a
	ld a, [hli]
	cp b
	jr nz, .restore
	ld a, [hl]
	cp c
	ret z

.restore
	farcall GetEighthMaxHP
	farcall SwitchTurnCore
	farcall RestoreHP
	farcall SwitchTurnCore
	ld hl, RainDishText
	jp StdBattleTextbox

CheckBoostingAbilities:
	call CheckNeutralGas
	ret z
	call GetUserAbility
	ld de, 3
	ld hl, .BoostingAbilities
	call IsInArray
	jp nc, .NoBoostingAbilities
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.BoostingAbilities:
	dbw GUTS,            .Guts
	dbw SHARPNESS,       .Sharpness
	dbw OVERGROW,        .Overgrow
	dbw BLAZE,           .Blaze
	dbw TORRENT,         .Torrent
	dbw RECKLESS,        .Reckless
	dbw SAND_FORCE,      .SandForce
	dbw IRON_FIST,       .IronFist
	dbw SWARM,           .Swarm
	dbw TECHNICIAN,      .Technician
	dbw RIVALRY,         .Rivalry
	dbw HUSTLE,          .Hustle
	dbw PIXILATE,        .Pixilate
	dbw HUGE_POWER,      .HugePower
	dbw REFRIGERATE,     .Refrigerate
	dbw GALVANIZE,       .Galvanize
	dbw ANALYTIC,        .Analytic
	db -1

.Guts:
	ld a, BATTLE_VARS_STATUS
	call GetBattleVar
	and 1 << PSN | 1 << BRN | 1 << PAR
	ret z
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	cp SPECIAL
	ret nc
	jp FiftyPercentBoost

.IronFist:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerIronFist
	ld a, [wCurEnemyMove]
	jr .FinishIronFist

.PlayerIronFist
	ld a, [wCurPlayerMove]
.FinishIronFist
	ld hl, PunchingMoves
	call CheckMoveInListAbilities
	ret nc
	jp TwentyPercentBoost

.SandForce:
	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	ret nz
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp ROCK
	jr z, .SandForceBoost
	cp GROUND
	jr z, .SandForceBoost
	cp STEEL
	ret nz
.SandForceBoost:
	jp ThirtyPercentBoost

.Hustle:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	cp SPECIAL
	ret nc
	jp FiftyPercentBoost

.Reckless:
	ld a, BATTLE_VARS_MOVE_EFFECT
	call GetBattleVar
	cp EFFECT_RECOIL_HIT
	ret nz
	jp TwentyPercentBoost

.Sharpness:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerSharpness
	ld a, [wCurEnemyMove]
	jr .FinishSharpness

.PlayerSharpness
	ld a, [wCurPlayerMove]
.FinishSharpness
	ld hl, SharpnessMoves
	call CheckMoveInListAbilities
	ret nc
	jp FiftyPercentBoost

.Overgrow:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp GRASS
	jr z, .PinchHPCheck
	ret

.Blaze:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp FIRE
	jr z, .PinchHPCheck
	ret
.Torrent:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp WATER
	jr z, .PinchHPCheck
	ret

.Swarm:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp BUG
	jr z, .PinchHPCheck
	ret

.PinchHPCheck:
	call CheckHalfHP
	ret nc
	call FiftyPercentBoost
	ret

.HugePower:
	jp HundredPercentBoost

.Pixilate:
	ld b, FAIRY
	jr .FinishTypeChange
.Refrigerate:
	ld b, ICE
	jr .FinishTypeChange
.Galvanize:
	ld b, ELECTRIC
.FinishTypeChange:
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	cp 0
	ret z
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVarAddr
	and TYPE_MASK
	and a
	ret nz
	ld [hl], b
	jp TwentyPercentBoost

.Technician:
	ld a, BATTLE_VARS_MOVE_POWER
	call GetBattleVar
	cp 60
	jr z, .TechnicianBoost
	jr c, .TechnicianBoost
	ret

.TechnicianBoost:
	jp FiftyPercentBoost

.Rivalry:
	farcall CheckOppositeGender
	ret c
	jr z, TwentyFivePercentBoost
	jp TwentyFivePercentNerf

.Analytic:
	farcall CheckOpponentWentFirst
	jr nz, ThirtyPercentBoost
.NoBoostingAbilities:
	ret

TwentyFivePercentBoost:
	ld a, 25
	jr FinishBoost
HundredPercentBoost:
	ld a, 100
	jr FinishBoost
ThirtyPercentBoost:
	ld a, 30
	jr FinishBoost
TwentyPercentBoost:
	ld a, 20
	jr FinishBoost
FiftyPercentBoost:
	ld a, 50
FinishBoost:
	add 100
	ldh [hMultiplier], a
	call Multiply

	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
	ret

TwentyFivePercentNerf:
	ld a, 75
	ldh [hMultiplier], a
	call Multiply

	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
	ret

EffectiveDefensiveAbilities:
	call GetUserAbility
	cp TINTED_LENS
	jr z, .TintedLens
.ReturnToDefensiveAbilities:
	call GetTargetAbility
	cp SOLID_ROCK
	jr z, .SolidRock
	cp FILTER
	jr z, .SolidRock
	ret

.TintedLens:
	ld a, [wTypeModifier]
	and $7f
	cp 5
	jr nz, .ReturnToDefensiveAbilities
	jp HundredPercentBoost

.SolidRock:
	ld a, [wTypeModifier]
	and $7f
	cp 20
	ret nz
	jp TwentyFivePercentNerf

CheckHalfHP:
	ld de, wBattleMonHP + 1
	ld hl, wBattleMonMaxHP
	ldh a, [hBattleTurn]
	and a
	jr z, .go
	ld de, wEnemyMonHP + 1
	ld hl, wEnemyMonMaxHP

.go
; If, and only if, Pokemon's HP is less than half max, use the item.
; Store current HP in Buffer 3/4
	push bc
	ld a, [de]
	ld [wBuffer3], a
	add a
	ld c, a
	dec de
	ld a, [de]
	inc de
	ld [wBuffer4], a
	adc a
	ld b, a
	ld a, b
	cp [hl]
	ld a, c
	pop bc
	jr z, .equal
	jr c, .less
	ret

.equal
	inc hl
	cp [hl]
	dec hl
	ret nc

.less
	ret

SharpnessMoves:
	dw CROSS_POISON
	dw CUT
	dw RAZOR_LEAF
	dw SLASH
	dw LEAF_BLADE
	dw STEEL_SLICE
	dw -1

INCLUDE "data/moves/punching_moves.asm"

CheckMoveInListAbilities:
	; checks if the move ID in a belongs to a list of moves in hl
	push bc
	push de
	push hl
	call GetMoveIndexFromID
	ld b, h
	ld c, l
	pop hl
	ld de, 2
	call IsInHalfwordArray
	pop de
	pop bc
	ret

HustleCheck:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	cp SPECIAL
	ret nc
	cp STATUS
	ret nc
	ret
