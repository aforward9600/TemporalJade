UnawarePlayerAttack::
; Player has Unaware during player's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialattacker

.physicalattacker
	ld hl, wEnemyDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wEnemyScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritattacker
	sla c
	rl b

.physicalcritattacker
	ld hl, wBattleMonAttack
	farcall CheckDamageStatsCritical
	jr c, .thickclub

	ld hl, wEnemyDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wPlayerAttack
	jr .thickclub

.specialattacker
	ld hl, wEnemySpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wEnemyScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritattacker
	sla c
	rl b

.specialcritattacker
	ld hl, wBattleMonSpclAtk
	farcall CheckDamageStatsCritical
	jr c, .lightball

	ld hl, wEnemySpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wPlayerSpAtk
.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret

UnawarePlayerDefense::
; Enemy has Unaware during player's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialdefender

.physicaldefender
	ld hl, wEnemyMonDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wPlayerAbility]
	cp INFILTRATOR
	jr z, .physicalcritdefender
	ld a, [wEnemyScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritdefender
	sla c
	rl b

.physicalcritdefender
	ld hl, wPlayerAttack
	farcall CheckDamageStatsCritical
	jr c, .thickclub

	ld hl, wEnemyDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wPlayerAttack
	jr .thickclub

.specialdefender
	ld hl, wEnemyMonSpclDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wPlayerAbility]
	cp INFILTRATOR
	jr z, .specialcritdefender
	ld a, [wEnemyScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritdefender
	sla c
	rl b

.specialcritdefender
	ld hl, wPlayerSpAtk
	farcall CheckDamageStatsCritical
	jr c, .lightball

	ld hl, wEnemySpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wPlayerSpAtk
.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret

UnawareEnemyAttack::
; Enemy has Unaware during enemy's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialattacker

.physicalattacker
	ld hl, wPlayerDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wPlayerScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritattacker
	sla c
	rl b

.physicalcritattacker
	ld hl, wEnemyMonAttack
	farcall CheckDamageStatsCritical
	jr c, .thickclub

	ld hl, wPlayerDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wEnemyAttack
	jr .thickclub

.specialattacker
	ld hl, wPlayerSpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wPlayerScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritattacker
	sla c
	rl b

.specialcritattacker
	ld hl, wEnemyMonSpclAtk
	farcall CheckDamageStatsCritical
	jr c, .lightball

	ld hl, wPlayerSpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wEnemySpAtk
.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret

UnawareEnemyDefense::
; Player has Unaware during enemy's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialdefender

.physicaldefender
	ld hl, wBattleMonDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wEnemyAbility]
	cp INFILTRATOR
	jr z, .physicalcritdefender
	ld a, [wPlayerScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritdefender
	sla c
	rl b

.physicalcritdefender
	ld hl, wEnemyAttack
	farcall CheckDamageStatsCritical
	jr c, .thickclub

	ld hl, wPlayerDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wEnemyAttack
	jr .thickclub

.specialdefender
	ld hl, wBattleMonSpclDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wEnemyAbility]
	cp INFILTRATOR
	jr z, .specialcritdefender
	ld a, [wPlayerScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritdefender
	sla c
	rl b

.specialcritdefender
	ld hl, wEnemySpAtk
	farcall CheckDamageStatsCritical
	jr c, .lightball

	ld hl, wPlayerSpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]
	ld hl, wEnemySpAtk

.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret

UnawareBothPlayer::
; Player has Unaware during player's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialattacker

.physicalattacker
	ld hl, wEnemyDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wEnemyScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritattacker
	sla c
	rl b

.physicalcritattacker
	ld hl, wPlayerAttack
	jr .thickclub

.specialattacker
	ld hl, wEnemySpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wEnemyScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritattacker
	sla c
	rl b

.specialcritattacker
	ld hl, wPlayerSpAtk
.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret

UnawareBothEnemy::
; Player has Unaware during player's turn
	ld a, [hl]
	cp SPECIAL
	jr nc, .specialattacker

.physicalattacker
	ld hl, wPlayerDefense
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall HailDefBoost

	ld a, [wPlayerScreens]
	bit SCREENS_REFLECT, a
	jr z, .physicalcritattacker
	sla c
	rl b

.physicalcritattacker
	ld hl, wEnemyAttack
	jr .thickclub

.specialattacker
	ld hl, wPlayerSpDef
	ld a, [hli]
	ld b, a
	ld c, [hl]

	farcall SandstormSpDefBoost

	ld a, [wPlayerScreens]
	bit SCREENS_LIGHT_SCREEN, a
	jr z, .specialcritattacker
	sla c
	rl b

.specialcritattacker
	ld hl, wEnemySpAtk
.lightball
	farcall LightBallBoost
	ret

.thickclub
	farcall ThickClubBoost
	ret
