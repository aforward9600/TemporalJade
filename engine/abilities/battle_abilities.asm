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
	ld hl, wEnemyMonAbility
	ld a, [wEnemyMonSpecies]
	ld c, a
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
	dbw INTIMIDATE,       .EnemyIntimidate
	dbw TRACE,            .EnemyTrace
	dbw MOLD_BREAKER,     .EnemyMoldBreaker
	dbw PRESSURE,         .EnemyPressure
	dbw SCREEN_CLEAN,     .EnemyScreenClean
	dbw FRISK,            .EnemyFrisk
	dbw UNNERVE,          .EnemyUnnerve
	dbw SLOW_START,       .EnemySlowStart
	dbw CLOUD_NINE,       .EnemyCloudNine
	dbw DROUGHT,          .EnemyDrought
	dbw SNOW_WARNING,     .EnemySnowWarning
	dbw DRIZZLE,          .EnemyDrizzle
	dbw SANDSTREAM,       .EnemySandstream
	dbw SUPERSWEET_SYRUP, .EnemySupersweetSyrup
	dbw DOWNLOAD,         .EnemyDownload
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
	jp SandstreamScript

.EnemyDownload:
	farcall BattleCommand_SwitchTurn
	call DownloadAbility
	farcall BattleCommand_SwitchTurn
	ret

.EnemySupersweetSyrup:
	farcall BattleCommand_SwitchTurn
	call EnemySupersweetSyrup
	farcall BattleCommand_SwitchTurn
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
	dbw INTIMIDATE,       .PlayerIntimidate
	dbw TRACE,            .PlayerTrace
	dbw MOLD_BREAKER,     .PlayerMoldBreaker
	dbw PRESSURE,         .PlayerPressure
	dbw SCREEN_CLEAN,     .PlayerScreenClean
	dbw FRISK,            .PlayerFrisk
	dbw UNNERVE,          .PlayerUnnerve
	dbw SLOW_START,       .PlayerSlowStart
	dbw CLOUD_NINE,       .PlayerCloudNine
	dbw DROUGHT,          .PlayerDrought
	dbw SNOW_WARNING,     .PlayerSnowWarning
	dbw DRIZZLE,          .PlayerDrizzle
	dbw SANDSTREAM,       .PlayerSandstream
	dbw SUPERSWEET_SYRUP, .PlayerSupersweetSyrup
	dbw DOWNLOAD,         .PlayerDownload
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
	jp SandstreamScript

.PlayerSupersweetSyrup:
	jp PlayerSupersweetSyrup

.PlayerDownload
	call DownloadAbility
.NoPlayerFirstAbility:
	ret

EnemyNeutralGas:
	farcall BattleCommand_SwitchTurn
	call MoveDelayAbility
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
	jp z, RattledAbility
	cp DEFIANT
	ret nz
	jp DefiantAbility

.EnemyIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	call StdBattleTextbox
	ret

EnemySupersweetSyrup:
	ld a, [wPlayerAbility]
	cp CLEAR_BODY
	jr z, .ClearBody
	farcall BattleCommand_EvasionDown
	ld hl, SupersweetSyrupText
	call StdBattleTextbox
	call GetTargetAbility
	cp DEFIANT
	ret nz
	jp DefiantAbility

.ClearBody:
	ld hl, ClearBodyText
	jp StdBattleTextbox

PlayerSupersweetSyrup:
	ld a, [wEnemyAbility]
	cp CLEAR_BODY
	jr z, .ClearBody
	farcall BattleCommand_EvasionDown
	ld hl, SupersweetSyrupText
	call StdBattleTextbox
	call GetTargetAbility
	cp DEFIANT
	ret nz
	jp DefiantAbility

.ClearBody:
	ld hl, ClearBodyText
	jp StdBattleTextbox

DownloadAbility:
	farcall BattleCommand_SpecialAttackUp
	ld hl, DownloadText
	jp StdBattleTextbox

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
	jp z, RattledAbility
	cp DEFIANT
	ret nz
	jp DefiantAbility

.PlayerIntimidateBlocked:
	ld hl, BattleText_AttackNotLowered
	jp StdBattleTextbox

EnemyTrace:
	ld a, [wPlayerAbility]
	ld hl, NoTraceAbilities
	ld de, 1
	call IsInArray
	jr c, .EnemyTraceBlocked
	ld a, [wPlayerAbility]
	ld [wEnemyAbility], a
	call MoveDelayAbility
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
	call MoveDelayAbility
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
	call MoveDelayAbility
	ld hl, BattleText_MoldBreaker
	jp StdBattleTextbox

PressureAbility:
	call MoveDelayAbility
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
	call MoveDelayAbility
	ld hl, ScreenCleanText
	jp StdBattleTextbox

UnnerveAbility:
	call MoveDelayAbility
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
	call MoveDelayAbility
	ld hl, FriskText
	jp StdBattleTextbox

EnemySlowStart:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_SLOW_START, [hl]
	ld a, 5
	ld [wEnemySlowStartCount], a
	farcall CalcEnemyStats
	call MoveDelayAbility
	ld hl, SlowStartText
	jp StdBattleTextbox

PlayerSlowStart:
	ld a, BATTLE_VARS_SUBSTATUS4
	call GetBattleVarAddr
	set SUBSTATUS_SLOW_START, [hl]
	ld a, 5
	ld [wPlayerSlowStartCount], a
	farcall CalcPlayerStats
	call MoveDelayAbility
	ld hl, SlowStartText
	jp StdBattleTextbox

CloudNineAbility:
	call MoveDelayAbility
	ld hl, CloudNineText
	jp StdBattleTextbox

RattledAbility:
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpeedUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, RattledText
	jp StdBattleTextbox

JustifiedAbility:
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_AttackUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, JustifiedText
	jp StdBattleTextbox

DefiantAbility:
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_AttackUp2
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, DefiantText
	jp StdBattleTextbox

DefiantUserAbility:
	farcall BattleCommand_AttackUp2
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, DefiantUserText
	jp StdBattleTextbox

WaterCompactionAbility:
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_DefenseUp2
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, WaterCompactionText
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
	dbw INTIMIDATE,       .EitherIntimidate
	dbw TRACE,            .EitherTrace
	dbw MOLD_BREAKER,     .EitherMoldBreaker
	dbw PRESSURE,         .EitherPressure
	dbw SCREEN_CLEAN,     .EitherScreenClean
	dbw FRISK,            .EitherFrisk
	dbw UNNERVE,          .EitherUnnerve
	dbw SLOW_START,       .EitherSlowStart
	dbw CLOUD_NINE,       .EitherCloudNine
	dbw DROUGHT,          .EitherDrought
	dbw SNOW_WARNING,     .EitherSnowWarning
	dbw DRIZZLE,          .EitherDrizzle
	dbw SANDSTREAM,       .EitherSandstream
	dbw SUPERSWEET_SYRUP, .EitherSupersweetSyrup
	db -1

.EitherIntimidate:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerIntimidate
	jp EnemyIntimidate

.PlayerIntimidate:
	jp PlayerIntimidate

.EitherSupersweetSyrup:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerSupersweetSyrup
	jp EnemySupersweetSyrup

.PlayerSupersweetSyrup:
	jp PlayerSupersweetSyrup

.EitherDownload:
	jp DownloadAbility

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
	cp JUSTIFIED
	jp z, .justified
	cp WATER_COMPACTION
	jp z, .watercompaction
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
	jp nz, .AfterCursedBody
.ActivateRattle
	call RattledAbility
	jp .AfterCursedBody

.justified:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp DARK
	jp nz, .AfterCursedBody
	call JustifiedAbility
	jp .AfterCursedBody

.watercompaction:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp WATER
	jp nz, .AfterCursedBody
	call WaterCompactionAbility
	jp .AfterCursedBody

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
	call StdBattleTextbox
	call GetUserAbility
	cp DEFIANT
	ret nz
	jp DefiantUserAbility

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

HandleEndMoveAbility::
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
	call MoveDelayAbility
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
	call MoveDelayAbility
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
	call MoveDelayAbility
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
	call MoveDelayAbility
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
	call MoveDelayAbility
	ld hl, RainDishText
	jp StdBattleTextbox

CheckFullHPDefenseAbilities:
	ld hl, wEnemyMonHP
	ldh a, [hBattleTurn]
	and a
	jr z, .got_hp
	ld hl, wBattleMonHP

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
	jr z, .NoRestore

.restore
	farcall GetQuarterMaxHP
	farcall RestoreHP
	call MoveDelayAbility
	ld hl, WaterAbsorbText
	jp StdBattleTextbox

.NoRestore
	call MoveDelayAbility
	ld hl, WaterAbsorbText
	jp StdBattleTextbox

CheckBoostingAbilities:
	call CheckNeutralGas
	ret z
	call GetUserAbility
	cp MOLD_BREAKER
	jr z, .AfterMarvelScale
	call GetTargetAbility
	cp MARVEL_SCALE
	jr z, .MarvelScale
	cp THICK_FAT
	jp z, .ThickFat
	cp DRY_SKIN
	jp z, .DrySkin
	cp HEAT_PROOF
	jp z, .HeatProof
.AfterMarvelScale
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
	dbw DEFEATIST,       .Defeatist
	dbw TRANSISTOR,      .Transistor
	dbw DRAGONS_MAW,     .DragonsMaw
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

.MarvelScale:
	ld a, BATTLE_VARS_STATUS_OPP
	call GetBattleVar
	cp 0
	ret z
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	cp SPECIAL
	ret nc
	call FiftyPercentNerf
	jr .AfterMarvelScale

.ThickFat:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp FIRE
	jr z, .ThickFatNerf
	cp ICE
	jr z, .ThickFatNerf
	jp .AfterMarvelScale

.ThickFatNerf:
	call FiftyPercentNerf
	jp .AfterMarvelScale

.DrySkin:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp FIRE
	jp nz, .AfterMarvelScale
	call TwentyFivePercentBoost
	jp .AfterMarvelScale

.HeatProof:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp FIRE
	jp nz, .AfterMarvelScale
	call FiftyPercentNerf
	jp .AfterMarvelScale

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

.Defeatist:
	call CheckHalfHP
	ret nc
	call FiftyPercentNerf
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
	ret

.Transistor:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp ELECTRIC
	jr z, ThirtyPercentBoost
	ret

.DragonsMaw:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp DRAGON
	jr z, FiftyPercentBoost
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

FiftyPercentNerf:
	ld a, 50
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

ApplySpeedAbilities::
	call CheckNeutralGas
	ret z
	ldh a, [hBattleTurn]
	and a
	jr z, .EnemySpeedAbilities
	ld a, [wPlayerAbility]
	jr .ConveneSpeedAbility
.EnemySpeedAbilities
	ld a, [wEnemyAbility]
.ConveneSpeedAbility
	ld de, 3
	ld hl, .SpeedAbilities
	call IsInArray
	jp nc, .NoSpeedAbility
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.SpeedAbilities:
	dbw QUICK_FEET,   .QuickFeet
	dbw SWIFT_SWIM,   .SwiftSwim
	dbw CHLOROPHYLL,  .Chlorophyll
	dbw SAND_RUSH,    .SandRush
	dbw SLUSH_RUSH,   .SlushRush
	dbw UNBURDEN,     .Unburden
	db -1

.SwiftSwim:
	ld a, [wBattleWeather]
	cp WEATHER_RAIN
	ret nz
	ld b,b
	jp DoubleUserSpeed

.Chlorophyll:
	ld a, [wBattleWeather]
	cp WEATHER_SUN
	ret nz
	jp DoubleUserSpeed

.SandRush:
	ld a, [wBattleWeather]
	cp WEATHER_SANDSTORM
	ret nz
	jp DoubleUserSpeed

.SlushRush:
	ld a, [wBattleWeather]
	cp WEATHER_HAIL
	ret nz
	jp DoubleUserSpeed

.Unburden:
	ld a, BATTLE_VARS_SUBSTATUS1_OPP
	call GetBattleVarAddr
	bit SUBSTATUS_UNBURDEN, [hl]
	ret z
	ld b,b
	jp DoubleUserSpeed

.QuickFeet:
	ldh a, [hBattleTurn]
	and a
	jr z, .enemy
	ld a, [wBattleMonStatus]
	and 1 << PSN | 1 << BRN | 1 << PAR
	ret z
	jr FiftyPercentSpeedBoost

.enemy:
	ld a, [wEnemyMonStatus]
	and 1 << PSN | 1 << BRN | 1 << PAR
	ret z
	jr FiftyPercentSpeedBoost

.NoSpeedAbility:
	ret

FiftyPercentSpeedBoost:
	ldh a, [hBattleTurn]
	and a
	jr z, .enemy
; load wBattleMonSpeed into hMultiplicand
	ld hl, wBattleMonSpeed
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [hli]
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a
; Multiply by 150
	ld a, 50
	add 100
	ldh [hMultiplier], a
	call Multiply
; Divide by 100
	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
; load hQuotient back into wBattleMonSpeed
	ldh a, [hQuotient + 2]
	ld hl, wBattleMonSpeed
	ld [hli], a
	ldh a, [hQuotient + 3]
	ld [hl], a
	ret

.enemy
; load wEnemyMonSpeed into hMultiplicand
	ld hl, wEnemyMonSpeed
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [hli]
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a
; Multiply by 150
	ld a, 50
	add 100
	ldh [hMultiplier], a
	call Multiply
; Divide by 100
	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
; load hQuotient back into wEnemyMonSpeed
	ldh a, [hQuotient + 2]
	ld hl, wEnemyMonSpeed
	ld [hli], a
	ldh a, [hQuotient + 3]
	ld [hl], a
	ret

DoubleUserSpeed:
	ldh a, [hBattleTurn]
	and a
	jr z, .EnemySpeed
; load wBattleMonSpeed into hMultiplicand
	ld hl, wBattleMonSpeed
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [hli]
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a
; Multiply by 200
	ld a, 100
	add 100
	ldh [hMultiplier], a
	call Multiply
; Divide by 100
	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
; load hQuotient back into wBattleMonSpeed
	ldh a, [hQuotient + 2]
	ld hl, wBattleMonSpeed
	ld [hli], a
	ldh a, [hQuotient + 3]
	ld [hl], a
	ret

.EnemySpeed:
; load wEnemyMonSpeed into hMultiplicand
	ld hl, wEnemyMonSpeed
	xor a
	ldh [hMultiplicand + 0], a
	ld a, [hli]
	ldh [hMultiplicand + 1], a
	ld a, [hl]
	ldh [hMultiplicand + 2], a
; Multiply by 200
	ld a, 100
	add 100
	ldh [hMultiplier], a
	call Multiply
; Divide by 100
	ld a, 100
	ldh [hDivisor], a
	ld b, 4
	call Divide
; load hQuotient back into wEnemyMonSpeed
	ldh a, [hQuotient + 2]
	ld hl, wEnemyMonSpeed
	ld [hli], a
	ldh a, [hQuotient + 3]
	ld [hl], a
	ret

CheckDefensiveAbilities:
	call CheckNeutralGas
	ret z
	call GetUserAbility
	cp MOLD_BREAKER
	ret z
	call GetTargetAbility
	ld de, 3
	ld hl, .DefensiveAbilities
	call IsInArray
	jp nc, .NoDefensiveAbilities
	inc hl
	ld a, [hli]
	ld h, [hl]
	ld l, a
	jp hl

.DefensiveAbilities:
	dbw FLASH_FIRE,      .FlashFire
	dbw WATER_ABSORB,    .WaterAbsorb
	dbw LEVITATE,        .Levitate
	dbw VOLT_ABSORB,     .VoltAbsorb
	dbw DRY_SKIN,        .DrySkin
	dbw EARTH_EATER,     .EarthEater
	dbw SOUNDPROOF,      .Soundproof
	dbw MOTOR_DRIVE,     .MotorDrive
	dbw LIGHTNINGROD,    .Lightningrod
	dbw SAP_SIPPER,      .SapSipper
	db -1

.FlashFire:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp FIRE
	ret nz
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_AttackUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, FlashFireText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.Levitate:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp GROUND
	ret nz
	call MoveDelayAbility
	ld hl, LevitateText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.SapSipper:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp GRASS
	ret nz
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_AttackUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, SapSipperText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.Lightningrod:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp ELECTRIC
	ret nz
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpecialAttackUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, LightningRodText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.MotorDrive:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp ELECTRIC
	ret nz
	farcall BattleCommand_SwitchTurn
	farcall BattleCommand_SpeedUp
	farcall BattleCommand_SwitchTurn
	ld a, [wAttackMissed]
	and a
	ret nz
	call MoveDelayAbility
	ld hl, MotorDriveText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.Soundproof:
	ldh a, [hBattleTurn]
	and a
	jr z, .PlayerSoundproof
	ld a, [wCurEnemyMove]
	jr .FinishSoundproof

.PlayerSoundproof
	ld a, [wCurPlayerMove]
.FinishSoundproof
	ld hl, SoundMoves
	call CheckMoveInListAbilities
	ret nc
	call MoveDelayAbility
	ld hl, SoundproofText
	call StdBattleTextbox
	farcall EndMoveEffect
	ret

.DrySkin:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp WATER
	ret nz
	ld de, .DrySkinName
	call .Copy
	call CheckFullHPDefenseAbilities
	farcall EndMoveEffect
	ret

.WaterAbsorb:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp WATER
	ret nz
	ld de, .WaterAbsorbName
	call .Copy
	call CheckFullHPDefenseAbilities
	farcall EndMoveEffect
	ret

.VoltAbsorb:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp ELECTRIC
	ret nz
	ld de, .VoltAbsorbName
	call .Copy
	call CheckFullHPDefenseAbilities
	farcall EndMoveEffect
	ret

.EarthEater:
	ld a, BATTLE_VARS_MOVE_TYPE
	call GetBattleVar
	and TYPE_MASK
	cp GROUND
	ret nz
	ld de, .EarthEaterName
	call .Copy
	call CheckFullHPDefenseAbilities
	farcall EndMoveEffect
.NoDefensiveAbilities:
	ret

.Copy
	ld hl, wStringBuffer1
	jp CopyName2

.WaterAbsorbName:
	db "Water Absorb@"
.VoltAbsorbName:
	db "Volt Absorb@"
.EarthEaterName:
	db "Earth Eater@"
.DrySkinName:
	db "Dry Skin@"

MoveDelayAbility:
; movedelay
; Wait 40 frames.
	ld c, 40
	jp DelayFrames

EnemySwitchAbilities:
	call CheckNeutralGas
	ret z
	ld a, [wEnemyAbility]
	cp REGENERATOR
	jr z, .EnemyRegeneratorAbility
	cp NATURAL_CURE
	ret nz
	ld a, 0
	ld [wEnemyMonStatus], a
;	ld a, BATTLE_VARS_STATUS
;	call GetBattleVarAddr
;	ld a, [hl]
;	ld [hl], 0
	call UpdateEnemyMonInParty
	ret

.EnemyRegeneratorAbility
	ld hl, wEnemyMonMaxHP
	call GetThirdMaxHPAbilities
	farcall BattleCommand_SwitchTurn
	ld hl, wEnemyMonMaxHP
	call RestoreHPAbilities
	farcall BattleCommand_SwitchTurn
	call UpdateEnemyMonInParty
	ret

PlayerSwitchAbilities:
	call CheckNeutralGas
	ret z
	ld a, [wPlayerAbility]
	cp REGENERATOR
	jr z, .PlayerRegeneratorAbility
	cp NATURAL_CURE
	ret nz
	ld a, 0
	ld [wBattleMonStatus], a
;	ld a, BATTLE_VARS_STATUS
;	call GetBattleVarAddr
;	ld a, [hl]
;	ld [hl], 0
	call UpdateBattleMonInParty
	call UpdateUserInParty
	ret

.PlayerRegeneratorAbility
	ld b,b
	ld hl, wBattleMonMaxHP
	call GetThirdMaxHPAbilities
	farcall BattleCommand_SwitchTurn
	ld hl, wBattleMonMaxHP
	call RestoreHPAbilities
	farcall BattleCommand_SwitchTurn
	call UpdateBattleMonInParty
	ret

GetMaxHPAbilities:
.ok
	ld a, [hli]
	ld [wBuffer2], a
	ld b, a

	ld a, [hl]
	ld [wBuffer1], a
	ld c, a
	ret

GetThirdMaxHPAbilities:
; Assumes HP<768
	call GetMaxHPAbilities
	xor a
	inc b
.loop
	dec b
	inc a
	dec bc
	dec bc
	dec bc
	inc b
	jr nz, .loop
	dec a
	ld c, a
	ret nz
	inc c ; At least 1
	ret

RestoreHPAbilities:
	ld a, [hli]
	ld [wBuffer2], a
	ld a, [hld]
	ld [wBuffer1], a
	dec hl
	ld a, [hl]
	ld [wBuffer3], a
	add c
	ld [hld], a
	ld [wBuffer5], a
	ld a, [hl]
	ld [wBuffer4], a
	adc b
	ld [hli], a
	ld [wBuffer6], a

	ld a, [wBuffer1]
	ld c, a
	ld a, [hld]
	sub c
	ld a, [wBuffer2]
	ld b, a
	ld a, [hl]
	sbc b
	jr c, .asm_3cd2d
	ld a, b
	ld [hli], a
	ld [wBuffer6], a
	ld a, c
	ld [hl], a
	ld [wBuffer5], a
.asm_3cd2d
	ret
