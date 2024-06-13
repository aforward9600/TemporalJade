; sprite ids
; OverworldSprites indexes (see data/sprites/sprites.asm)
	const_def
	const SPRITE_NONE ; 00
	const SPRITE_CHRIS ; 01
	const SPRITE_CHRIS_BIKE ; 02
	const SPRITE_GAMEBOY_KID ; 03
	const SPRITE_GOLD ; 04
	const SPRITE_OAK ; 05
	const SPRITE_BURGLAR ; 06
	const SPRITE_CRYSTAL ; 07
	const SPRITE_BILL ; 08
	const SPRITE_ELDER ; 09
	const SPRITE_OFFICER_JENNY ; 0a
	const SPRITE_KURT ; 0b
	const SPRITE_MOM ; 0c
	const SPRITE_BLAINE ; 0d
	const SPRITE_REDS_MOM ; 0e
	const SPRITE_DAISY ; 0f
	const SPRITE_JUNIPER ; 10
	const SPRITE_FLORINA ; 11
	const SPRITE_WALKER ; 12
	const SPRITE_MILTON ; 13
	const SPRITE_MORTY ; 15
	const SPRITE_CHUCK ; 16
	const SPRITE_BYRON ; 17
	const SPRITE_PRYCE ; 18
	const SPRITE_CLAIR ; 19
	const SPRITE_FLINT ; 1a
	const SPRITE_AGATHA ; 1b
	const SPRITE_MARTHA ; 1c
	const SPRITE_MISTY ; 1d
	const SPRITE_LANCE ; 1e
	const SPRITE_SURGE ; 1f
	const SPRITE_ERIKA ; 20
	const SPRITE_KOGA ; 21
	const SPRITE_SABRINA ; 22
	const SPRITE_COOLTRAINER_M ; 23
	const SPRITE_COOLTRAINER_F ; 24
	const SPRITE_BUG_CATCHER ; 25
	const SPRITE_TWIN ; 26
	const SPRITE_YOUNGSTER ; 27
	const SPRITE_LASS ; 28
	const SPRITE_TEACHER ; 29
	const SPRITE_BUENA ; 2a
	const SPRITE_SUPER_NERD ; 2b
	const SPRITE_ROCKER ; 2c
	const SPRITE_POKEFAN_M ; 2d
	const SPRITE_POKEFAN_F ; 2e
	const SPRITE_GRAMPS ; 2f
	const SPRITE_GRANNY ; 30
	const SPRITE_SWIMMER_GUY ; 31
	const SPRITE_SWIMMER_GIRL ; 32
	const SPRITE_BIG_SNORLAX ; 33
	const SPRITE_SURFING_PIKACHU ; 34
	const SPRITE_ROCKET ; 35
	const SPRITE_ROCKET_GIRL ; 36
	const SPRITE_NURSE ; 37
	const SPRITE_LINK_RECEPTIONIST ; 38
	const SPRITE_CLERK ; 39
	const SPRITE_FISHER ; 3a
	const SPRITE_FISHING_GURU ; 3b
	const SPRITE_SCIENTIST ; 3c
	const SPRITE_KIMONO_GIRL ; 3d
	const SPRITE_SAGE ; 3e
	const SPRITE_UNUSED_GUY ; 3f
	const SPRITE_GENTLEMAN ; 40
	const SPRITE_BLACK_BELT ; 41
	const SPRITE_RECEPTIONIST ; 42
	const SPRITE_OFFICER ; 43
	const SPRITE_CAL ; 44
	const SPRITE_SLOWPOKE ; 45
	const SPRITE_CAPTAIN ; 46
	const SPRITE_BIG_LAPRAS ; 47
	const SPRITE_GYM_GUY ; 48
	const SPRITE_SAILOR ; 49
	const SPRITE_BIKER ; 4a
	const SPRITE_PHARMACIST ; 4b
	const SPRITE_MONSTER ; 4c
	const SPRITE_FAIRY ; 4d
	const SPRITE_LARVITAR_STILL ; 4e
	const SPRITE_BIANCA ; 4f
	const SPRITE_BIG_ONIX ; 50
	const SPRITE_N64 ; 51
	const SPRITE_SUDOWOODO ; 52
	const SPRITE_SURF ; 53
	const SPRITE_POKE_BALL ; 54
	const SPRITE_POKEDEX ; 55
	const SPRITE_PAPER ; 56
	const SPRITE_VIRTUAL_BOY ; 57
	const SPRITE_OLD_LINK_RECEPTIONIST ; 58
	const SPRITE_ROCK ; 59
	const SPRITE_BOULDER ; 5a
	const SPRITE_SNES ; 5b
	const SPRITE_FAMICOM ; 5c
	const SPRITE_FRUIT_TREE ; 5d
	const SPRITE_GOLD_TROPHY ; 5e
	const SPRITE_SILVER_TROPHY ; 5f
	const SPRITE_KRIS ; 60
	const SPRITE_KRIS_BIKE ; 61
	const SPRITE_KURT_OUTSIDE ; 62
	const SPRITE_SUICUNE ; 63
	const SPRITE_ENTEI ; 64
	const SPRITE_RAIKOU ; 65
	const SPRITE_STANDING_YOUNGSTER ; 66
	const SPRITE_ARCHER ; 67
	const SPRITE_HIKER
	const SPRITE_KID
	const SPRITE_BREEDER
	const SPRITE_ENOKI
	const SPRITE_EUSINE
	const SPRITE_HEX_MANIAC
	const SPRITE_CHIGUSA
	const SPRITE_ARIANA
	const SPRITE_MASTER
	const SPRITE_GEN_SURGE
	const SPRITE_MIYAMOTO
	const SPRITE_SHERLES
	const SPRITE_ENGINEER
	const SPRITE_NINJA
	const SPRITE_EIN
	const SPRITE_DRAGON_TAMER_M
	const SPRITE_DRAGON_TAMER_F
	const SPRITE_BOSS
	const SPRITE_AMPHAROS_P
	const SPRITE_GIOVANNI
	const SPRITE_CYNTHIA
	const SPRITE_CHRIS_ITEM
	const SPRITE_KRIS_ITEM
	const SPRITE_BIKER_BOSS
	const SPRITE_BIRD_KEEPER
	const SPRITE_BOARDER
	const SPRITE_CAMPER
	const SPRITE_FIREBREATHER
	const SPRITE_JUGGLER
	const SPRITE_PICNICKER
	const SPRITE_POKEMANIAC
	const SPRITE_PSYCHIC
	const SPRITE_SCHOOLBOY
	const SPRITE_SKIER
	const SPRITE_NOWN_OPEN
	const SPRITE_BIG_SALAMENCE
	const SPRITE_DRATINI_STILL
	const SPRITE_RATTATA_STILL
	const SPRITE_BULBASAUR_STILL
	const SPRITE_CHIKORITA_STILL
	const SPRITE_SQUIRTLE_STILL
	const SPRITE_TOTODILE_STILL ; 90
	const SPRITE_SWABLU_STILL
	const SPRITE_LOTAD_STILL
	const SPRITE_STARMIE_STILL
	const SPRITE_DIGLETT_STILL
	const SPRITE_SCIENTIST_F
	const SPRITE_BROCK
	const SPRITE_SENSATIONAL
	const SPRITE_ROUGHNECK
	const SPRITE_MEW_WALK
	const SPRITE_FIRE
	const SPRITE_SENSATIONAL_BLONDE

; SpriteMons indexes (see data/sprites/sprite_mons.asm)
	const_def $9c
SPRITE_POKEMON EQU const_value
	const SPRITE_MURKROW ; 99
	const SPRITE_SKARMINI ; 9a
	const SPRITE_GROWLITHE ; 9b
	const SPRITE_WEEDLE ; 9c
	const SPRITE_CYNDAQUIL ; 9d
	const SPRITE_KOTORA ; 9e
	const SPRITE_GENGAR ; 9f
	const SPRITE_ZUBAT ; a0
	const SPRITE_MAGIKARP ; a1
	const SPRITE_SQUIRTLE ; a2
	const SPRITE_TOGEPI ; a3
	const SPRITE_BUTTERFREE ; a4
	const SPRITE_DIGLETT ; a5
	const SPRITE_POLIWAG ; a6
	const SPRITE_PIKACHU ; a7
	const SPRITE_CLEFAIRY ; a8
	const SPRITE_TEPIG ; a9
	const SPRITE_JYNX ; aa
	const SPRITE_STARMIE ; ab
	const SPRITE_ROWLET ; ac
	const SPRITE_JIGGLYPUFF ; ad
	const SPRITE_GRIMER ; ae
	const SPRITE_EKANS ; af
	const SPRITE_PARAS ; b0
	const SPRITE_TENTACOOL ; b1
	const SPRITE_TAUROS ; b2
	const SPRITE_MACHOP ; b3
	const SPRITE_VOLTORB ; b4
	const SPRITE_LAPRAS ; b5
	const SPRITE_RHYDON ; b6
	const SPRITE_MOLTRES ; b7
	const SPRITE_SNORLAX ; b8
	const SPRITE_GYARADOS ; b9
	const SPRITE_LUGIA ; ba
	const SPRITE_HO_OH ; bb
	const SPRITE_DRATINI ; bc
	const SPRITE_SMOOCHUM ; bd
	const SPRITE_MEOWTH ; bc
	const SPRITE_SYLVEON ; bd
	const SPRITE_WOBBUFFET ; be
	const SPRITE_RATICATE ; bf
	const SPRITE_AMPHAROS ; c0
	const SPRITE_FARFETCHD ; c1
	const SPRITE_MACHOKE ; c2
	const SPRITE_POLIWRATH ; c3
	const SPRITE_PERSIAN ; c4
	const SPRITE_HERACROSS ; c5
	const SPRITE_SHUCKLE ; c6
	const SPRITE_SWINUB ; c7
	const SPRITE_SNEASEL ; c8
	const SPRITE_MILTANK ; c9
	const SPRITE_RAICHU ; ca
	const SPRITE_CLEFAIRY_P ; cb
	const SPRITE_DUSKNOIR ; cc
	const SPRITE_PICHU ; cd
	const SPRITE_RAIKOU_P ; ce
	const SPRITE_SUICUNE_P ; cf
	const SPRITE_ENTEI_P ; d0
	const SPRITE_ARTICUNO ; d1
	const SPRITE_ZAPDOS ; d2
	const SPRITE_SPEAROW ; d3
	const SPRITE_MACHAMP ; d4
	const SPRITE_IGGLYBUFF ; d5
	const SPRITE_QUAGSIRE ; d6
	const SPRITE_ABRA ; d7
	const SPRITE_MISSINGNO
	const SPRITE_MEWTWO
	const SPRITE_CHANSEY
	const SPRITE_MAROWAK
	const SPRITE_MEW
	const SPRITE_NIDORAN_F

; special GetMonSprite values (see engine/overworld/overworld.asm)
	const_def $e6
	const SPRITE_DAY_CARE_MON_1 ; e1
	const SPRITE_DAY_CARE_MON_2 ; e2

; wVariableSprites indexes (see wram.asm)
	const_def $f0
SPRITE_VARS EQU const_value
	const SPRITE_CONSOLE ; f0
	const SPRITE_DOLL_1 ; f1
	const SPRITE_DOLL_2 ; f2
	const SPRITE_BIG_DOLL ; f3
	const SPRITE_WEIRD_TREE ; f4
	const SPRITE_OLIVINE_RIVAL ; f5
	const SPRITE_AZALEA_ROCKET ; f6
	const SPRITE_FUCHSIA_GYM_1 ; f7
	const SPRITE_FUCHSIA_GYM_2 ; f8
	const SPRITE_FUCHSIA_GYM_3 ; f9
	const SPRITE_FUCHSIA_GYM_4 ; fa
	const SPRITE_COPYCAT ; fb
	const SPRITE_JANINE_IMPERSONATOR ; fc
	const SPRITE_RIVAL ; fd
	const SPRITE_LINK_TRAINER ;fe
