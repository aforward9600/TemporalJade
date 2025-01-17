; pokemon ids
; indexes for:
; - PokemonNames (see data/pokemon/names.asm)
; - BaseData (see data/pokemon/base_stats.asm)
; - EvosAttacksPointers (see data/pokemon/evos_attacks_pointers.asm)
; - EggMovePointers (see data/pokemon/egg_move_pointers.asm)
; - PokemonCries (see data/pokemon/cries.asm)
; - MonMenuIcons (see data/pokemon/menu_icons.asm)
; - PokemonPicPointers (see data/pokemon/pic_pointers.asm)
; - PokemonPalettes (see data/pokemon/palettes.asm)
; - PokedexDataPointerTable (see data/pokemon/dex_entry_pointers.asm)
; - AlphabeticalPokedexOrder (see data/pokemon/dex_order_alpha.asm)
; - EZChat_SortedPokemon (see data/pokemon/ezchat_order.asm)
; - NewPokedexOrder (see data/pokemon/dex_order_new.asm)
; - Pokered_MonIndices (see data/pokemon/gen1_order.asm)
; - AnimationPointers (see gfx/pokemon/anim_pointers.asm)
; - AnimationIdlePointers (see gfx/pokemon/idle_pointers.asm)
; - BitmasksPointers (see gfx/pokemon/bitmask_pointers.asm)
; - FramesPointers (see gfx/pokemon/frame_pointers.asm)
; - Footprints (see gfx/footprints.asm)
	const_def 1
	const ROWLET     ; 01
	const DARTRIX    ; 02
	const DECIDUEYE  ; 03
	const TEPIG      ; 04
	const PIGNITE    ; 05
	const EMBOAR     ; 06
	const MUDKIP     ; 07
	const MARSHTOMP  ; 08
	const SWAMPERT   ; 09
	const PIKIPEK    ; 0a
	const TRUMBEAK   ; 0b
	const TOUCANNON  ; 0c
	const LILLIPUP   ; 0d
	const HERDIER    ; 0e
	const STOUTLAND  ; 0f
	const VENIPEDE   ; 10
	const WHIRLIPEDE ; 11
	const SCOLIPEDE  ; 12
	const CUTIEFLY   ; 13
	const RIBOMBEE   ; 14
	const SPEAROW    ; 15
	const FEAROW     ; 16
	const EKANS      ; 17
	const ARBOK      ; 18
	const PIKACHU    ; 19
	const RAICHU     ; 1a
	const DRILBUR    ; 1b
	const EXCADRILL  ; 1c
	const SEWADDLE   ; 1d
	const SWADLOON   ; 1e
	const LEAVANNY   ; 1f
	const YAMASK
	const COFAGRIGUS
	const RUNERIGUS
	const CLEFFA     ; ad
	const CLEFAIRY   ; 23
	const CLEFABLE   ; 24
	const VULPIX     ; 25
	const NINETALES  ; 26
	const ROGGENROLA ; ae
	const BOLDORE    ; 27
	const GIGALITH   ; 28
	const ZUBAT      ; 29
	const GOLBAT     ; 2a
	const CROBAT     ; a9
	const COTTONEE   ; 2b
	const WHIMSICOTT ; 2c
	const PETILIL    ; 2d
	const LILLIGANT  ; b6
	const JOLTIK     ; 2e
	const GALVANTULA ; 2f
	const MINCCINO   ; 30
	const CINCCINO   ; 31
	const SANDYGAST  ; 32
	const PALOSSAND  ; 33
	const PURRLOIN     ; 34
	const LIEPARD    ; 35
	const PSYDUCK    ; 36
	const GOLDUCK    ; 37
	const MANKEY     ; 38
	const PRIMEAPE   ; 39
	const ANNIHILAPE
	const GROWLITHE  ; 3a
	const ARCANINE   ; 3b
	const POLIWAG    ; 3c
	const POLIWHIRL  ; 3d
	const POLIWRATH  ; 3e
	const POLITOED   ; ba
	const SOLOSIS    ; 3f
	const DUOSION    ; 40
	const REUNICLUS  ; 41
	const TIMBURR    ; 42
	const GURDURR    ; 43
	const CONKELDURR ; 44
	const BELLSPROUT ; 45
	const WEEPINBELL ; 46
	const VICTREEBEL ; 47
	const TENTACOOL  ; 48
	const TENTACRUEL ; 49
	const GEODUDE    ; 4a
	const GRAVELER   ; 4b
	const GOLEM      ; 4c
	const PONYTA     ; 4d
	const RAPIDASH   ; 4e
	const SLOWPOKE   ; 4f
	const SLOWBRO    ; 50
	const SLOWKING   ; c7
	const MAGNEMITE  ; 51
	const MAGNETON   ; 52
	const MAGNEZONE
	const FARFETCH_D ; 53
	const SIRFETCH_D
	const DODUO      ; 54
	const DODRIO     ; 55
	const SEEL       ; 56
	const DEWGONG    ; 57
	const GRIMER     ; 58
	const MUK        ; 59
	const MAREANIE   ; 5a
	const TOXAPEX    ; 5b
	const GASTLY     ; 5c
	const HAUNTER    ; 5d
	const GENGAR     ; 5e
	const ONIX       ; 5f
	const STEELIX    ; d0
	const DROWZEE    ; 60
	const HYPNO      ; 61
	const CORPHISH   ; 62
	const CRAWDAUNT  ; 63
	const VOLTORB    ; 64
	const ELECTRODE  ; 65
	const EXEGGCUTE  ; 66
	const EXEGGUTOR  ; 67
	const CUBONE     ; 68
	const MAROWAK    ; 69
	const SCRAGGY    ; ec
	const SCRAFTY    ; 6a
	const RIOLU      ; 6b
	const LUCARIO    ; ed
	const LICKITUNG  ; 6c
	const LICKILICKY
	const KOFFING    ; 6d
	const WEEZING    ; 6e
	const RHYHORN    ; 6f
	const RHYDON     ; 70
	const RHYPERIOR
	const HAPPINY
	const CHANSEY    ; 71
	const BLISSEY    ; f2
	const TANGELA    ; 72
	const TANGROWTH
	const KANGASKHAN ; 73
	const HORSEA     ; 74
	const SEADRA     ; 75
	const KINGDRA    ; e6
	const GOLETT     ; 76
	const GOLURK     ; 77
	const STARYU     ; 78
	const STARMIE    ; 79
	const MIME__JR
	const MR__MIME   ; 7a
	const SCYTHER    ; 7b
	const SCIZOR     ; d4
	const SMOOCHUM   ; ee
	const JYNX       ; 7c
	const ELEKID     ; ef
	const ELECTABUZZ ; 7d
	const ELECTIVIRE
	const MAGBY      ; f0
	const MAGMAR     ; 7e
	const MAGMORTAR
	const PINSIR     ; 7f
JOHTO_POKEMON EQU const_value
	const TAUROS     ; 80
	const MAGIKARP   ; 81
	const GYARADOS   ; 82
	const LAPRAS     ; 83
	const DITTO      ; 84
	const EEVEE      ; 85
	const VAPOREON   ; 86
	const JOLTEON    ; 87
	const FLAREON    ; 88
	const ESPEON     ; c4
	const UMBREON    ; c5
	const LEAFEON
	const GLACEON
	const SYLVEON
	const PORYGON    ; 89
	const PORYGON2   ; e9
	const PORYGON_Z
	const TIRTOUGA   ; 8a
	const CARRACOSTA ; 8b
	const ARCHEN     ; 8c
	const ARCHEOPS   ; 8d
	const AERODACTYL ; 8e
	const MUNCHLAX
	const SNORLAX    ; 8f
	const ARTICUNO   ; 90
	const ZAPDOS     ; 91
	const MOLTRES    ; 92
	const DRATINI    ; 93
	const DRAGONAIR  ; 94
	const DRAGONITE  ; 95
	const MEWTWO     ; 96
	const MEW        ; 97
	const CHIKORITA  ; 98
	const BAYLEEF    ; 99
	const MEGANIUM   ; 9a
	const CYNDAQUIL  ; 9b
	const QUILAVA    ; 9c
	const TYPHLOSION ; 9d
	const TOTODILE   ; 9e
	const CROCONAW   ; 9f
	const FERALIGATR ; a0
	const SENTRET    ; a1
	const FURRET     ; a2
	const HOOTHOOT   ; a3
	const NOCTOWL    ; a4
	const KARRABLAST ; a5
	const ESCAVALIER ; a6
	const SHELMET    ; a7
	const ACCELGOR   ; a8
	const CHINCHOU   ; aa
	const LANTURN    ; ab
	const TOGEPI     ; af
	const TOGETIC    ; b0
	const TOGEKISS
	const NATU       ; b1
	const XATU       ; b2
	const MAREEP     ; b3
	const FLAAFFY    ; b4
	const AMPHAROS   ; b5
	const ABSOL
	const MARILL     ; b7
	const AZUMARILL  ; b8
	const BONSLY
	const SUDOWOODO  ; b9
	const LITWICK    ; bb
	const LAMPENT    ; bc
	const CHANDELURE ; bd
	const AIPOM      ; be
	const AMBIPOM
	const ELGYEM     ; bf
	const BEHEEYEM   ; c0
	const YANMA      ; c1
	const YANMEGA
	const WOOPER     ; c2
	const CLODSIRE   ; c3
	const MURKROW    ; c6
	const HONCHKROW  ; fe
	const MISDREAVUS ; c8
	const MISMAGIUS  ; fd
	const BASCULIN   ; c9
	const BASCLEGION
	const SKORUPI
	const DRAPION  ; ca
	const GIRAFARIG  ; cb
	const FARIGIRAF
	const FERROSEED  ; cc
	const FERROTHORN ; cd
	const DUNSPARCE  ; ce
	const DUDUNSPARS
	const GLIGAR     ; cf
	const GLISCOR
	const SNUBBULL   ; d1
	const GRANBULL   ; d2
	const QWILFISH   ; d3
	const OVERQWIL    ; d5
	const HERACROSS  ; d6
	const SNEASEL    ; d7
	const WEAVILE
	const TEDDIURSA  ; d8
	const URSARING   ; d9
	const URSALUNA
	const SLUGMA     ; da
	const MAGCARGO   ; db
	const SWINUB     ; dc
	const PILOSWINE  ; dd
	const MAMOSWINE
	const CORSOLA    ; de
	const CURSOLA    ; ff
	const REMORAID   ; df
	const OCTILLERY  ; e0
	const ORTHWORM   ; e1
	const LARVESTA
	const VOLCARONA    ; e2
	const SKARMINI   ; fc
	const SKARMORY   ; e3
	const HOUNDOUR   ; e4
	const HOUNDOOM   ; e5
	const PHANPY     ; e7
	const DONPHAN    ; e8
	const STANTLER   ; ea
	const WYRDEER
	const BOUFFALANT ; eb
	const MILTANK    ; f1
	const KOTORA
	const RAITORA
	const GOROTORA
	const BUDEW
	const ROSELIA
	const ROSERADE
	const ELECTRIKE
	const MANECTRIC
	const CROAGUNK
	const TOXICROAK
	const SWABLU
	const ALTARIA
	const DUSKULL    ; f2
	const DUSCLOPS
	const DUSKNOIR
	const LOTAD
	const LOMBRE
	const LUDICOLO
	const SNORUNT
	const GLALIE
	const FROSLASS
	const BRONZOR
	const BRONZONG
	const CACNEA
	const CACTURNE
	const RALTS
	const KIRLIA
	const GARDEVOIR
	const GALLADE
	const ARON
	const LAIRON
	const AGGRON
	const AXEW       ; f3
	const FRAXURE    ; f4
	const HAXORUS    ; f5
	const LARVITAR   ; f6
	const PUPITAR    ; f7
	const TYRANITAR  ; f8
	const GIBLE
	const GABITE
	const GARCHOMP
	const DEINO
	const ZWEILOUS
	const HYDREIGON
	const DREEPY
	const DRAKLOAK
	const DRAGAPULT
	const LUGIA      ; f9
	const HO_OH      ; fa
	const CELEBI     ; fb
	const NOWN
	const MISSINGNO

NUM_POKEMON EQU const_value + -1

EGG EQU -3

; limits:
; 999: everything that prints dex counts
; 1407: size of wPokedexOrder
; 4095: hard limit; would require serious redesign to increase
if NUM_POKEMON > 999
	fail "Too many Pokémon defined!"
endc

; Unown forms
; indexes for:
; - UnownWords (see data/pokemon/unown_words.asm)
; - UnownPicPointers (see data/pokemon/unown_pic_pointers.asm)
; - UnownAnimationPointers (see gfx/pokemon/unown_anim_pointers.asm)
; - UnownAnimationIdlePointers (see gfx/pokemon/unown_idle_pointers.asm)
; - UnownBitmasksPointers (see gfx/pokemon/unown_bitmask_pointers.asm)
; - UnownFramesPointers (see gfx/pokemon/unown_frame_pointers.asm)
	const_def 1
	const UNOWN_A ;  1
	const UNOWN_B ;  2
	const UNOWN_C ;  3
	const UNOWN_D ;  4
	const UNOWN_E ;  5
	const UNOWN_F ;  6
	const UNOWN_G ;  7
	const UNOWN_H ;  8
	const UNOWN_I ;  9
	const UNOWN_J ; 10
	const UNOWN_K ; 11
	const UNOWN_L ; 12
	const UNOWN_M ; 13
	const UNOWN_N ; 14
	const UNOWN_O ; 15
	const UNOWN_P ; 16
	const UNOWN_Q ; 17
	const UNOWN_R ; 18
	const UNOWN_S ; 19
	const UNOWN_T ; 20
	const UNOWN_U ; 21
	const UNOWN_V ; 22
	const UNOWN_W ; 23
	const UNOWN_X ; 24
	const UNOWN_Y ; 25
	const UNOWN_Z ; 26
NUM_UNOWN EQU const_value + -1 ; 26
