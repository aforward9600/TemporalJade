mon_cry: MACRO
; index, pitch, length
	dw \1, \2, \3
ENDM

PokemonCries::
; entries correspond to constants/pokemon_constants.asm
	mon_cry CRY_PIDGEY,      $740,  $337 ; ROWLET
	mon_cry CRY_PIDGEY,      $840,  $337 ; DARTRIX
	mon_cry CRY_PIDGEY,      $548,  $407 ; DECIDUEYE
	mon_cry CRY_NIDORAN_M,  -$08d,  $0ab ; TEPIG
	mon_cry CRY_METAPOD,    -$3c5,  $0f0 ; PIGNITE
	mon_cry CRY_METAPOD,    -$4c0,  $130 ; EMBOAR
	mon_cry CRY_PSYDUCK,     $725,  $091 ; MUDKIP
	mon_cry CRY_ODDISH,      $0ea,  $0e0 ; MARSHTOMP
	mon_cry CRY_ODDISH,      $50d,  $1b2 ; SWAMPERT
	mon_cry CRY_MARILL,      $11b,  $070 ; PIKIPEK
	mon_cry CRY_SPEAROW,     $000,  $100 ; TRUMBEAK
	mon_cry CRY_FEAROW,      $040,  $120 ; TOUCANNON
	mon_cry CRY_SUNFLORA,   -$077,  $0e0 ; LILLIPUP
	mon_cry CRY_NIDORAN_M,  -$0c9,  $0ab ; HERDIER
	mon_cry CRY_STOUTLAND,  -$201,  $0b0 ; STOUTLAND
	mon_cry CRY_WEEDLE,      $0ee,  $081 ; VENIPEDE
	mon_cry CRY_BLASTOISE,   $0ff,  $081 ; WHIRLIPEDE
	mon_cry CRY_BLASTOISE,   $060,  $100 ; SCOLIPEDE
	mon_cry CRY_PICHU,      -$03e,  $0fc ; CUTIEFLY
	mon_cry CRY_PICHU,      -$029,  $3a0 ; RIBOMBEE
	mon_cry CRY_SPEAROW,     $000,  $100 ; SPEAROW
	mon_cry CRY_FEAROW,      $040,  $120 ; FEAROW
	mon_cry CRY_EKANS,       $012,  $0c0 ; EKANS
	mon_cry CRY_EKANS,       $0e0,  $090 ; ARBOK
	mon_cry CRY_BULBASAUR,   $0ee,  $081 ; PIKACHU
	mon_cry CRY_RAICHU,      $0ee,  $088 ; RAICHU
	mon_cry CRY_TEDDIURSA,  -$018,  $0b3 ; DRILBUR
	mon_cry CRY_NIDOQUEEN,  -$108,  $14d ; EXCADRILL
	mon_cry CRY_GROWLITHE,   $0b2,  $0d0 ; SEWADDLE
	mon_cry CRY_GOLEM,       $2e0,  $0a0 ; SWADLOON
	mon_cry CRY_HOOTHOOT,    $128,  $160 ; LEAVANNY
	mon_cry CRY_NIDORAN_M,   $000,  $100 ; NIDORAN_M
	mon_cry CRY_NIDORAN_M,   $02c,  $140 ; NIDORINO
	mon_cry CRY_RAICHU,      $000,  $100 ; NIDOKING
	mon_cry CRY_CLEFFA,      $061,  $091 ; CLEFFA
	mon_cry CRY_CLEFAIRY,    $0cc,  $081 ; CLEFAIRY
	mon_cry CRY_CLEFAIRY,    $0aa,  $0a0 ; CLEFABLE
	mon_cry CRY_VULPIX,      $04f,  $090 ; VULPIX
	mon_cry CRY_VULPIX,      $088,  $0e0 ; NINETALES
	mon_cry CRY_CHIKORITA,   $0e8,  $0e8 ; IGGLYBUFF
	mon_cry CRY_PIDGEY,      $0ff,  $0b5 ; JIGGLYPUFF
	mon_cry CRY_PIDGEY,      $068,  $0e0 ; WIGGLYTUFF
	mon_cry CRY_SQUIRTLE,    $0e0,  $100 ; ZUBAT
	mon_cry CRY_SQUIRTLE,    $0fa,  $100 ; GOLBAT
	mon_cry CRY_SQUIRTLE,   -$010,  $140 ; CROBAT
	mon_cry CRY_MARILL,      $0d7,  $140 ; COTTONEE
	mon_cry CRY_WHIMSICOTT,  $0fa,  $100 ; WHIMSICOTT
	mon_cry CRY_SUNFLORA,   -$047,  $0b4 ; PETILIL
	mon_cry CRY_HYDREIGON,   $172,  $0b2 ; LILLIGANT
	mon_cry CRY_PIDGEY,      $16a,  $0d4 ; JOLTIK
	mon_cry CRY_NIDOQUEEN,   $035,  $0b6 ; GALVANTULA
	mon_cry CRY_NIDORAN_M,   $833,  $178 ; MINCCINO
	mon_cry CRY_CHARMANDER,  $936,  $158 ; CINCCINO
	mon_cry CRY_KANGASKHAN,  $a20,  $100 ; SANDYGHAST
	mon_cry CRY_KANGASKHAN,  $620,  $200 ; PALOSSAND
	mon_cry CRY_MAREEP,      $04d,  $0b8 ; PURRLOIN
	mon_cry CRY_MAREEP,      $03d,  $148 ; LIEPARD
	mon_cry CRY_PSYDUCK,     $020,  $0e0 ; PSYDUCK
	mon_cry CRY_PSYDUCK,     $0ff,  $0c0 ; GOLDUCK
	mon_cry CRY_NIDOQUEEN,   $0dd,  $0e0 ; MANKEY
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; PRIMEAPE
	mon_cry CRY_NIDOQUEEN,   $0af,  $0c0 ; ANNIHILAPE
	mon_cry CRY_GROWLITHE,   $020,  $0c0 ; GROWLITHE
	mon_cry CRY_WEEDLE,      $000,  $100 ; ARCANINE
	mon_cry CRY_PIDGEY,      $0ff,  $17f ; POLIWAG
	mon_cry CRY_PIDGEY,      $077,  $0e0 ; POLIWHIRL
	mon_cry CRY_PIDGEY,      $000,  $17f ; POLIWRATH
	mon_cry CRY_CLEFFA,     -$2a3,  $1c8 ; POLITOED
	mon_cry CRY_EKANS,       $200,  $090 ; SOLOSIS
	mon_cry CRY_AMPHAROS,    $185,  $184 ; DUOSION
	mon_cry CRY_AMPHAROS,    $233,  $190 ; REUNICLUS
	mon_cry CRY_SPEAROW,    -$080,  $0ac ; TIMBURR
	mon_cry CRY_AMPHAROS,   -$154,  $160 ; GURDURR
	mon_cry CRY_AMPHAROS,   -$437,  $1e5 ; CONKELDURR
	mon_cry CRY_PSYDUCK,     $055,  $081 ; BELLSPROUT
	mon_cry CRY_WEEPINBELL,  $044,  $0a0 ; WEEPINBELL
	mon_cry CRY_WEEPINBELL,  $066,  $14c ; VICTREEBEL
	mon_cry CRY_VENONAT,     $000,  $100 ; TENTACOOL
	mon_cry CRY_VENONAT,     $0ee,  $17f ; TENTACRUEL
	mon_cry CRY_VULPIX,      $0f0,  $090 ; GEODUDE
	mon_cry CRY_VULPIX,      $000,  $100 ; GRAVELER
	mon_cry CRY_GOLEM,       $0e0,  $0c0 ; GOLEM
	mon_cry CRY_WEEPINBELL,  $000,  $100 ; PONYTA
	mon_cry CRY_WEEPINBELL,  $020,  $140 ; RAPIDASH
	mon_cry CRY_SLOWPOKE,    $000,  $100 ; SLOWPOKE
	mon_cry CRY_GROWLITHE,   $000,  $100 ; SLOWBRO
	mon_cry CRY_SLOWKING,    $104,  $200 ; SLOWKING
	mon_cry CRY_METAPOD,     $080,  $0e0 ; MAGNEMITE
	mon_cry CRY_METAPOD,     $020,  $140 ; MAGNETON
	mon_cry CRY_METAPOD,     $020,  $140 ; MAGNEZONE
	mon_cry CRY_SPEAROW,     $0dd,  $081 ; FARFETCH_D
	mon_cry CRY_SPEAROW,     $0dd,  $081 ; SIRFETCH_D
	mon_cry CRY_DIGLETT,     $0bb,  $081 ; DODUO
	mon_cry CRY_DIGLETT,     $099,  $0a0 ; DODRIO
	mon_cry CRY_SEEL,        $088,  $140 ; SEEL
	mon_cry CRY_SEEL,        $023,  $17f ; DEWGONG
	mon_cry CRY_GRIMER,      $000,  $100 ; GRIMER
	mon_cry CRY_MUK,         $0ef,  $17f ; MUK
	mon_cry CRY_VOLTORB,     $d50,  $0d0 ; MAREANIE
	mon_cry CRY_VOLTORB,     $850,  $1d0 ; TOXAPEX
	mon_cry CRY_METAPOD,     $000,  $100 ; GASTLY
	mon_cry CRY_METAPOD,     $030,  $0c0 ; HAUNTER
	mon_cry CRY_MUK,         $000,  $17f ; GENGAR
	mon_cry CRY_EKANS,       $0ff,  $140 ; ONIX
	mon_cry CRY_TYPHLOSION,  $0ef,  $0f7 ; STEELIX
	mon_cry CRY_DROWZEE,     $088,  $0a0 ; DROWZEE
	mon_cry CRY_DROWZEE,     $0ee,  $0c0 ; HYPNO
	mon_cry CRY_MANTINE,     $240,  $0c0 ; CORPHISH
	mon_cry CRY_MANTINE,     $200,  $1f0 ; CRAWDAUNT
	mon_cry CRY_VOLTORB,     $0ed,  $100 ; VOLTORB
	mon_cry CRY_VOLTORB,     $0a8,  $110 ; ELECTRODE
	mon_cry CRY_DIGLETT,     $000,  $100 ; EXEGGCUTE
	mon_cry CRY_DROWZEE,     $000,  $100 ; EXEGGUTOR
	mon_cry CRY_CLEFAIRY,    $000,  $100 ; CUBONE
	mon_cry CRY_ODDISH,      $04f,  $0e0 ; MAROWAK
	mon_cry CRY_KARRABLAST,  $04b,  $0a4 ; SCRAGGY
	mon_cry CRY_KARRABLAST, -$0a7,  $147 ; SCRAFTY
	mon_cry CRY_SUNFLORA,    $702,  $100 ; RIOLU
	mon_cry CRY_SLUGMA,     -$25c,  $0e0 ; LUCARIO
	mon_cry CRY_SEEL,        $000,  $100 ; LICKITUNG
	mon_cry CRY_SEEL,        $000,  $100 ; LICKILICKY
	mon_cry CRY_GOLEM,       $0e6,  $15d ; KOFFING
	mon_cry CRY_GOLEM,       $0ff,  $17f ; WEEZING
	mon_cry CRY_CHARMANDER,  $000,  $100 ; RHYHORN
	mon_cry CRY_RHYDON,      $000,  $100 ; RHYDON
	mon_cry CRY_RHYDON,      $000,  $100 ; RHYPERIOR
	mon_cry CRY_PIDGEOTTO,   $000,  $0a0 ; HAPPINY
	mon_cry CRY_PIDGEOTTO,   $00a,  $140 ; CHANSEY
	mon_cry CRY_SLOWKING,    $293,  $140 ; BLISSEY
	mon_cry CRY_GOLEM,       $000,  $100 ; TANGELA
	mon_cry CRY_GOLEM,       $000,  $100 ; TANGROWTH
	mon_cry CRY_KANGASKHAN,  $000,  $100 ; KANGASKHAN
	mon_cry CRY_CLEFAIRY,    $099,  $090 ; HORSEA
	mon_cry CRY_CLEFAIRY,    $03c,  $081 ; SEADRA
	mon_cry CRY_SLUGMA,      $2fb,  $100 ; KINGDRA
	mon_cry CRY_CATERPIE,    $080,  $0c0 ; GOLDEEN
	mon_cry CRY_CATERPIE,    $010,  $17f ; SEAKING
	mon_cry CRY_PARAS,       $002,  $0a0 ; STARYU
	mon_cry CRY_PARAS,       $000,  $100 ; STARMIE
	mon_cry CRY_KRABBY,     -$050,  $060 ; MIME__JR
	mon_cry CRY_KRABBY,      $008,  $0c0 ; MR__MIME
	mon_cry CRY_CATERPIE,    $000,  $100 ; SCYTHER
	mon_cry CRY_AMPHAROS,    $000,  $160 ; SCIZOR
	mon_cry CRY_MARILL,      $068,  $100 ; SMOOCHUM
	mon_cry CRY_DROWZEE,     $0ff,  $17f ; JYNX
	mon_cry CRY_SUNFLORA,   -$2d8,  $0b4 ; ELEKID
	mon_cry CRY_VOLTORB,     $08f,  $17f ; ELECTABUZZ
	mon_cry CRY_VOLTORB,     $08f,  $17f ; ELECTIVIRE
	mon_cry CRY_TEDDIURSA,   $176,  $03a ; MAGBY
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; MAGMAR
	mon_cry CRY_CHARMANDER,  $0ff,  $0b0 ; MAGMORTAR
	mon_cry CRY_PIDGEOTTO,   $000,  $100 ; PINSIR
	mon_cry CRY_SQUIRTLE,    $011,  $0c0 ; TAUROS
	mon_cry CRY_EKANS,       $080,  $080 ; MAGIKARP
	mon_cry CRY_EKANS,       $000,  $100 ; GYARADOS
	mon_cry CRY_LAPRAS,      $000,  $100 ; LAPRAS
	mon_cry CRY_PIDGEY,      $0ff,  $17f ; DITTO
	mon_cry CRY_VENONAT,     $088,  $0e0 ; EEVEE
	mon_cry CRY_VENONAT,     $0aa,  $17f ; VAPOREON
	mon_cry CRY_VENONAT,     $03d,  $100 ; JOLTEON
	mon_cry CRY_VENONAT,     $010,  $0a0 ; FLAREON
	mon_cry CRY_AIPOM,       $0a2,  $140 ; ESPEON
	mon_cry CRY_VENONAT,    -$0e9,  $0f0 ; UMBREON
	mon_cry CRY_VENONAT,     $03d,  $160 ; LEAFEON
	mon_cry CRY_METAPOD,     $fc6,  $1aa ; GLACEON
	mon_cry CRY_VENONAT,     $0b0,  $16f ; SYLVEON
	mon_cry CRY_WEEPINBELL,  $0aa,  $17f ; PORYGON
	mon_cry CRY_GIRAFARIG,   $073,  $240 ; PORYGON2
	mon_cry CRY_SEEL,        $212,  $270 ; PORYGON_Z
	mon_cry CRY_TIRTOUGA,    $056,  $0c4 ; TIRTOUGA
	mon_cry CRY_WHIMSICOTT, -$1f9,  $130 ; CARRACOSTA
	mon_cry CRY_NIDORAN_M,   $017,  $0d0 ; ARCHEN
	mon_cry CRY_WHIMSICOTT,  $05b,  $0b7 ; ARCHEOPS
	mon_cry CRY_VILEPLUME,   $020,  $170 ; AERODACTYL
	mon_cry CRY_GRIMER,      $055,  $081 ; MUNCHLAX
	mon_cry CRY_GRIMER,      $055,  $081 ; SNORLAX
	mon_cry CRY_RAICHU,      $080,  $0c0 ; ARTICUNO
	mon_cry CRY_FEAROW,      $0ff,  $100 ; ZAPDOS
	mon_cry CRY_RAICHU,      $0f8,  $0c0 ; MOLTRES
	mon_cry CRY_BULBASAUR,   $060,  $0c0 ; DRATINI
	mon_cry CRY_BULBASAUR,   $040,  $100 ; DRAGONAIR
	mon_cry CRY_BULBASAUR,   $03c,  $140 ; DRAGONITE
	mon_cry CRY_PARAS,       $099,  $17f ; MEWTWO
	mon_cry CRY_PARAS,       $0ee,  $17f ; MEW
	mon_cry CRY_CHIKORITA,  -$010,  $0b0 ; CHIKORITA
	mon_cry CRY_CHIKORITA,  -$022,  $120 ; BAYLEEF
	mon_cry CRY_CHIKORITA,  -$0b7,  $200 ; MEGANIUM
	mon_cry CRY_CYNDAQUIL,   $347,  $080 ; CYNDAQUIL
	mon_cry CRY_CYNDAQUIL,   $321,  $120 ; QUILAVA
	mon_cry CRY_TYPHLOSION,  $f00,  $0d4 ; TYPHLOSION
	mon_cry CRY_TOTODILE,    $46c,  $0e8 ; TOTODILE
	mon_cry CRY_TOTODILE,    $440,  $110 ; CROCONAW
	mon_cry CRY_TOTODILE,    $3fc,  $180 ; FERALIGATR
	mon_cry CRY_SENTRET,     $08a,  $0b8 ; SENTRET
	mon_cry CRY_SENTRET,     $06b,  $102 ; FURRET
	mon_cry CRY_HOOTHOOT,    $091,  $0d8 ; HOOTHOOT
	mon_cry CRY_HOOTHOOT,    $000,  $1a0 ; NOCTOWL
	mon_cry CRY_KARRABLAST,  $00e,  $0d7 ; KARRABLAST
	mon_cry CRY_CUBCHOO,    -$047,  $160 ; ESCAVALIER
	mon_cry CRY_SHELMET,     $00f,  $0af ; SHELMET
	mon_cry CRY_SHELMET,    -$2c3,  $0c4 ; ACCELGOR
	mon_cry CRY_CYNDAQUIL,   $3c9,  $140 ; CHINCHOU
	mon_cry CRY_CYNDAQUIL,   $2d0,  $110 ; LANTURN
	mon_cry CRY_TOGEPI,      $010,  $100 ; TOGEPI
	mon_cry CRY_TOGETIC,     $03b,  $038 ; TOGETIC
	mon_cry CRY_TOGETIC,     $03b,  $038 ; TOGEKISS
	mon_cry CRY_NATU,       -$067,  $100 ; NATU
	mon_cry CRY_NATU,       -$0a7,  $168 ; XATU
	mon_cry CRY_MAREEP,      $022,  $0d8 ; MAREEP
	mon_cry CRY_MAREEP,     -$007,  $180 ; FLAAFFY
	mon_cry CRY_AMPHAROS,   -$07c,  $0e8 ; AMPHAROS
	mon_cry CRY_SPEAROW,     $795,  $0a7 ; ABSOL
	mon_cry CRY_MARILL,      $11b,  $120 ; MARILL
	mon_cry CRY_MARILL,      $0b6,  $180 ; AZUMARILL
	mon_cry CRY_CLEFFA,     -$050,  $0bc ; BONSLY
	mon_cry CRY_CLEFFA,      $f40,  $180 ; SUDOWOODO
	mon_cry CRY_WOOPER,      $030,  $0d0 ; LITWICK
	mon_cry CRY_CLEFAIRY,   -$02e,  $1dd ; LAMPENT
	mon_cry CRY_ENTEI,       $078,  $4c0 ; CHANDELURE
	mon_cry CRY_AIPOM,      -$051,  $0e8 ; AIPOM
	mon_cry CRY_AIPOM,      -$051,  $0e8 ; AMBIPOM
	mon_cry CRY_NIDORAN_M,   $ff9,  $180 ; ELGYEM
	mon_cry CRY_NIDORAN_M,   $fc5,  $3d0 ; BEHEEYEM
	mon_cry CRY_TOTODILE,    $031,  $0c8 ; YANMA
	mon_cry CRY_TOTODILE,    $031,  $0c8 ; YANMEGA
	mon_cry CRY_WOOPER,      $093,  $0af ; WOOPER
	mon_cry CRY_WOOPER,     -$0c6,  $140 ; CLODSIRE
	mon_cry CRY_MARILL,     -$01f,  $180 ; MURKROW
	mon_cry CRY_MARILL,     -$01f,  $180 ; HONCHKROW
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; MISDREAVUS
	mon_cry CRY_HOOTHOOT,    $130,  $0e8 ; MISMAGIUS
	mon_cry CRY_SUNFLORA,    $122,  $110 ; BASCULIN
	mon_cry CRY_SUNFLORA,    $222,  $210 ; BASCLEGION
	mon_cry CRY_AMPHAROS,    $1c8,  $190 ; SKORUPI
	mon_cry CRY_CLEFFA,     -$33e,  $200 ; DRAPION
	mon_cry CRY_GIRAFARIG,   $041,  $200 ; GIRAFARIG
	mon_cry CRY_GIRAFARIG,   $041,  $200 ; FARIGIRAF
	mon_cry CRY_MANTINE,     $032,  $080 ; FERROSEED
	mon_cry CRY_MANTINE,     $184,  $0a0 ; FERROTHORN
	mon_cry CRY_DUNSPARCE,   $1c4,  $100 ; DUNSPARCE
	mon_cry CRY_DUNSPARCE,   $1c4,  $100 ; DUDUNSPARS
	mon_cry CRY_GLIGAR,     -$102,  $100 ; GLIGAR
	mon_cry CRY_GLIGAR,     -$102,  $100 ; GLISCOR
	mon_cry CRY_DUNSPARCE,   $112,  $0e8 ; SNUBBULL
	mon_cry CRY_DUNSPARCE,   $000,  $180 ; GRANBULL
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; QWILFISH
	mon_cry CRY_SLOWKING,    $160,  $0e0 ; OVERQWIL
	mon_cry CRY_AMPHAROS,    $035,  $0e0 ; HERACROSS
	mon_cry CRY_WOOPER,      $053,  $0af ; SNEASEL
	mon_cry CRY_WOOPER,      $053,  $0af ; SNEASEL
	mon_cry CRY_TEDDIURSA,   $7a2,  $06e ; TEDDIURSA
	mon_cry CRY_TEDDIURSA,   $640,  $0d8 ; URSARING
	mon_cry CRY_TEDDIURSA,   $640,  $0d8 ; URSALUNA
	mon_cry CRY_SLUGMA,     -$1d8,  $140 ; SLUGMA
	mon_cry CRY_MAGCARGO,   -$20d,  $1c0 ; MAGCARGO
	mon_cry CRY_CYNDAQUIL,   $1fe,  $140 ; SWINUB
	mon_cry CRY_MAGCARGO,   -$109,  $100 ; PILOSWINE
	mon_cry CRY_MAGCARGO,   -$109,  $100 ; MAMOSWINE
	mon_cry CRY_MAGCARGO,    $0a1,  $0e8 ; CORSOLA
	mon_cry CRY_MAGCARGO,    $0a1,  $0e8 ; CURSOLA
	mon_cry CRY_SUNFLORA,    $00d,  $100 ; REMORAID
	mon_cry CRY_TOTODILE,    $000,  $180 ; OCTILLERY
	mon_cry CRY_SLOWKING,    $104,  $200 ; ORTHWORM
	mon_cry CRY_CYNDAQUIL,  -$4c7,  $0f5 ; LARVESTA
	mon_cry CRY_METAPOD,    -$420,  $1a6 ; VOLCARONA
	mon_cry CRY_AMPHAROS,    $8a9,  $096 ; SKARMINI
	mon_cry CRY_AMPHAROS,    $8a9,  $180 ; SKARMORY
	mon_cry CRY_CYNDAQUIL,   $039,  $140 ; HOUNDOUR
	mon_cry CRY_TOTODILE,   -$10a,  $100 ; HOUNDOOM
	mon_cry CRY_SENTRET,     $048,  $230 ; PHANPY
	mon_cry CRY_DONPHAN,     $000,  $1a0 ; DONPHAN
	mon_cry CRY_AIPOM,      -$160,  $180 ; STANTLER
	mon_cry CRY_AIPOM,      -$160,  $180 ; WYRDEER
	mon_cry CRY_TOTODILE,   -$170,  $180 ; BOUFFALANT
	mon_cry CRY_GLIGAR,     -$1cd,  $1a0 ; MILTANK
	mon_cry CRY_PICHU,       $f60,  $200 ; KOTORA
	mon_cry CRY_RAIKOU,      $db3,  $168 ; RAITORA
	mon_cry CRY_RAIKOU,      $cb3,  $201 ; GOROTORA
	mon_cry CRY_VENONAT,     $00e,  $0be ; BUDEW
	mon_cry CRY_AIPOM,       $041,  $0ae ; ROSELIA
	mon_cry CRY_PICHU,      -$047,  $266 ; ROSERADE
	mon_cry CRY_PICHU,       $f17,  $270 ; ELECTRIKE
	mon_cry CRY_RAICHU,      $f27,  $080 ; MANECTRIC
	mon_cry CRY_DIGLETT,    -$133,  $125 ; CROAGUNK
	mon_cry CRY_SLOWKING,    $002,  $2c6 ; TOXICROAK
	mon_cry CRY_TOGETIC,     $010,  $017 ; SWABLU
	mon_cry CRY_NIDORAN_M,   $045,  $155 ; ALTARIA
	mon_cry CRY_CYNDAQUIL,   $10e,  $050 ; DUSKULL
	mon_cry CRY_NATU,        $a5e,  $160 ; DUSCLOPS
	mon_cry CRY_MAGCARGO,   -$01a,  $2e2 ; DUSKNOIR
	mon_cry CRY_SPINARAK,    $ff3,  $060 ; LOTAD
	mon_cry CRY_FEAROW,      $680,  $090 ; LOMBRE
	mon_cry CRY_KRABBY,      $0d0,  $0fa ; LUDICOLO
	mon_cry CRY_PSYDUCK,     $26f,  $0dd ; SNORUNT
	mon_cry CRY_PSYDUCK,     $008,  $180 ; GLALIE
	mon_cry CRY_BLASTOISE,   $12b,  $0eb ; FROSLASS
	mon_cry CRY_EKANS,       $101,  $086 ; BRONZOR
	mon_cry CRY_EKANS,       $12a,  $170 ; BRONZONG
	mon_cry CRY_BULBASAUR,   $080,  $040 ; CACNEA
	mon_cry CRY_BULBASAUR,   $080,  $180 ; CACTURNE
	mon_cry CRY_GLIGAR,      $ffc,  $110 ; RALTS
	mon_cry CRY_VILEPLUME,   $008,  $100 ; KIRLIA
	mon_cry CRY_VILEPLUME,   $f22,  $163 ; GARDEVOIR
	mon_cry CRY_VILEPLUME,   $f22,  $163 ; GALLADE
	mon_cry CRY_GROWLITHE,   $080,  $0b0 ; ARON
	mon_cry CRY_WEEDLE,      $040,  $090 ; LAIRON
	mon_cry CRY_SLOWKING,    $207,  $1b2 ; AGGRON
	mon_cry CRY_CATERPIE,    $83c,  $0c0 ; AXEW
	mon_cry CRY_EKANS,       $9c5,  $170 ; FRAXURE
	mon_cry CRY_EKANS,       $7d8,  $190 ; HAXORUS
	mon_cry CRY_RAIKOU,      $05f,  $0d0 ; LARVITAR
	mon_cry CRY_SPINARAK,   -$1db,  $150 ; PUPITAR
	mon_cry CRY_RAIKOU,     -$100,  $180 ; TYRANITAR
	mon_cry CRY_NIDORAN_F,   $f26,  $0c0 ; GIBLE
	mon_cry CRY_NIDORAN_F,   $e15,  $200 ; GABITE
	mon_cry CRY_RAICHU,      $f1f,  $130 ; GARCHOMP
	mon_cry CRY_METAPOD,     $094,  $100 ; DEINO
	mon_cry CRY_VULPIX,     -$0ee,  $090 ; ZWEILOUS
	mon_cry CRY_HYDREIGON,   $000,  $0f4 ; HYDREIGON
	mon_cry CRY_NIDORAN_M,   $c00,  $300 ; DREEPY
	mon_cry CRY_KANGASKHAN,  $800,  $1d0 ; DRAKLOAK
	mon_cry CRY_KANGASKHAN,  $e00,  $2d0 ; DRAGAPULT
	mon_cry CRY_TYPHLOSION,  $000,  $100 ; LUGIA
	mon_cry CRY_AIPOM,       $000,  $180 ; HO_OH
	mon_cry CRY_ENTEI,       $14a,  $111 ; CELEBI
	mon_cry CRY_HOOTHOOT,    $162,  $100 ; NOWN
	mon_cry CRY_DROWZEE,     $000,  $000 ; MISSINGNO
