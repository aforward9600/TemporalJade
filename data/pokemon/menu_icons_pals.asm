icon_pals: MACRO
	dn PAL_ICON_\1, PAL_ICON_\2
ENDM

	icon_pals RED, RED
	icon_pals RED, BLUE ; EGG
	icon_pals RED, RED ; NULL
	icon_pals RED, RED ; NULL

MonMenuIconPals:
	table_width 1, MonMenuIconPals
	;		normal, shiny
	icon_pals RED,    RED    ; NULL
	icon_pals GREEN,  TEAL   ; ROWLET
	icon_pals GREEN,  TEAL   ; DARTRIX
	icon_pals GREEN,  TEAL   ; DECIDUEYE
	icon_pals RED,    BROWN  ; TEPIG
	icon_pals RED,    BLUE   ; PIGNITE
	icon_pals RED,    BLUE   ; EMBOAR
	icon_pals BLUE,   PINK   ; MUDKIP
	icon_pals BLUE,   PINK   ; MARSHTOMP
	icon_pals BLUE,   PINK   ; SWAMPERT
	icon_pals RED,    PINK   ; PIKIPEK
	icon_pals RED,    PINK   ; TRUMBEAK
	icon_pals RED,    PINK   ; TOUCANNON
	icon_pals BROWN,  GREEN  ; WEEDLE
	icon_pals BROWN,  GREEN  ; KAKUNA
	icon_pals BROWN,  BLUE   ; BEEDRILL
	icon_pals BROWN,  BROWN  ; PIDGEY
	icon_pals BROWN,  BROWN  ; PIDGEOTTO
	icon_pals RED,    BROWN  ; PIDGEOTTO
	icon_pals PURPLE, GRAY   ; RATTATA
	icon_pals BROWN,  RED    ; RATICATE
	icon_pals RED,    RED    ; SPEAROW
	icon_pals BROWN,  BROWN  ; FEAROW
	icon_pals PURPLE, TEAL   ; EKANS
	icon_pals PURPLE, GREEN  ; ARBOK
	icon_pals RED,    RED    ; PICHU
	icon_pals RED,    TEAL   ; PIKACHU
	icon_pals RED,    BROWN  ; RAICHU
	icon_pals BROWN,  GRAY   ; SANDSHREW
	icon_pals BROWN,  RED    ; SANDSLASH
	icon_pals BLUE,   PINK   ; NIDORAN_F
	icon_pals BLUE,   PINK   ; NIDORINA
	icon_pals BLUE,   PINK   ; NIDOQUEEN
	icon_pals PURPLE, BLUE   ; NIDORAN_M
	icon_pals PURPLE, BLUE   ; NIDORINA
	icon_pals PURPLE, BLUE   ; NIDOKING
	icon_pals PINK,   GREEN  ; CLEFFA
	icon_pals PINK,   GREEN  ; CLEFAIRY
	icon_pals PINK,   GREEN  ; CLEFABLE
	icon_pals RED,    GRAY   ; VULPIX
	icon_pals RED,    GRAY   ; NINETALES
	icon_pals PINK,   GREEN  ; IGGLYBUFF
	icon_pals PINK,   GREEN  ; JIGGLYPUFF
	icon_pals PINK,   GREEN  ; WIGGLYTUFF
	icon_pals BLUE,   GREEN  ; ZUBAT
	icon_pals BLUE,   RED    ; GOLBAT
	icon_pals PURPLE, PINK   ; CROBAT
	icon_pals GREEN,  BROWN  ; ODDISH
	icon_pals RED,    BROWN  ; GLOOM
	icon_pals RED,    BROWN  ; VILEPLUME
	icon_pals GREEN,  RED    ; BELLOSSOM
	icon_pals RED,    BROWN  ; PARAS
	icon_pals RED,    BROWN  ; PARASECT
	icon_pals RED,    BLUE   ; VENONAT
	icon_pals PURPLE, BLUE   ; VENOMOTH
	icon_pals BROWN,  PURPLE ; DIGLETT
	icon_pals BROWN,  PURPLE ; DUGTRIO
	icon_pals BROWN,  PURPLE ; MEOWTH
	icon_pals BROWN,  PURPLE ; PERSIAN
	icon_pals RED,    PURPLE ; PSYDUCK
	icon_pals TEAL,   BLUE   ; GOLDUCK
	icon_pals BROWN,  GREEN  ; MANKEY
	icon_pals BROWN,  TEAL   ; PRIMAPE
	icon_pals GRAY,   BLUE   ; ANNIHILAPE
	icon_pals RED,    BROWN  ; GROWLITHE
	icon_pals RED,    BROWN  ; ARCANINE
	icon_pals RED,    BLUE   ; POLIWAG
	icon_pals BLUE,   TEAL   ; POLIWHIRL
	icon_pals BLUE,   TEAL   ; POLIWRATH
	icon_pals GREEN,  TEAL   ; POLITOED
	icon_pals BROWN,  PURPLE ; ABRA
	icon_pals BROWN,  PURPLE ; KADABRA
	icon_pals BROWN,  PURPLE ; ALAKAZAM
	icon_pals BROWN,  GRAY   ; MACHOP
	icon_pals BROWN,  GRAY   ; MACHOKE
	icon_pals BROWN,  GRAY   ; MACHAMP
	icon_pals GREEN,  PURPLE ; BELLSPROUT
	icon_pals GREEN,  PURPLE ; WEEPINBELL
	icon_pals GREEN,  BLUE   ; VICTREEBEL
	icon_pals BLUE,   TEAL   ; TENTACOOL
	icon_pals BLUE,   TEAL   ; TENTACRUEL
	icon_pals BROWN,  RED    ; GEODUDE
	icon_pals BROWN,  RED    ; GRAVELER
	icon_pals BROWN,  RED    ; GOLEM
	icon_pals RED,    GRAY   ; PONYTA
	icon_pals RED,    PURPLE ; RAPIDASH
	icon_pals RED,    PURPLE ; SLOWPOKE
	icon_pals RED,    PURPLE ; SLOWBRO
	icon_pals RED,    PURPLE ; SLOWKING
	icon_pals GRAY,   BROWN  ; MAGNEMITE
	icon_pals GRAY,   BROWN  ; MAGNETON
	icon_pals GRAY,   BROWN  ; MAGNEZONE
	icon_pals BROWN,  BLUE   ; FARFETCH_D
	icon_pals BROWN,  PINK   ; DODUO
	icon_pals BROWN,  PINK   ; DODRIO
	icon_pals BLUE,   GRAY   ; SEEL
	icon_pals BLUE,   GRAY   ; DEWGONG
	icon_pals PURPLE, GREEN  ; GRIMER
	icon_pals PURPLE, GREEN  ; MUK
	icon_pals PURPLE, RED    ; SHELLDER
	icon_pals PURPLE, BLUE   ; CLOYSTER
	icon_pals PURPLE, BLUE   ; GASTLY
	icon_pals RED,    BLUE   ; HAUNTER
	icon_pals RED,    PURPLE ; GENGAR
	icon_pals GRAY,   GREEN  ; ONIX
	icon_pals GRAY,   BROWN  ; STEELIX
	icon_pals BROWN,  PURPLE ; DROWZE
	icon_pals RED,    PINK   ; HYPNO
	icon_pals RED,    GRAY   ; KRABBY
	icon_pals RED,    GRAY   ; KINGLER
	icon_pals RED,    BLUE   ; VOLTORB
	icon_pals RED,    BLUE   ; ELECTRODE
	icon_pals PINK,   GREEN  ; EXEGGCUTE
	icon_pals GREEN,  RED    ; EXEGGUTOR
	icon_pals BROWN,  TEAL   ; CUBONE
	icon_pals BROWN,  TEAL   ; MAROWAK
	icon_pals BROWN,  BLUE   ; TYROGUE
	icon_pals BROWN,  TEAL   ; HITMONLEE
	icon_pals BROWN,  BLUE   ; HITMONCHAN
	icon_pals RED,    PURPLE ; HITMONTOP
	icon_pals PINK,   RED    ; LICKITUNG
	icon_pals PINK,   RED    ; LICKILICKY
	icon_pals PURPLE, BLUE   ; KOFFING
	icon_pals PURPLE, BLUE   ; WEEZING
	icon_pals BROWN,  PINK   ; RHYHORN
	icon_pals BROWN,  GRAY   ; RHYDON
	icon_pals BROWN,  RED    ; RHYPERIOR
	icon_pals PINK,   PURPLE ; HAPPINY
	icon_pals PINK,   GREEN  ; CHANSEY
	icon_pals PINK,   RED    ; BLISSEY
	icon_pals BLUE,   GREEN  ; TANGELA
	icon_pals BLUE,   GREEN  ; TANGROWTH
	icon_pals BROWN,  GRAY   ; KANGASKHAN
	icon_pals BLUE,   PURPLE ; HORSEA
	icon_pals BLUE,   PURPLE ; SEADRA
	icon_pals BLUE,   PURPLE ; KINGDRA
	icon_pals RED,    PINK   ; GOLDEEN
	icon_pals RED,    TEAL   ; SEAKING
	icon_pals RED,    BLUE   ; STARYU
	icon_pals PURPLE, BLUE   ; STARMIE
	icon_pals PINK,   GREEN  ; MIME_JR
	icon_pals PINK,   GREEN  ; MR_MIME
	icon_pals GREEN,  RED    ; SCYTHER
	icon_pals RED,    GREEN  ; SCIZOR
	icon_pals PINK,   GREEN  ; SMOOCHUM
	icon_pals RED,    GREEN  ; JYNX
	icon_pals RED,    PINK   ; ELEKID
	icon_pals RED,    GREEN  ; ELECTABUZZ
	icon_pals RED,    GREEN  ; ELECTIVIRE
	icon_pals RED,    PINK   ; MAGBY
	icon_pals RED,    PINK   ; MAGMAR
	icon_pals RED,    PINK   ; MAGMORTAR
	icon_pals BROWN,  BLUE   ; PINSIR
	icon_pals BROWN,  TEAL   ; TAUROS
	icon_pals RED,    PINK   ; MAGIKARP
	icon_pals BLUE,   RED    ; GYARADOS
	icon_pals BLUE,   PURPLE ; LAPRAS
	icon_pals PINK,   BLUE   ; DITTO
	icon_pals BROWN,  GRAY   ; EEVEE
	icon_pals BLUE,   PURPLE ; VAPOREON
	icon_pals PINK,   BROWN  ; JOLTEON
	icon_pals RED,    PINK   ; FLAREON
	icon_pals BLUE,   GREEN  ; ESPEON
	icon_pals BROWN,  BLUE   ; UMBREON
	icon_pals GREEN,  BROWN  ; LEAFEON
	icon_pals BLUE,   TEAL   ; GLACEON
	icon_pals PINK,   BLUE   ; SYLVEON
	icon_pals PINK,   BLUE   ; PORYGON
	icon_pals PINK,   BLUE   ; PORYGON2
	icon_pals PINK,   BLUE   ; PORYGON_Z
	icon_pals BLUE,   BROWN  ; OMANYTE
	icon_pals BLUE,   BROWN  ; OMASTAR
	icon_pals BROWN,  TEAL   ; KABUTO
	icon_pals BROWN,  TEAL   ; KABUTOPS
	icon_pals GRAY,   PURPLE ; AERODACTYL
	icon_pals BROWN,  BLUE   ; MUNCHLAX
	icon_pals BROWN,  BLUE   ; SNORLAX
	icon_pals BLUE,   TEAL   ; ARTICUNO
	icon_pals BROWN,  RED    ; ZAPDOS
	icon_pals RED,    PINK   ; MOLTRES
	icon_pals BLUE,   PINK   ; DRATINI
	icon_pals BLUE,   PINK   ; DRAGONAIR
	icon_pals RED,    PINK   ; DRAGONITE
	icon_pals GRAY,   GRAY   ; MEWTWO
	icon_pals PINK,   BLUE   ; MEW
	icon_pals GREEN,  RED    ; CHIKORITA
	icon_pals GREEN,  RED    ; BAYLEEF
	icon_pals GREEN,  RED    ; MEGANIUM
	icon_pals RED,    PURPLE ; CYNDAQUIL
	icon_pals RED,    PURPLE ; QUILAVA
	icon_pals RED,    PURPLE ; TYPHLOSION
	icon_pals BLUE,   TEAL   ; TOTODILE
	icon_pals BLUE,   TEAL   ; CROCONAW
	icon_pals BLUE,   TEAL   ; FERALIGATR
	icon_pals BROWN,  PURPLE ; SENTRET
	icon_pals BROWN,  PINK   ; FURRET
	icon_pals BROWN,  TEAL   ; HOOTHOOT
	icon_pals BROWN,  TEAL   ; NOCTOWL
	icon_pals RED,    PINK   ; LEDYBA
	icon_pals RED,    PINK   ; LEDIAN
	icon_pals GREEN,  PURPLE ; SPINARAK
	icon_pals RED,    PURPLE ; ARIADOS
	icon_pals BLUE,   TEAL   ; CHINCHOU
	icon_pals BLUE,   TEAL   ; LANTURN
	icon_pals RED,    BLUE   ; TOGEPI
	icon_pals RED,    BLUE   ; TOGETIC
	icon_pals RED,    BLUE   ; TOGEKISS
	icon_pals GREEN,  TEAL   ; NATU
	icon_pals GREEN,  TEAL   ; XATU
	icon_pals BLUE,   PINK   ; MAREEP
	icon_pals RED,    PINK   ; FAAFFY
	icon_pals RED,    PURPLE ; AMPHAROS
	icon_pals BLUE,   GREEN  ; AZURILL
	icon_pals BLUE,   GREEN  ; MARILL
	icon_pals BLUE,   RED    ; AZUMARILL
	icon_pals GREEN,  RED    ; BONSLY
	icon_pals GREEN,  RED    ; SUDOWOODO
	icon_pals RED,    GREEN  ; HOPPIP
	icon_pals GREEN,  PURPLE ; SKIPLOOM
	icon_pals BLUE,   PINK   ; JUMPLUFF
	icon_pals PURPLE, PINK   ; AIPOM
	icon_pals PURPLE, PINK   ; AMBIPOM
	icon_pals GREEN,  TEAL   ; SUNKERN
	icon_pals GREEN,  RED    ; SUNFLORA
	icon_pals RED,    BLUE   ; YANMA
	icon_pals GREEN,  TEAL   ; YANMEGA
	icon_pals BLUE,   PINK   ; WOOPER
	icon_pals BLUE,   PINK   ; QUAGSIRE
	icon_pals BLUE,   PURPLE ; MURKROW
	icon_pals BLUE,   PURPLE ; HONCHKROW
	icon_pals RED,    BLUE   ; MISDREAVUS
	icon_pals PINK,   BLUE   ; MISMAGIUS
	icon_pals BROWN,  BROWN  ; UNOWN
	icon_pals BLUE,   PURPLE ; WYNAUT
	icon_pals BLUE,   PURPLE ; WOBBUFFET
	icon_pals PURPLE, BLUE   ; GIRAFARIG
	icon_pals BROWN,  RED    ; FARIGIRAF
	icon_pals BLUE,   BROWN  ; PINECO
	icon_pals RED,    BROWN  ; FORRETRESS
	icon_pals BLUE,   PINK   ; DUNSPARCE
	icon_pals BLUE,   PINK   ; DUDUNSPARS
	icon_pals PURPLE, BLUE   ; GLIGAR
	icon_pals PURPLE, BLUE   ; GLISCOR
	icon_pals PINK,   BLUE   ; SNUBBULL
	icon_pals PURPLE, TEAL   ; GRANBULL
	icon_pals BLUE,   RED    ; QWILFISH
	icon_pals RED,    BLUE   ; SHUCKLE
	icon_pals BLUE,   PURPLE ; HERACROSS
	icon_pals RED,    PINK   ; SNEASEL
	icon_pals RED,    PINK   ; WEAVILE
	icon_pals BROWN,  RED    ; TEDDIURSA
	icon_pals BROWN,  GRAY   ; URSARING
	icon_pals BROWN,  RED    ; URSALUNA
	icon_pals RED,    GRAY   ; SLUGMA
	icon_pals RED,    BLUE   ; MAGCARGO
	icon_pals BROWN,  BLUE   ; SWINUB
	icon_pals BROWN,  BLUE   ; PILOSWINE
	icon_pals BROWN,  RED    ; MAMOSWINE
	icon_pals PINK,   PURPLE ; CORSOLA
	icon_pals PINK,   PURPLE ; CURSOLA
	icon_pals BLUE,   GRAY   ; REMORAID
	icon_pals RED,    GREEN  ; OCTILLERY
	icon_pals RED,    PINK   ; DELIBIRD
	icon_pals BLUE,   TEAL   ; MANTYKE
	icon_pals BLUE,   TEAL   ; MANTINE
	icon_pals RED,    GREEN  ; SKARMINI
	icon_pals RED,    GREEN  ; SKARMORY
	icon_pals RED,    GRAY   ; HOUNDOUR
	icon_pals RED,    GRAY   ; HOUNDOOM
	icon_pals BLUE,   RED    ; PHANPY
	icon_pals BROWN,  RED    ; DONPHAN
	icon_pals BROWN,  GREEN  ; STANTLER
	icon_pals GRAY,   GREEN  ; WYRDEER
	icon_pals BROWN,  GREEN  ; SMEARGLE
	icon_pals PINK,   BLUE   ; MILTANK
	icon_pals RED,    BROWN  ; KOTORA
	icon_pals RED,    BROWN  ; RAITORA
	icon_pals RED,    BROWN  ; GOROTORA
	icon_pals GREEN,  TEAL   ; BUDEW
	icon_pals GREEN,  PURPLE ; ROSELIA
	icon_pals GREEN,  PURPLE ; ROSERADE
	icon_pals GREEN,  BLUE   ; ELECTRIKE
	icon_pals BLUE,   GRAY   ; MANECTRIC
	icon_pals BLUE,   TEAL   ; CROAGUNK
	icon_pals BLUE,   TEAL   ; TOXICROAK
	icon_pals BLUE,   PINK   ; SWABLU
	icon_pals BLUE,   PINK   ; ALTARIA
	icon_pals GRAY,   PINK   ; DUSKULL
	icon_pals GRAY,   PINK   ; DUSCLOPS
	icon_pals GRAY,   BLUE   ; DUSKNOIR
	icon_pals GREEN,  BLUE   ; LOTAD
	icon_pals GREEN,  BLUE   ; LOMBRE
	icon_pals GREEN,  BLUE   ; LUDICOLO
	icon_pals RED,    BLUE   ; SNORUNT
	icon_pals BLUE,   RED    ; GLALIE
	icon_pals RED,    PURPLE ; FROSLASS
	icon_pals BLUE,   GREEN  ; BRONZOR
	icon_pals BLUE,   GREEN  ; BRONZONG
	icon_pals GREEN,  RED    ; CACNEA
	icon_pals GREEN,  RED    ; CACTURNE
	icon_pals GREEN,  BLUE   ; RALTS
	icon_pals GREEN,  BLUE   ; KIRLIA
	icon_pals GREEN,  BLUE   ; GARDEVOIR
	icon_pals GREEN,  BLUE   ; GALLADE
	icon_pals GRAY,   TEAL   ; ARON
	icon_pals GRAY,   TEAL   ; LAIRON
	icon_pals GRAY,   TEAL   ; AGGRON
	icon_pals RED,    PINK   ; RAIKOU
	icon_pals RED,    BROWN  ; ENTEI
	icon_pals BLUE,   TEAL   ; SUICUNE
	icon_pals GREEN,  PURPLE ; LARVITAR
	icon_pals BLUE,   PURPLE ; PUPITAR
	icon_pals GREEN,  GRAY   ; TYRANITAR
	icon_pals BLUE,   PINK   ; GIBLE
	icon_pals BLUE,   PINK   ; GABITE
	icon_pals BLUE,   PINK   ; GARCHOMP
	icon_pals BLUE,   PINK   ; BAGON
	icon_pals BLUE,   PINK   ; SHELGON
	icon_pals BLUE,   PINK   ; SALAMENCE
	icon_pals BLUE,   RED    ; LUGIA
	icon_pals RED,    GREEN  ; HO_OH
	icon_pals GREEN,  PINK   ; CELEBI
	icon_pals GRAY,   BLUE   ; NOWN
	icon_pals GRAY,   GRAY   ; MISSINGO.
