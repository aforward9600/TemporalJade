SECTION "Evolutions and Attacks 1", ROMX

EvosAttacksPointers1::
	dw RowletEvosAttacks
	dw DartrixEvosAttacks
	dw DecidueyeEvosAttacks
	dw TepigEvosAttacks
	dw PigniteEvosAttacks
	dw EmboarEvosAttacks
	dw MudkipEvosAttacks
	dw MarshtompEvosAttacks
	dw SwampertEvosAttacks
	dw PikipekEvosAttacks
	dw TrumbeakEvosAttacks
	dw ToucannonEvosAttacks
	dw LillipupEvosAttacks
	dw HerdierEvosAttacks
	dw StoutlandEvosAttacks
	dw VenipedeEvosAttacks
	dw WhirlipedeEvosAttacks
	dw ScolipedeEvosAttacks
	dw CutieflyEvosAttacks
	dw RibombeeEvosAttacks
	dw SpearowEvosAttacks
	dw FearowEvosAttacks
	dw EkansEvosAttacks
	dw ArbokEvosAttacks
	dw PikachuEvosAttacks
	dw RaichuEvosAttacks
	dw DrilburEvosAttacks
	dw ExcadrillEvosAttacks
	dw SewaddleEvosAttacks
	dw SwadloonEvosAttacks
	dw LeavannyEvosAttacks
	dw YamaskEvosAttacks
	dw CofagrigusEvosAttacks
	dw RunerigusEvosAttacks
	dw CleffaEvosAttacks
	dw ClefairyEvosAttacks
	dw ClefableEvosAttacks
	dw VulpixEvosAttacks
	dw NinetalesEvosAttacks
	dw RoggenrolaEvosAttacks
	dw BoldoreEvosAttacks
	dw GigalithEvosAttacks
	dw ZubatEvosAttacks
	dw GolbatEvosAttacks
	dw CrobatEvosAttacks
	dw CottoneeEvosAttacks
	dw WhimsicottEvosAttacks
	dw PetililEvosAttacks
	dw LilligantEvosAttacks
	dw JoltikEvosAttacks
	dw GalvantulaEvosAttacks
	dw MinccinoEvosAttacks
	dw CinccinoEvosAttacks
	dw SandygastEvosAttacks
	dw PalossandEvosAttacks
	dw PurrloinEvosAttacks
	dw LiepardEvosAttacks
	dw PsyduckEvosAttacks
	dw GolduckEvosAttacks
	dw MankeyEvosAttacks
	dw PrimeapeEvosAttacks
	dw AnnihilapeEvosAttacks
	dw GrowlitheEvosAttacks
	dw ArcanineEvosAttacks
	dw PoliwagEvosAttacks
	dw PoliwhirlEvosAttacks
	dw PoliwrathEvosAttacks
	dw PolitoedEvosAttacks
	dw SolosisEvosAttacks
	dw DuosionEvosAttacks
	dw ReuniclusEvosAttacks
	dw TimburrEvosAttacks
	dw GurdurrEvosAttacks
	dw ConkeldurrEvosAttacks
	dw BellsproutEvosAttacks
	dw WeepinbellEvosAttacks
	dw VictreebelEvosAttacks
	dw TentacoolEvosAttacks
	dw TentacruelEvosAttacks
	dw GeodudeEvosAttacks
	dw GravelerEvosAttacks
	dw GolemEvosAttacks
	dw PonytaEvosAttacks
	dw RapidashEvosAttacks
	dw SlowpokeEvosAttacks
	dw SlowbroEvosAttacks
	dw SlowkingEvosAttacks
	dw MagnemiteEvosAttacks
	dw MagnetonEvosAttacks
	dw MagnezoneEvosAttacks
	dw FarfetchDEvosAttacks
	dw SirfetchDEvosAttacks
	dw DoduoEvosAttacks
	dw DodrioEvosAttacks
	dw SeelEvosAttacks
	dw DewgongEvosAttacks
	dw GrimerEvosAttacks
	dw MukEvosAttacks
	dw MareanieEvosAttacks
	dw ToxapexEvosAttacks
	dw GastlyEvosAttacks
	dw HaunterEvosAttacks
	dw GengarEvosAttacks
	dw OnixEvosAttacks
	dw SteelixEvosAttacks
	dw DrowzeeEvosAttacks
	dw HypnoEvosAttacks
	dw CorphishEvosAttacks
	dw CrawdauntEvosAttacks
	dw VoltorbEvosAttacks
	dw ElectrodeEvosAttacks
	dw ExeggcuteEvosAttacks
	dw ExeggutorEvosAttacks
	dw CuboneEvosAttacks
	dw MarowakEvosAttacks
	dw ScraggyEvosAttacks
	dw ScraftyEvosAttacks
	dw RioluEvosAttacks
	dw LucarioEvosAttacks
	dw LickitungEvosAttacks
	dw LickilickyEvosAttacks
	dw KoffingEvosAttacks
	dw WeezingEvosAttacks
	dw RhyhornEvosAttacks
	dw RhydonEvosAttacks
	dw RhyperiorEvosAttacks
	dw HappinyEvosAttacks
	dw ChanseyEvosAttacks
	dw BlisseyEvosAttacks
	dw TangelaEvosAttacks
	dw TangrowthEvosAttacks
	dw KangaskhanEvosAttacks
	dw HorseaEvosAttacks
	dw SeadraEvosAttacks
	dw KingdraEvosAttacks
	dw GolettEvosAttacks
	dw GolurkEvosAttacks
	dw StaryuEvosAttacks
	dw StarmieEvosAttacks
	dw MimeJrEvosAttacks
	dw MrMimeEvosAttacks
	dw ScytherEvosAttacks
	dw ScizorEvosAttacks
	dw SmoochumEvosAttacks
	dw JynxEvosAttacks
	dw ElekidEvosAttacks
	dw ElectabuzzEvosAttacks
	dw ElectivireEvosAttacks
	dw MagbyEvosAttacks
	dw MagmarEvosAttacks
	dw MagmortarEvosAttacks
	dw PinsirEvosAttacks

RowletEvosAttacks:
	dbbw EVOLVE_LEVEL, 17, DARTRIX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, ABSORB
	dbw 11, PECK
	dbw 14, RAZOR_LEAF
	dbw 16, OMINOUS_WIND
	dbw 18, FORESIGHT
	dbw 22, WING_ATTACK
	dbw 25, SYNTHESIS
	dbw 29, FURY_ATTACK
	dbw 32, SUCKER_PUNCH
	dbw 36, LEAF_BLADE
	dbw 39, FEATHERDANCE
	dbw 43, BRAVE_BIRD
	dbw 46, NASTY_PLOT
	db 0 ; no more level-up moves

DartrixEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, DECIDUEYE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, ABSORB
	dbw 11, PECK
	dbw 14, RAZOR_LEAF
	dbw 16, OMINOUS_WIND
	dbw 19, FORESIGHT
	dbw 24, WING_ATTACK
	dbw 28, SYNTHESIS
	dbw 33, FURY_ATTACK
	dbw 37, SUCKER_PUNCH
	dbw 42, LEAF_BLADE
	dbw 46, FEATHERDANCE
	dbw 51, BRAVE_BIRD
	dbw 55, NASTY_PLOT
	db 0 ; no more level-up moves

DecidueyeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_CLAW
	dbw 1, SHADOW_CLAW
	dbw 1, TACKLE
	dbw 4, GROWL
	dbw 8, ABSORB
	dbw 11, PECK
	dbw 14, RAZOR_LEAF
	dbw 16, OMINOUS_WIND
	dbw 19, FORESIGHT
	dbw 24, WING_ATTACK
	dbw 28, SYNTHESIS
	dbw 33, FURY_ATTACK
	dbw 38, SUCKER_PUNCH
	dbw 44, LEAF_BLADE
	dbw 49, FEATHERDANCE
	dbw 55, BRAVE_BIRD
	dbw 60, NASTY_PLOT

TepigEvosAttacks:
	dbbw EVOLVE_LEVEL, 17, PIGNITE
	db 0 ; no more evolutions
	dbw 1, ENCORE
	dbw 3, EMBER
	dbw 3, SLASH
	dbw 3, DESTINY_BOND
	dbw 7, EMBER
	dbw 9, ODOR_SLEUTH
	dbw 15, FLAME_CHARGE
	dbw 19, SMOG
	dbw 21, ROLLOUT
	dbw 25, TAKE_DOWN
	dbw 27, FIRE_FANG
	dbw 31, PAYBACK
	dbw 33, FLAMETHROWER
	dbw 37, HEAD_SMASH
	dbw 39, ROAR
	dbw 43, FLARE_BLITZ
	db 0 ; no more level-up moves

PigniteEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, EMBOAR
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, KARATE_CHOP
	dbw 1, KARATE_CHOP
	dbw 1, TACKLE
	dbw 3, TAIL_WHIP
	dbw 7, EMBER
	dbw 9, ODOR_SLEUTH
	dbw 15, FLAME_CHARGE
	dbw 20, SMOG
	dbw 23, ROLLOUT
	dbw 28, TAKE_DOWN
	dbw 31, FIRE_FANG
	dbw 36, PAYBACK
	dbw 39, FLAMETHROWER
	dbw 44, HEAD_SMASH
	dbw 47, ROAR
	dbw 52, FLARE_BLITZ
	db 0 ; no more level-up moves

EmboarEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, HAMMER_ARM
	dbw 1, HAMMER_ARM
	dbw 1, TACKLE
	dbw 3, TAIL_WHIP
	dbw 7, EMBER
	dbw 9, ODOR_SLEUTH
	dbw 15, FLAME_CHARGE
	dbw 20, SMOG
	dbw 23, ROLLOUT
	dbw 28, TAKE_DOWN
	dbw 31, FIRE_FANG
	dbw 38, PAYBACK
	dbw 43, FLAMETHROWER
	dbw 50, HEAD_SMASH
	dbw 55, ROAR
	dbw 62, FLARE_BLITZ
	db 0 ; no more level-up moves

MudkipEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MARSHTOMP
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, HYPER_BEAM
	dbw 7, WATER_GUN
	dbw 10, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 17, AQUA_JET
	dbw 20, AQUA_RING
	dbw 25, ROCK_THROW
	dbw 28, PROTECT
	dbw 33, AQUA_TAIL
	dbw 36, TAKE_DOWN
	dbw 41, DOUBLE_EDGE
	dbw 44, WAVE_CRASH
	db 0 ; no more level-up moves

MarshtompEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, SWAMPERT
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, MUD_SHOT
	dbw 1, MUD_SHOT
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 7, WATER_GUN
	dbw 10, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 18, AQUA_JET
	dbw 22, MUD_BOMB
	dbw 28, ROCK_SLIDE
	dbw 32, PROTECT
	dbw 38, MUDDY_WATER
	dbw 42, TAKE_DOWN
	dbw 48, EARTHQUAKE
	dbw 52, WAVE_CRASH
	db 0 ; no more level-up moves

SwampertEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, MUD_SHOT
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 7, WATER_GUN
	dbw 10, MUD_SLAP
	dbw 12, FORESIGHT
	dbw 18, AQUA_JET
	dbw 22, MUD_BOMB
	dbw 28, ROCK_SLIDE
	dbw 32, PROTECT
	dbw 39, MUDDY_WATER
	dbw 44, TAKE_DOWN
	dbw 51, EARTHQUAKE
	dbw 56, WAVE_CRASH
	dbw 63, HAMMER_ARM
	db 0 ; no more level-up moves

PikipekEvosAttacks:
	dbbw EVOLVE_LEVEL, 14, TRUMBEAK
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 3, GROWL
	dbw 7, ECHOED_VOICE
	dbw 9, ROCK_SMASH
	dbw 13, SUPERSONIC
	dbw 15, WING_ATTACK
	dbw 19, ROOST
	dbw 21, FURY_ATTACK
	dbw 25, SCREECH
	dbw 27, DRILL_PECK
	dbw 31, BULLET_SEED
	dbw 33, FEATHERDANCE
	dbw 37, HYPER_VOICE
	db 0 ; no more level-up moves

TrumbeakEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, TOUCANNON
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 3, GROWL
	dbw 7, ECHOED_VOICE
	dbw 9, ROCK_SMASH
	dbw 13, SUPERSONIC
	dbw 16, WING_ATTACK
	dbw 21, ROOST
	dbw 24, FURY_ATTACK
	dbw 29, SCREECH
	dbw 32, DRILL_PECK
	dbw 37, BULLET_SEED
	dbw 40, FEATHERDANCE
	dbw 45, HYPER_VOICE
	db 0 ; no more level-up moves

ToucannonEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 3, GROWL
	dbw 7, ECHOED_VOICE
	dbw 9, ROCK_SMASH
	dbw 13, SUPERSONIC
	dbw 16, WING_ATTACK
	dbw 21, ROOST
	dbw 24, FURY_ATTACK
	dbw 30, SCREECH
	dbw 34, DRILL_PECK
	dbw 40, BULLET_SEED
	dbw 44, FEATHERDANCE
	dbw 50, HYPER_VOICE
	db 0 ; no more level-up moves

LillipupEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, HERDIER
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 5, ODOR_SLEUTH
	dbw 8, BITE
	dbw 10, GROWL
	dbw 12, FAKE_OUT
	dbw 15, TAKE_DOWN
	dbw 19, WORK_UP
	dbw 22, CRUNCH
	dbw 26, ROAR
	dbw 29, STOMP
	dbw 33, REVERSAL
	dbw 36, DOUBLE_EDGE
	dbw 40, GIGA_IMPACT
	dbw 45, PLAY_ROUGH
	db 0 ; no more level-up moves

HerdierEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, STOUTLAND
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 5, ODOR_SLEUTH
	dbw 8, BITE
	dbw 10, GROWL
	dbw 12, FAKE_OUT
	dbw 15, TAKE_DOWN
	dbw 20, WORK_UP
	dbw 24, CRUNCH
	dbw 29, ROAR
	dbw 33, STOMP
	dbw 38, REVERSAL
	dbw 42, DOUBLE_EDGE
	dbw 47, GIGA_IMPACT
	dbw 52, PLAY_ROUGH
	db 0 ; no more level-up moves

StoutlandEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, TACKLE
	dbw 5, ODOR_SLEUTH
	dbw 8, BITE
	dbw 10, GROWL
	dbw 12, FAKE_OUT
	dbw 15, TAKE_DOWN
	dbw 20, WORK_UP
	dbw 24, CRUNCH
	dbw 29, ROAR
	dbw 36, STOMP
	dbw 42, REVERSAL
	dbw 51, DOUBLE_EDGE
	dbw 59, GIGA_IMPACT
	dbw 63, PLAY_ROUGH
	db 0 ; no more level-up moves

VenipedeEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, WHIRLIPEDE
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, ROLLOUT
	dbw 5, POISON_STING
	dbw 8, SCREECH
	dbw 12, PURSUIT
	dbw 15, PROTECT
	dbw 19, POISON_FANG
	dbw 22, PIN_MISSILE
	dbw 26, VENOSHOCK
	dbw 29, AGILITY
	dbw 33, X_SCISSOR
	dbw 36, TOXIC
	dbw 38, CROSS_POISON
	dbw 40, DOUBLE_EDGE
	dbw 43, GUNK_SHOT
	db 0 ; no more level-up moves

WhirlipedeEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SCOLIPEDE
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, IRON_DEFENSE
	dbw 1, IRON_DEFENSE
	dbw 1, DEFENSE_CURL
	dbw 1, ROLLOUT
	dbw 5, POISON_STING
	dbw 8, SCREECH
	dbw 12, PURSUIT
	dbw 15, PROTECT
	dbw 19, POISON_FANG
	dbw 23, PIN_MISSILE
	dbw 28, VENOSHOCK
	dbw 32, AGILITY
	dbw 37, X_SCISSOR
	dbw 41, TOXIC
	dbw 43, CROSS_POISON
	dbw 46, DOUBLE_EDGE
	dbw 50, GUNK_SHOT
	db 0 ; no more level-up moves

ScolipedeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, BATON_PASS
	dbw 1, BATON_PASS
	dbw 1, DEFENSE_CURL
	dbw 1, ROLLOUT
	dbw 5, POISON_STING
	dbw 8, SCREECH
	dbw 12, PURSUIT
	dbw 15, PROTECT
	dbw 19, POISON_FANG
	dbw 23, PIN_MISSILE
	dbw 28, VENOSHOCK
	dbw 33, AGILITY
	dbw 39, X_SCISSOR
	dbw 44, TOXIC
	dbw 47, CROSS_POISON
	dbw 50, DOUBLE_EDGE
	dbw 55, GUNK_SHOT
	dbw 65, MEGAHORN
	db 0 ; no more level-up moves

CutieflyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, RIBOMBEE
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, FAIRY_WIND
	dbw 7, STUN_SPORE
	dbw 10, SILVER_WIND
	dbw 13, DRAININGKISS
	dbw 16, SWEET_SCENT
	dbw 21, BUG_BUZZ
	dbw 26, DAZZLINGLEAM
	dbw 31, HEAL_BELL
	dbw 36, QUIVER_DANCE
	dbw 41, SIGNAL_WAVE
	db 0 ; no more level-up moves

RibombeeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SIGNAL_BEAM
	db 0 ; no more evolutions
	dbw 1, SIGNAL_BEAM
	dbw 1, ABSORB
	dbw 4, FAIRY_WIND
	dbw 7, STUN_SPORE
	dbw 10, SILVER_WIND
	dbw 13, DRAININGKISS
	dbw 16, SWEET_SCENT
	dbw 21, BUG_BUZZ
	dbw 28, DAZZLINGLEAM
	dbw 35, HEAL_BELL
	dbw 42, QUIVER_DANCE
	dbw 49, SIGNAL_WAVE
	db 0 ; no more level-up moves

SpearowEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, FEAROW
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, LEER
	dbw 8, PURSUIT
	dbw 11, FURY_ATTACK
	dbw 15, AERIAL_ACE
	dbw 18, MIRROR_MOVE
	dbw 22, PAYBACK
	dbw 25, AGILITY
	dbw 29, FOCUS_ENERGY
	dbw 32, ROOST
	dbw 36, DRILL_PECK
	db 0 ; no more level-up moves

FearowEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DRILL_RUN
	dbw 1, DRILL_RUN
	dbw 1, PECK
	dbw 1, GROWL
	dbw 4, LEER
	dbw 8, PURSUIT
	dbw 11, FURY_ATTACK
	dbw 15, AERIAL_ACE
	dbw 18, MIRROR_MOVE
	dbw 23, PAYBACK
	dbw 27, AGILITY
	dbw 32, FOCUS_ENERGY
	dbw 36, ROOST
	dbw 41, DRILL_PECK
	dbw 45, BRAVE_BIRD
	db 0 ; no more level-up moves

EkansEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, ARBOK
	db 0 ; no more evolutions
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 12, GLARE
	dbw 17, SCREECH
	dbw 20, ACID
	dbw 25, POISON_FANG
	dbw 28, ACID_SPRAY
	dbw 33, MUD_BOMB
	dbw 36, PAYBACK
	dbw 38, BELCH
	dbw 41, HAZE
	dbw 44, COIL
	dbw 49, GUNK_SHOT
	db 0 ; no more level-up moves

ArbokEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, CRUNCH
	dbw 1, CRUNCH
	dbw 1, WRAP
	dbw 1, LEER
	dbw 4, POISON_STING
	dbw 9, BITE
	dbw 12, GLARE
	dbw 17, SCREECH
	dbw 20, ACID
	dbw 27, POISON_FANG
	dbw 32, ACID_SPRAY
	dbw 39, MUD_BOMB
	dbw 44, PAYBACK
	dbw 48, BELCH
	dbw 51, HAZE
	dbw 56, COIL
	dbw 63, GUNK_SHOT
	db 0 ; no more level-up moves

PikachuEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, RAICHU
	db 0 ; no more evolutions
	dbw 1, THUNDERSHOCK
	dbw 1, TAIL_WHIP
	dbw 5, GROWL
	dbw 7, CHARM
	dbw 10, QUICK_ATTACK
	dbw 13, SPARK
	dbw 18, THUNDER_WAVE
	dbw 21, SWEET_KISS
	dbw 23, DOUBLE_TEAM
	dbw 26, NUZZLE
	dbw 29, DISCHARGE
	dbw 34, THUNDERBOLT
	dbw 37, SLAM
	dbw 42, WILD_CHARGE
	dbw 45, AGILITY
	dbw 50, THUNDER
	dbw 53, LIGHT_SCREEN
	dbw 58, VOLT_TACKLE
	db 0 ; no more level-up moves

RaichuEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, PSYCHIC_M
	dbw 1, PSYCHIC_M
	dbw 1, THUNDERSHOCK
	dbw 1, TAIL_WHIP
	dbw 1, QUICK_ATTACK
	dbw 1, THUNDERBOLT
	db 0 ; no more level-up moves

DrilburEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, EXCADRILL
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 5, RAPID_SPIN
	dbw 8, MUD_SLAP
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 33, EARTHQUAKE
	dbw 36, SWORDS_DANCE
	dbw 40, SANDSTORM
	dbw 43, DRILL_RUN
	dbw 47, FISSURE
	db 0 ; no more level-up moves

ExcadrillEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, HORN_DRILL
	db 0 ; no more evolutions
	dbw 1, HORN_DRILL
	dbw 1, SCRATCH
	dbw 1, GROWL
	dbw 5, RAPID_SPIN
	dbw 8, MUD_SLAP
	dbw 12, FURY_SWIPES
	dbw 15, METAL_CLAW
	dbw 22, HONE_CLAWS
	dbw 26, SLASH
	dbw 29, ROCK_SLIDE
	dbw 36, EARTHQUAKE
	dbw 42, SWORDS_DANCE
	dbw 49, SANDSTORM
	dbw 55, DRILL_RUN
	dbw 62, FISSURE
	db 0 ; no more level-up moves

SewaddleEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, SWADLOON
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 8, PIN_MISSILE
	dbw 15, RAZOR_LEAF
	dbw 22, SIGNAL_BEAM
	dbw 29, ENDURE
	dbw 31, SPIDER_WEB
	dbw 36, BUG_BUZZ
	dbw 43, FLAIL
	db 0 ; no more level-up moves

SwadloonEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, LEAVANNY
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, PROTECT
	dbw 1, PROTECT
	dbw 1, GRASSWHISTLE
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 1, PIN_MISSILE
	dbw 1, RAZOR_LEAF
	db 0 ; no more level-up moves

LeavannyEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SLASH
	dbw 1, SLASH
	dbw 1, TACKLE
	dbw 1, STRING_SHOT
	dbw 8, PIN_MISSILE
	dbw 15, RAZOR_LEAF
	dbw 22, SIGNAL_BEAM
	dbw 29, X_SCISSOR
	dbw 32, HONE_CLAWS
	dbw 36, LEAF_BLADE
	dbw 39, LEECH_LIFE
	dbw 43, HEAL_BELL
	dbw 46, SWORDS_DANCE
	dbw 50, SOLAR_BLADE
	db 0 ; no more level-up moves

YamaskEvosAttacks:
	dbbw EVOLVE_LEVEL, 34, COFAGRIGUS
	dbbw EVOLVE_ITEM, DUSK_STONE, RUNERIGUS
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 1, PROTECT
	dbw 4, HAZE
	dbw 8, NIGHT_SHADE
	dbw 12, DISABLE
	dbw 16, WILL_O_WISP
	dbw 20, SAFEGUARD
	dbw 24, HEX
	dbw 28, MEAN_LOOK
	dbw 32, SPITE
	dbw 36, CURSE
	dbw 40, SHADOW_BALL
	dbw 44, DARK_PULSE
	dbw 48, PAIN_SPLIT
	dbw 52, DESTINY_BOND
	db 0 ; no more level-up moves

CofagrigusEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_CLAW
	dbw 1, SHADOW_CLAW
	dbw 1, ASTONISH
	dbw 1, PROTECT
	dbw 4, HAZE
	dbw 8, NIGHT_SHADE
	dbw 12, DISABLE
	dbw 16, WILL_O_WISP
	dbw 20, SAFEGUARD
	dbw 24, HEX
	dbw 28, MEAN_LOOK
	dbw 32, SPITE
	dbw 38, CURSE
	dbw 44, SHADOW_BALL
	dbw 50, DARK_PULSE
	dbw 56, PAIN_SPLIT
	dbw 62, DESTINY_BOND
	db 0 ; no more level-up moves

RunerigusEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_CLAW
	dbw 1, SHADOW_CLAW
	dbw 1, ASTONISH
	dbw 1, PROTECT
	dbw 4, HAZE
	dbw 8, NIGHT_SHADE
	dbw 12, DISABLE
	dbw 16, FAINT_ATTACK
	dbw 20, SAFEGUARD
	dbw 24, HEX
	dbw 28, MEAN_LOOK
	dbw 32, SLAM
	dbw 38, CURSE
	dbw 44, SHADOW_BALL
	dbw 50, EARTHQUAKE
	dbw 56, PAIN_SPLIT
	dbw 62, DESTINY_BOND
	db 0 ; no more level-up moves

CleffaEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CLEFAIRY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, CHARM
	dbw 4, ENCORE
	dbw 7, SING
	dbw 10, SWEET_KISS
	dbw 13, MIMIC
	dbw 16, MAGICAL_LEAF
	db 0 ; no more level-up moves

ClefairyEvosAttacks:
	dbbw EVOLVE_ITEM, MOON_STONE, CLEFABLE
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 7, SING
	dbw 10, DOUBLESLAP
	dbw 13, DISARM_VOICE
	dbw 16, DEFENSE_CURL
	dbw 19, AMNESIA
	dbw 22, METRONOME
	dbw 25, ENCORE
	dbw 28, BODY_SLAM
	dbw 31, MOONLIGHT
	dbw 34, COSMIC_POWER
	dbw 37, MOONBLAST
	db 0 ; no more level-up moves

ClefableEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DRAININGKISS
	dbw 1, DRAININGKISS
	dbw 1, SING
	dbw 1, DOUBLESLAP
	dbw 1, METRONOME
	dbw 1, MOONLIGHT
	dbw 1, SOFTBOILED
	dbw 1, MOONBLAST
	dbw 1, COSMIC_POWER
	dbw 1, BODY_SLAM
	db 0 ; no more level-up moves

VulpixEvosAttacks:
	dbbw EVOLVE_ITEM, ICE_STONE, NINETALES
	db 0 ; no more evolutions
	dbw 1, POWDER_SNOW
	dbw 4, TAIL_WHIP
	dbw 7, ROAR
	dbw 9, GROWL
	dbw 10, ICE_SHARD
	dbw 12, CONFUSE_RAY
	dbw 15, ICY_WIND
	dbw 18, PAYBACK
	dbw 20, MIST
	dbw 23, FAINT_ATTACK
	dbw 26, HEX
	dbw 28, AURORA_BEAM
	dbw 31, EXTRASENSORY
	dbw 34, SAFEGUARD
	dbw 36, ICE_BEAM
	dbw 39, SPITE
	dbw 42, BLIZZARD
	dbw 44, NASTY_PLOT
	dbw 47, DESTINY_BOND
	dbw 50, SHEER_COLD
	db 0 ; no more level-up moves

NinetalesEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DAZZLINGLEAM
	dbw 1, DAZZLINGLEAM
	dbw 1, POWDER_SNOW
	dbw 1, ICE_SHARD
	dbw 1, CONFUSE_RAY
	dbw 1, SAFEGUARD
	dbw 1, ICY_WIND
	dbw 1, NASTY_PLOT
	dbw 1, ICE_BEAM
	db 0 ; no more level-up moves

RoggenrolaEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, BOLDORE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, SAND_ATTACK
	dbw 14, ROCK_BLAST
	dbw 17, MUD_SLAP
	dbw 20, IRON_DEFENSE
	dbw 23, ROCK_TOMB
	dbw 27, ROCK_SLIDE
	dbw 30, SPIKES
	dbw 33, SANDSTORM
	dbw 36, STONE_EDGE
	dbw 40, EXPLOSION
	db 0 ; no more level-up moves

BoldoreEvosAttacks:
	dbbw EVOLVE_ITEM, LINK_CABLE, GIGALITH
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, POWER_GEM
	dbw 1, POWER_GEM
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, SAND_ATTACK
	dbw 14, ROCK_BLAST
	dbw 17, MUD_SLAP
	dbw 20, IRON_DEFENSE
	dbw 23, ROCK_TOMB
	dbw 30, ROCK_SLIDE
	dbw 36, SPIKES
	dbw 42, SANDSTORM
	dbw 48, STONE_EDGE
	dbw 55, EXPLOSION
	db 0 ; no more level-up moves

GigalithEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POWER_GEM
	dbw 1, TACKLE
	dbw 4, HARDEN
	dbw 7, SAND_ATTACK
	dbw 14, ROCK_BLAST
	dbw 17, MUD_SLAP
	dbw 20, IRON_DEFENSE
	dbw 23, ROCK_TOMB
	dbw 30, ROCK_SLIDE
	dbw 36, SPIKES
	dbw 42, SANDSTORM
	dbw 48, STONE_EDGE
	dbw 55, EXPLOSION
	db 0 ; no more level-up moves

ZubatEvosAttacks:
	dbbw EVOLVE_LEVEL, 22, GOLBAT
	db 0 ; no more evolutions
	dbw 1, ASTONISH
	dbw 5, SUPERSONIC
	dbw 7, ABSORB
	dbw 11, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 19, AIR_CUTTER
	dbw 23, SWIFT
	dbw 25, POISON_FANG
	dbw 29, MEAN_LOOK
	dbw 31, LEECH_LIFE
	dbw 35, HAZE
	dbw 37, VENOSHOCK
	dbw 41, DUALWINGBEAT
	dbw 43, GUNK_SHOT
	db 0 ; no more level-up moves

GolbatEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, CROBAT
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SCREECH
	dbw 1, SCREECH
	dbw 1, ABSORB
	dbw 5, SUPERSONIC
	dbw 7, ASTONISH
	dbw 11, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 19, AIR_CUTTER
	dbw 24, SWIFT
	dbw 27, POISON_FANG
	dbw 32, MEAN_LOOK
	dbw 35, LEECH_LIFE
	dbw 40, HAZE
	dbw 43, VENOSHOCK
	dbw 48, DUALWINGBEAT
	dbw 51, GUNK_SHOT
	db 0 ; no more level-up moves

CrobatEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, CROSS_POISON
	dbw 1, CROSS_POISON
	dbw 1, ABSORB
	dbw 5, SUPERSONIC
	dbw 7, ASTONISH
	dbw 11, BITE
	dbw 13, WING_ATTACK
	dbw 17, CONFUSE_RAY
	dbw 19, AIR_CUTTER
	dbw 24, SWIFT
	dbw 27, POISON_FANG
	dbw 32, MEAN_LOOK
	dbw 35, LEECH_LIFE
	dbw 40, HAZE
	dbw 43, VENOSHOCK
	dbw 48, DUALWINGBEAT
	dbw 51, GUNK_SHOT
	dbw 56, BRAVE_BIRD
	db 0 ; no more level-up moves

CottoneeEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, WHIMSICOTT
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 1, FAIRY_WIND
	dbw 4, GROWTH
	dbw 8, LEECH_SEED
	dbw 10, STUN_SPORE
	dbw 13, MEGA_DRAIN
	dbw 17, COTTON_SPORE
	dbw 19, RAZOR_LEAF
	dbw 22, POISONPOWDER
	dbw 26, GIGA_DRAIN
	dbw 28, CHARM
	dbw 31, DAZZLINGLEAM
	dbw 35, ENERGY_BALL
	dbw 37, SAFEGUARD
	dbw 40, SUNNY_DAY
	dbw 44, STRENGTH_SAP
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

WhimsicottEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, LEECH_SEED
	dbw 1, MEGA_DRAIN
	dbw 1, COTTON_SPORE
	dbw 10, GUST
	dbw 28, AIR_SLASH
	dbw 46, HURRICANE
	dbw 50, MOONBLAST
	db 0 ; no more level-up moves

PetililEvosAttacks:
	dbbw EVOLVE_ITEM, SUN_STONE, LILLIGANT
	db 0 ; no more evolutions
	dbw 1, ABSORB
	dbw 4, GROWTH
	dbw 8, LEECH_SEED
	dbw 10, SLEEP_POWDER
	dbw 13, MEGA_DRAIN
	dbw 17, SYNTHESIS
	dbw 19, MAGICAL_LEAF
	dbw 22, STUN_SPORE
	dbw 26, GIGA_DRAIN
	dbw 28, HEAL_BELL
	dbw 31, GRASSWHISTLE
	dbw 35, ENERGY_BALL
	dbw 37, STRENGTH_SAP
	dbw 40, SUNNY_DAY
	dbw 44, BATON_PASS
	dbw 46, SOLARBEAM
	db 0 ; no more level-up moves

LilligantEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, GROWTH
	dbw 1, LEECH_SEED
	dbw 1, MEGA_DRAIN
	dbw 1, SYNTHESIS
	dbw 10, SING
	dbw 28, QUIVER_DANCE
	dbw 46, PETAL_DANCE
	dbw 50, PETAL_BLIZZ
	db 0 ; no more level-up moves

JoltikEvosAttacks:
	dbbw EVOLVE_LEVEL, 36, GALVANTULA
	db 0 ; no more evolutions
	dbw 1, STRING_SHOT
	dbw 1, NUZZLE
	dbw 1, SPIDER_WEB
	dbw 4, THUNDER_WAVE
	dbw 7, SCREECH
	dbw 12, FURY_CUTTER
	dbw 15, CHARGE_BEAM
	dbw 18, SIGNAL_BEAM
	dbw 23, SCARY_FACE
	dbw 26, SLASH
	dbw 29, THUNDERBOLT
	dbw 34, BUG_BUZZ
	dbw 37, AGILITY
	dbw 40, SUCKER_PUNCH
	dbw 45, DISCHARGE
	dbw 48, SIGNAL_WAVE
	db 0 ; no more level-up moves

GalvantulaEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, QUIVER_DANCE
	dbw 1, QUIVER_DANCE
	dbw 1, STRING_SHOT
	dbw 1, NUZZLE
	dbw 1, SPIDER_WEB
	dbw 4, THUNDER_WAVE
	dbw 7, SCREECH
	dbw 12, FURY_CUTTER
	dbw 15, CHARGE_BEAM
	dbw 18, SIGNAL_BEAM
	dbw 23, SCARY_FACE
	dbw 26, SLASH
	dbw 29, THUNDERBOLT
	dbw 34, BUG_BUZZ
	dbw 37, AGILITY
	dbw 40, SUCKER_PUNCH
	dbw 45, DISCHARGE
	dbw 48, SIGNAL_WAVE
	db 0 ; no more level-up moves

MinccinoEvosAttacks:
	dbbw EVOLVE_ITEM, SHINY_STONE, CINCCINO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, GROWL
	dbw 7, FORESIGHT
	dbw 9, WORK_UP
	dbw 13, DOUBLESLAP
	dbw 15, ENCORE
	dbw 19, SWIFT
	dbw 21, SING
	dbw 25, FURY_SWIPES
	dbw 27, CHARM
	dbw 31, BRICK_BREAK
	dbw 33, ECHOED_VOICE
	dbw 37, SLAM
	dbw 39, RETURN
	dbw 43, HYPER_VOICE
	dbw 45, DOUBLE_EDGE
	dbw 49, FAKE_OUT
	db 0 ; no more level-up moves

CinccinoEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, BULLET_SEED
	dbw 1, BULLET_SEED
	dbw 1, SING
	dbw 1, FURY_SWIPES
	dbw 1, DOUBLESLAP
	db 0 ; no more level-up moves

SandygastEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, PALOSSAND
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 5, ASTONISH
	dbw 9, SAND_ATTACK
	dbw 14, SAND_TOMB
	dbw 18, MEGA_DRAIN
	dbw 23, BULLDOZE
	dbw 27, HYPNOSIS
	dbw 32, IRON_DEFENSE
	dbw 36, GIGA_DRAIN
	dbw 41, SHADOW_BALL
	dbw 45, EARTH_POWER
	dbw 50, MOONLIGHT
	dbw 54, SANDSTORM
	db 0 ; no more level-up moves

PalossandEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HARDEN
	dbw 1, ABSORB
	dbw 5, ASTONISH
	dbw 9, SAND_ATTACK
	dbw 14, SAND_TOMB
	dbw 18, MEGA_DRAIN
	dbw 23, BULLDOZE
	dbw 27, HYPNOSIS
	dbw 32, IRON_DEFENSE
	dbw 36, GIGA_DRAIN
	dbw 41, SHADOW_BALL
	dbw 47, EARTH_POWER
	dbw 54, MOONLIGHT
	dbw 60, SANDSTORM
	db 0 ; no more level-up moves

PurrloinEvosAttacks:
	dbbw EVOLVE_LEVEL, 20, LIEPARD
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 3, GROWL
	dbw 6, SAND_ATTACK
	dbw 10, FURY_SWIPES
	dbw 12, PURSUIT
	dbw 15, SCARY_FACE
	dbw 19, FAINT_ATTACK
	dbw 21, FAKE_OUT
	dbw 24, HONE_CLAWS
	dbw 28, SNARL
	dbw 30, SLASH
	dbw 33, MOONLIGHT
	dbw 37, NIGHT_SLASH
	dbw 39, NASTY_PLOT
	dbw 42, SUCKER_PUNCH
	dbw 46, PLAY_ROUGH
	dbw 49, CATASTROPHE
	db 0 ; no more level-up moves

LiepardEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 3, GROWL
	dbw 6, SAND_ATTACK
	dbw 10, FURY_SWIPES
	dbw 12, PURSUIT
	dbw 15, SCARY_FACE
	dbw 19, FAINT_ATTACK
	dbw 22, FAKE_OUT
	dbw 26, HONE_CLAWS
	dbw 31, SNARL
	dbw 34, SLASH
	dbw 38, MOONLIGHT
	dbw 43, NIGHT_SLASH
	dbw 47, NASTY_PLOT
	dbw 50, SUCKER_PUNCH
	dbw 55, PLAY_ROUGH
	dbw 58, CATASTROPHE
	db 0 ; no more level-up moves

PsyduckEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, GOLDUCK
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, CONFUSION
	dbw 13, FURY_SWIPES
	dbw 16, WATER_PULSE
	dbw 19, DISABLE
	dbw 22, SCREECH
	dbw 25, ZEN_HEADBUTT
	dbw 28, AQUA_TAIL
	dbw 31, RAIN_DANCE
	dbw 34, PSYCH_UP
	dbw 37, AMNESIA
	dbw 40, HYDRO_PUMP
	dbw 43, NASTY_PLOT
	db 0 ; no more level-up moves

GolduckEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, FUTURE_SIGHT
	dbw 1, FUTURE_SIGHT
	dbw 1, SCRATCH
	dbw 4, TAIL_WHIP
	dbw 7, BUBBLE
	dbw 10, CONFUSION
	dbw 13, FURY_SWIPES
	dbw 16, WATER_PULSE
	dbw 19, DISABLE
	dbw 22, SCREECH
	dbw 25, ZEN_HEADBUTT
	dbw 28, AQUA_TAIL
	dbw 31, RAIN_DANCE
	dbw 36, PSYCH_UP
	dbw 41, AMNESIA
	dbw 46, HYDRO_PUMP
	dbw 51, NASTY_PLOT
	db 0 ; no more level-up moves

MankeyEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, PRIMEAPE
	db 0 ; no more evolutions
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, FOCUS_ENERGY
	dbw 5, FURY_SWIPES
	dbw 8, KARATE_CHOP
	dbw 12, PURSUIT
	dbw 15, SEISMIC_TOSS
	dbw 19, SWAGGER
	dbw 22, CROSS_CHOP
	dbw 26, PAYBACK
	dbw 29, LOW_SWEEP
	dbw 33, THRASH
	dbw 36, CLOSE_COMBAT
	dbw 40, SCREECH
	dbw 43, HIHORSEPOWER
	dbw 47, OUTRAGE
	dbw 50, SUPERPOWER
	db 0 ; no more level-up moves

PrimeapeEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, ANNIHILAPE
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, RAGE
	dbw 1, RAGE
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, FOCUS_ENERGY
	dbw 5, FURY_SWIPES
	dbw 8, KARATE_CHOP
	dbw 12, PURSUIT
	dbw 15, SEISMIC_TOSS
	dbw 19, SWAGGER
	dbw 22, CROSS_CHOP
	dbw 26, PAYBACK
	dbw 30, LOW_SWEEP
	dbw 35, THRASH
	dbw 39, CLOSE_COMBAT
	dbw 44, SCREECH
	dbw 48, HIHORSEPOWER
	dbw 53, OUTRAGE
	dbw 57, SUPERPOWER
	db 0 ; no more level-up moves

AnnihilapeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_PUNCH
	dbw 1, SHADOW_PUNCH
	dbw 1, SCRATCH
	dbw 1, LEER
	dbw 1, LOW_KICK
	dbw 1, FOCUS_ENERGY
	dbw 5, FURY_SWIPES
	dbw 8, KARATE_CHOP
	dbw 12, PURSUIT
	dbw 15, SEISMIC_TOSS
	dbw 19, SWAGGER
	dbw 22, CROSS_CHOP
	dbw 26, PAYBACK
	dbw 30, LOW_SWEEP
	dbw 35, THRASH
	dbw 39, CLOSE_COMBAT
	dbw 44, SCREECH
	dbw 48, HIHORSEPOWER
	dbw 53, OUTRAGE
	dbw 57, SUPERPOWER
	db 0 ; no more level-up moves

GrowlitheEvosAttacks:
	dbbw EVOLVE_ITEM, FIRE_STONE, ARCANINE
	db 0 ; no more evolutions
	dbw 1, BITE
	dbw 1, ROAR
	dbw 6, EMBER
	dbw 8, LEER
	dbw 10, ODOR_SLEUTH
	dbw 12, HOWL
	dbw 17, FLAME_WHEEL
	dbw 19, REVERSAL
	dbw 21, FIRE_FANG
	dbw 23, TAKE_DOWN
	dbw 28, FLAME_CHARGE
	dbw 30, AGILITY
	dbw 32, STOMP
	dbw 34, FLAMETHROWER
	dbw 39, CRUNCH
	dbw 41, HEAT_WAVE
	dbw 43, OUTRAGE
	dbw 45, PLAY_ROUGH
	dbw 48, FLARE_BLITZ
	db 0 ; no more level-up moves

ArcanineEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, EXTREMESPEED
	dbw 1, EXTREMESPEED
	dbw 1, THUNDER_FANG
	dbw 1, ROAR
	dbw 1, LEER
	dbw 1, TAKE_DOWN
	dbw 1, FLAME_WHEEL
	db 0 ; no more level-up moves

PoliwagEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, POLIWHIRL
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 11, BUBBLE
	dbw 15, DOUBLESLAP
	dbw 18, RAIN_DANCE
	dbw 21, BODY_SLAM
	dbw 25, BUBBLEBEAM
	dbw 28, MUD_SHOT
	dbw 31, BELLY_DRUM
	dbw 35, BRICK_BREAK
	dbw 38, HYDRO_PUMP
	dbw 41, MUD_BOMB
	db 0 ; no more level-up moves

PoliwhirlEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, POLIWRATH
	dbbw EVOLVE_ITEM, ROYAL_ROCK, POLITOED
	db 0 ; no more evolutions
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 11, BUBBLE
	dbw 15, DOUBLESLAP
	dbw 18, RAIN_DANCE
	dbw 21, BODY_SLAM
	dbw 27, BUBBLEBEAM
	dbw 32, MUD_SHOT
	dbw 37, BELLY_DRUM
	dbw 43, BRICK_BREAK
	dbw 48, HYDRO_PUMP
	dbw 53, MUD_BOMB
	db 0 ; no more level-up moves

PoliwrathEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SUBMISSION
	dbw 1, SUBMISSION
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, CLOSE_COMBAT
	dbw 32, DYNAMICPUNCH
	dbw 37, CIRCLE_THROW
	dbw 43, MIND_READER
	dbw 48, WAVE_CRASH
	dbw 53, CLOSE_COMBAT
	db 0 ; no more level-up moves

PolitoedEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SURF
	dbw 1, SURF
	dbw 1, WATER_GUN
	dbw 1, HYPNOSIS
	dbw 1, DOUBLESLAP
	dbw 1, PERISH_SONG
	dbw 27, SWAGGER
	dbw 37, BOUNCE
	dbw 48, HYPER_VOICE
	db 0 ; no more level-up moves

SolosisEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SOLOSIS
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 3, REFLECT
	dbw 7, ROLLOUT
	dbw 10, DEFENSE_CURL
	dbw 14, HIDDEN_POWER
	dbw 16, LIGHT_SCREEN
	dbw 19, CHARM
	dbw 24, RECOVER
	dbw 25, PSYBEAM
	dbw 28, DRAININGKISS
	dbw 31, FUTURE_SIGHT
	dbw 33, PAIN_SPLIT
	dbw 37, PSYCHIC_M
	dbw 40, CALM_MIND
	dbw 46, MIRROR_COAT
	dbw 48, EXPLOSION
	db 0 ; no more level-up moves

DuosionEvosAttacks:
	dbbw EVOLVE_LEVEL, 41, REUNICLUS
	db 0 ; no more evolutions
	dbw 1, CONFUSION
	dbw 3, REFLECT
	dbw 7, ROLLOUT
	dbw 10, DEFENSE_CURL
	dbw 14, HIDDEN_POWER
	dbw 16, LIGHT_SCREEN
	dbw 19, CHARM
	dbw 24, RECOVER
	dbw 25, PSYBEAM
	dbw 28, DRAININGKISS
	dbw 31, FUTURE_SIGHT
	dbw 34, PAIN_SPLIT
	dbw 39, PSYCHIC_M
	dbw 43, CALM_MIND
	dbw 50, MIRROR_COAT
	dbw 53, EXPLOSION
	db 0 ; no more level-up moves

ReuniclusEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DIZZY_PUNCH
	dbw 1, DIZZY_PUNCH
	dbw 1, CONFUSION
	dbw 3, REFLECT
	dbw 7, ROLLOUT
	dbw 10, DEFENSE_CURL
	dbw 14, HIDDEN_POWER
	dbw 16, LIGHT_SCREEN
	dbw 19, CHARM
	dbw 24, RECOVER
	dbw 25, PSYBEAM
	dbw 28, DRAININGKISS
	dbw 31, FUTURE_SIGHT
	dbw 34, PAIN_SPLIT
	dbw 39, PSYCHIC_M
	dbw 45, CALM_MIND
	dbw 54, MIRROR_COAT
	dbw 59, EXPLOSION
	db 0 ; no more level-up moves

TimburrEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GURDURR
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, WORK_UP
	dbw 12, LOW_KICK
	dbw 16, ROCK_THROW
	dbw 20, KARATE_CHOP
	dbw 24, HEADBUTT
	dbw 28, BULK_UP
	dbw 31, ROCK_SLIDE
	dbw 34, DYNAMICPUNCH
	dbw 37, SCARY_FACE
	dbw 40, HAMMER_ARM
	dbw 43, STONE_EDGE
	dbw 46, KNOCK_OFF
	dbw 49, SUPERPOWER
	db 0 ; no more level-up moves

GurdurrEvosAttacks:
	dbbw EVOLVE_ITEM, LINK_CABLE, CONKELDURR
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, WORK_UP
	dbw 12, LOW_KICK
	dbw 16, ROCK_THROW
	dbw 20, KARATE_CHOP
	dbw 24, HEADBUTT
	dbw 29, BULK_UP
	dbw 33, ROCK_SLIDE
	dbw 37, DYNAMICPUNCH
	dbw 41, SCARY_FACE
	dbw 45, HAMMER_ARM
	dbw 49, STONE_EDGE
	dbw 53, KNOCK_OFF
	dbw 57, SUPERPOWER
	db 0 ; no more level-up moves

ConkeldurrEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, LEER
	dbw 4, FOCUS_ENERGY
	dbw 8, WORK_UP
	dbw 12, LOW_KICK
	dbw 16, ROCK_THROW
	dbw 20, KARATE_CHOP
	dbw 24, HEADBUTT
	dbw 29, BULK_UP
	dbw 33, ROCK_SLIDE
	dbw 37, DYNAMICPUNCH
	dbw 41, SCARY_FACE
	dbw 45, HAMMER_ARM
	dbw 49, STONE_EDGE
	dbw 53, KNOCK_OFF
	dbw 57, SUPERPOWER
	db 0 ; no more level-up moves

BellsproutEvosAttacks:
	dbbw EVOLVE_LEVEL, 21, WEEPINBELL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 23, ACID
	dbw 27, KNOCK_OFF
	dbw 29, SWEET_SCENT
	dbw 35, SWORDS_DANCE
	dbw 39, RAZOR_LEAF
	dbw 41, POISON_JAB
	dbw 47, SLASH
	dbw 45, SOLAR_BLADE
	db 0 ; no more level-up moves

WeepinbellEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, VICTREEBEL
	db 0 ; no more evolutions
	dbw 1, VINE_WHIP
	dbw 7, GROWTH
	dbw 11, WRAP
	dbw 13, SLEEP_POWDER
	dbw 15, POISONPOWDER
	dbw 17, STUN_SPORE
	dbw 24, ACID
	dbw 29, KNOCK_OFF
	dbw 32, SWEET_SCENT
	dbw 39, SWORDS_DANCE
	dbw 44, RAZOR_LEAF
	dbw 47, POISON_JAB
	dbw 54, SLASH
	dbw 58, SOLAR_BLADE
	db 0 ; no more level-up moves

VictreebelEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, POWER_WHIP
	dbw 1, POWER_WHIP
	dbw 1, VINE_WHIP
	dbw 1, SLEEP_POWDER
	dbw 1, SWEET_SCENT
	dbw 1, RAZOR_LEAF
	dbw 32, SLUDGE_BOMB
	dbw 44, LEAF_BLADE
	dbw 59, SOLAR_BLADE
	db 0 ; no more level-up moves

TentacoolEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, TENTACRUEL
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 4, SUPERSONIC
	dbw 7, CONSTRICT
	dbw 10, BUBBLE
	dbw 13, ACID
	dbw 16, WATER_PULSE
	dbw 19, WRAP
	dbw 22, ACID_SPRAY
	dbw 25, BUBBLEBEAM
	dbw 28, BARRIER
	dbw 31, POISON_JAB
	dbw 34, TOXIC
	dbw 37, SCREECH
	dbw 40, HEX
	dbw 43, SLUDGE_WAVE
	dbw 46, HYDRO_PUMP
	dbw 49, BELCH
	db 0 ; no more level-up moves

TentacruelEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, VENOSHOCK
	dbw 1, VENOSHOCK
	dbw 1, POISON_STING
	dbw 4, SUPERSONIC
	dbw 7, CONSTRICT
	dbw 10, BUBBLE
	dbw 13, ACID
	dbw 16, WATER_PULSE
	dbw 19, WRAP
	dbw 22, ACID_SPRAY
	dbw 25, BUBBLEBEAM
	dbw 28, BARRIER
	dbw 32, POISON_JAB
	dbw 36, TOXIC
	dbw 40, SCREECH
	dbw 44, HEX
	dbw 48, SLUDGE_WAVE
	dbw 52, HYDRO_PUMP
	dbw 56, BELCH
	db 0 ; no more level-up moves

GeodudeEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, GRAVELER
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, THUNDER_WAVE
	dbw 6, ROCK_POLISH
	dbw 10, ROLLOUT
	dbw 12, SPARK
	dbw 16, ROCK_THROW
	dbw 18, ROCK_TOMB
	dbw 22, THUNDERPUNCH
	dbw 24, SELFDESTRUCT
	dbw 28, SPIKES
	dbw 30, ROCK_BLAST
	dbw 34, DISCHARGE
	dbw 36, EXPLOSION
	dbw 40, DOUBLE_EDGE
	dbw 42, STONE_EDGE
	db 0 ; no more level-up moves

GravelerEvosAttacks:
	dbbw EVOLVE_ITEM, LINK_CABLE, GOLEM
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, THUNDER_WAVE
	dbw 6, ROCK_POLISH
	dbw 10, ROLLOUT
	dbw 12, SPARK
	dbw 16, ROCK_THROW
	dbw 18, ROCK_TOMB
	dbw 22, THUNDERPUNCH
	dbw 24, SELFDESTRUCT
	dbw 30, SPIKES
	dbw 34, ROCK_BLAST
	dbw 40, DISCHARGE
	dbw 44, EXPLOSION
	dbw 50, DOUBLE_EDGE
	dbw 54, STONE_EDGE
	db 0 ; no more level-up moves

GolemEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, GYRO_BALL
	dbw 1, GYRO_BALL
	dbw 1, TACKLE
	dbw 1, DEFENSE_CURL
	dbw 4, THUNDER_WAVE
	dbw 6, ROCK_POLISH
	dbw 10, ROLLOUT
	dbw 12, SPARK
	dbw 16, ROCK_THROW
	dbw 18, ROCK_TOMB
	dbw 22, THUNDERPUNCH
	dbw 24, SELFDESTRUCT
	dbw 30, SPIKES
	dbw 34, ROCK_BLAST
	dbw 40, DISCHARGE
	dbw 44, EXPLOSION
	dbw 50, DOUBLE_EDGE
	dbw 54, STONE_EDGE
	db 0 ; no more level-up moves

PonytaEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, RAPIDASH
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 9, EMBER
	dbw 13, FLAME_WHEEL
	dbw 17, STOMP
	dbw 21, FLAME_CHARGE
	dbw 25, FIRE_SPIN
	dbw 29, TAKE_DOWN
	dbw 33, INFERNO
	dbw 37, AGILITY
	dbw 41, FIRE_BLAST
	dbw 45, BOUNCE
	dbw 49, FLARE_BLITZ
	db 0 ; no more level-up moves

RapidashEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SMART_STRIKE
	dbw 1, SMART_STRIKE
	dbw 1, TACKLE
	dbw 1, GROWL
	dbw 4, TAIL_WHIP
	dbw 9, EMBER
	dbw 13, FLAME_WHEEL
	dbw 17, STOMP
	dbw 21, FLAME_CHARGE
	dbw 25, FIRE_SPIN
	dbw 29, TAKE_DOWN
	dbw 33, INFERNO
	dbw 37, AGILITY
	dbw 41, FIRE_BLAST
	dbw 45, BOUNCE
	dbw 49, FLARE_BLITZ
	dbw 53, MEGAHORN
	dbw 57, SOLAR_BLADE
	db 0 ; no more level-up moves

SlowpokeEvosAttacks:
	dbbw EVOLVE_ITEM, ROYAL_ROCK, SLOWKING
	dbbw EVOLVE_LEVEL, 37, SLOWBRO
	db 0 ; no more evolutions
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, WATER_GUN
	dbw 14, CONFUSION
	dbw 19, DISABLE
	dbw 23, HEADBUTT
	dbw 28, WATER_PULSE
	dbw 32, ZEN_HEADBUTT
	dbw 36, SLACK_OFF
	dbw 41, AMNESIA
	dbw 45, PSYCHIC_M
	dbw 49, RAIN_DANCE
	dbw 54, PSYCH_UP
	dbw 58, HAZE
	db 0 ; no more level-up moves

SlowbroEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, WITHDRAW
	dbw 1, WITHDRAW
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, WATER_GUN
	dbw 14, CONFUSION
	dbw 19, DISABLE
	dbw 23, HEADBUTT
	dbw 28, WATER_PULSE
	dbw 32, ZEN_HEADBUTT
	dbw 36, SLACK_OFF
	dbw 43, AMNESIA
	dbw 49, PSYCHIC_M
	dbw 55, RAIN_DANCE
	dbw 62, PSYCH_UP
	dbw 68, HAZE
	db 0 ; no more level-up moves

SlowkingEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, HIDDEN_POWER
	dbw 1, HIDDEN_POWER
	dbw 1, CURSE
	dbw 1, TACKLE
	dbw 5, GROWL
	dbw 9, WATER_GUN
	dbw 14, CONFUSION
	dbw 19, DISABLE
	dbw 23, HEADBUTT
	dbw 28, WATER_PULSE
	dbw 32, ZEN_HEADBUTT
	dbw 36, NASTY_PLOT
	dbw 41, SWAGGER
	dbw 45, PSYCHIC_M
	dbw 49, RAIN_DANCE
	dbw 54, PSYCH_UP
	dbw 58, HAZE
	db 0 ; no more level-up moves

MagnemiteEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGNETON
	db 0 ; no more evolutions
	dbw 1, SUPERSONIC
	dbw 1, TACKLE
	dbw 5, THUNDERSHOCK
	dbw 7, MIRROR_SHOT
	dbw 11, THUNDER_WAVE
	dbw 13, LIGHT_SCREEN
	dbw 17, SONICBOOM
	dbw 19, SPARK
	dbw 23, STEEL_SLICE
	dbw 25, METAL_SOUND
	dbw 29, DISCHARGE
	dbw 31, FLASH_CANNON
	dbw 35, SCREECH
	dbw 37, THUNDERBOLT
	dbw 41, LOCK_ON
	dbw 43, RAIN_DANCE
	dbw 47, GYRO_BALL
	dbw 49, ZAP_CANNON
	dbw 51, THUNDER
	db 0 ; no more level-up moves

MagnetonEvosAttacks:
	dbbw EVOLVE_ITEM, THUNDERSTONE, MAGNEZONE
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, TRI_ATTACK
	dbw 1, TRI_ATTACK
	dbw 1, SUPERSONIC
	dbw 1, TACKLE
	dbw 5, THUNDERSHOCK
	dbw 7, MIRROR_SHOT
	dbw 11, THUNDER_WAVE
	dbw 13, LIGHT_SCREEN
	dbw 17, SONICBOOM
	dbw 19, SPARK
	dbw 23, STEEL_SLICE
	dbw 25, METAL_SOUND
	dbw 29, DISCHARGE
	dbw 33, FLASH_CANNON
	dbw 39, SCREECH
	dbw 43, THUNDERBOLT
	dbw 49, LOCK_ON
	dbw 53, RAIN_DANCE
	dbw 59, GYRO_BALL
	dbw 63, ZAP_CANNON
	dbw 67, THUNDER
	db 0 ; no more level-up moves

MagnezoneEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, TRI_ATTACK
	dbw 1, SUPERSONIC
	dbw 1, TACKLE
	dbw 5, THUNDERSHOCK
	dbw 7, MIRROR_SHOT
	dbw 11, THUNDER_WAVE
	dbw 13, LIGHT_SCREEN
	dbw 17, SONICBOOM
	dbw 19, SPARK
	dbw 23, STEEL_SLICE
	dbw 25, METAL_SOUND
	dbw 29, DISCHARGE
	dbw 30, TRI_ATTACK
	dbw 33, FLASH_CANNON
	dbw 39, SCREECH
	dbw 43, THUNDERBOLT
	dbw 49, LOCK_ON
	dbw 53, RAIN_DANCE
	dbw 59, GYRO_BALL
	dbw 63, ZAP_CANNON
	dbw 67, THUNDER
	db 0 ; no more level-up moves

FarfetchDEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, SIRFETCH_D
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, SAND_ATTACK
	dbw 5, LEER
	dbw 10, FURY_ATTACK
	dbw 15, ROCK_SMASH
	dbw 20, FAINT_ATTACK
	dbw 25, DETECT
	dbw 30, KNOCK_OFF
	dbw 35, ROOST
	dbw 40, BRICK_BREAK
	dbw 45, SWORDS_DANCE
	dbw 50, SLAM
	dbw 55, LEAF_BLADE
	dbw 60, SUPERPOWER
	dbw 65, BRAVE_BIRD
	db 0 ; no more level-up moves

SirfetchDEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, IRON_DEFENSE
	dbw 1, IRON_DEFENSE
	dbw 1, PECK
	dbw 1, SAND_ATTACK
	dbw 5, LEER
	dbw 10, FURY_ATTACK
	dbw 15, ROCK_SMASH
	dbw 20, FAINT_ATTACK
	dbw 25, DETECT
	dbw 30, KNOCK_OFF
	dbw 35, ROOST
	dbw 40, BRICK_BREAK
	dbw 45, SWORDS_DANCE
	dbw 50, SLAM
	dbw 55, LEAF_BLADE
	dbw 60, SUPERPOWER
	dbw 65, BRAVE_BIRD
	dbw 70, CLOSE_COMBAT
	db 0 ; no more level-up moves

DoduoEvosAttacks:
	dbbw EVOLVE_LEVEL, 31, DODRIO
	db 0 ; no more evolutions
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 8, RAGE
	dbw 13, FURY_ATTACK
	dbw 15, PURSUIT
	dbw 19, AERIAL_ACE
	dbw 22, DOUBLE_HIT_M
	dbw 26, AGILITY
	dbw 29, ROUND_M
	dbw 33, ROOST
	dbw 36, SWORDS_DANCE
	dbw 40, JUMP_KICK
	dbw 43, DRILL_PECK
	dbw 47, THRASH
	dbw 50, BRAVE_BIRD
	db 0 ; no more level-up moves

DodrioEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, TRI_ATTACK
	dbw 1, TRI_ATTACK
	dbw 1, PECK
	dbw 1, GROWL
	dbw 5, QUICK_ATTACK
	dbw 8, RAGE
	dbw 13, FURY_ATTACK
	dbw 15, PURSUIT
	dbw 19, AERIAL_ACE
	dbw 22, DOUBLE_HIT_M
	dbw 26, AGILITY
	dbw 29, ROUND_M
	dbw 34, ROOST
	dbw 38, SWORDS_DANCE
	dbw 43, JUMP_KICK
	dbw 47, DRILL_PECK
	dbw 52, THRASH
	dbw 56, BRAVE_BIRD
	db 0 ; no more level-up moves

SeelEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, DEWGONG
	db 0 ; no more evolutions
	dbw 1, HEADBUTT
	dbw 3, GROWL
	dbw 7, AQUA_JET
	dbw 11, ICY_WIND
	dbw 12, ENCORE
	dbw 17, ICE_SHARD
	dbw 21, REST
	dbw 23, AQUA_RING
	dbw 27, AURORA_BEAM
	dbw 31, BUBBLEBEAM
	dbw 33, WATER_PULSE
	dbw 37, TAKE_DOWN
	dbw 41, WATERFALL
	dbw 43, AQUA_TAIL
	dbw 47, ICE_BEAM
	dbw 51, SAFEGUARD
	dbw 53, HAIL
	db 0 ; no more level-up moves

DewgongEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHEER_COLD
	dbw 1, SHEER_COLD
	dbw 1, AVALANCHE
	dbw 1, HEADBUTT
	dbw 3, GROWL
	dbw 7, SIGNAL_BEAM
	dbw 11, ICY_WIND
	dbw 12, ENCORE
	dbw 17, ICE_SHARD
	dbw 21, REST
	dbw 23, AQUA_RING
	dbw 27, AURORA_BEAM
	dbw 31, BUBBLEBEAM
	dbw 33, WATER_PULSE
	dbw 39, TAKE_DOWN
	dbw 45, WATERFALL
	dbw 49, AQUA_TAIL
	dbw 55, ICE_BEAM
	dbw 61, SAFEGUARD
	dbw 65, HAIL
	dbw 69, MEGAHORN
	db 0 ; no more level-up moves

GrimerEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, MUK
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 4, HARDEN
	dbw 7, BITE
	dbw 12, DISABLE
	dbw 15, ACID_SPRAY
	dbw 18, POISON_FANG
	dbw 21, MINIMIZE
	dbw 26, KNOCK_OFF
	dbw 29, CRUNCH
	dbw 32, SUCKER_PUNCH
	dbw 37, SCREECH
	dbw 40, BELCH
	dbw 43, ACID_ARMOR
	dbw 46, GUNK_SHOT
	dbw 48, CATASTROPHE
	db 0 ; no more level-up moves

MukEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, POISON_JAB
	dbw 1, POISON_JAB
	dbw 1, POISON_GAS
	dbw 1, POUND
	dbw 4, HARDEN
	dbw 7, BITE
	dbw 12, DISABLE
	dbw 15, ACID_SPRAY
	dbw 18, POISON_FANG
	dbw 21, MINIMIZE
	dbw 26, KNOCK_OFF
	dbw 29, CRUNCH
	dbw 32, SUCKER_PUNCH
	dbw 37, SCREECH
	dbw 40, BELCH
	dbw 46, ACID_ARMOR
	dbw 52, GUNK_SHOT
	dbw 57, CATASTROPHE
	db 0 ; no more level-up moves

MareanieEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, TOXAPEX
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 5, PECK
	dbw 9, BITE
	dbw 13, SPIKES
	dbw 17, DETECT
	dbw 21, TOXIC
	dbw 25, VENOSHOCK
	dbw 29, SPIKE_CANNON
	dbw 33, RECOVER
	dbw 37, POISON_JAB
	dbw 41, KNOCK_OFF
	dbw 45, PIN_MISSILE
	dbw 49, WAVE_CRASH
	db 0 ; no more level-up moves

ToxapexEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, POISON_STING
	dbw 5, PECK
	dbw 9, BITE
	dbw 13, SPIKES
	dbw 17, DETECT
	dbw 21, TOXIC
	dbw 25, VENOSHOCK
	dbw 29, SPIKE_CANNON
	dbw 33, RECOVER
	dbw 37, POISON_JAB
	dbw 44, KNOCK_OFF
	dbw 51, PIN_MISSILE
	dbw 58, WAVE_CRASH
	dbw 65, GUNK_SHOT
	db 0 ; no more level-up moves

GastlyEvosAttacks:
	dbbw EVOLVE_LEVEL, 25, HAUNTER
	db 0 ; no more evolutions
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 26, PAYBACK
	dbw 29, SHADOW_BALL
	dbw 33, DREAM_EATER
	dbw 36, DARK_PULSE
	dbw 40, DESTINY_BOND
	dbw 43, HEX
	dbw 47, SLUDGE_BOMB
	db 0 ; no more level-up moves

HaunterEvosAttacks:
	dbbw EVOLVE_ITEM, LINK_CABLE, GENGAR
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_PUNCH
	dbw 1, SHADOW_PUNCH
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 28, PAYBACK
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	dbw 55, HEX
	dbw 61, SLUDGE_BOMB
	db 0 ; no more level-up moves

GengarEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SLUDGE_WAVE
	dbw 1, SLUDGE_WAVE
	dbw 1, HYPNOSIS
	dbw 1, LICK
	dbw 5, SPITE
	dbw 8, MEAN_LOOK
	dbw 12, CURSE
	dbw 15, NIGHT_SHADE
	dbw 19, CONFUSE_RAY
	dbw 22, SUCKER_PUNCH
	dbw 25, SHADOW_PUNCH
	dbw 28, PAYBACK
	dbw 33, SHADOW_BALL
	dbw 39, DREAM_EATER
	dbw 44, DARK_PULSE
	dbw 50, DESTINY_BOND
	dbw 55, HEX
	dbw 61, SLUDGE_BOMB
	db 0 ; no more level-up moves

OnixEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, STEELIX
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, HARDEN
	dbw 4, CURSE
	dbw 7, ROCK_THROW
	dbw 13, RAGE
	dbw 16, SPIKES
	dbw 19, ROCK_POLISH
	dbw 20, GYRO_BALL
	dbw 22, ROCK_TOMB
	dbw 25, DRAGONBREATH
	dbw 28, SLAM
	dbw 31, SCREECH
	dbw 34, ROCK_SLIDE
	dbw 37, SAND_TOMB
	dbw 40, IRON_TAIL
	dbw 46, STONE_EDGE
	dbw 49, DOUBLE_EDGE
	dbw 52, SANDSTORM
	db 0 ; no more level-up moves

SteelixEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, STEEL_SLICE
	dbw 1, STEEL_SLICE
	dbw 1, TACKLE
	dbw 1, SCREECH
	dbw 1, HARDEN
	dbw 4, CURSE
	dbw 7, ROCK_THROW
	dbw 13, RAGE
	dbw 16, SPIKES
	dbw 19, ROCK_POLISH
	dbw 20, GYRO_BALL
	dbw 22, ROCK_TOMB
	dbw 25, DRAGONBREATH
	dbw 28, SLAM
	dbw 31, SCREECH
	dbw 34, ROCK_SLIDE
	dbw 37, SAND_TOMB
	dbw 40, IRON_TAIL
	dbw 46, STONE_EDGE
	dbw 49, DOUBLE_EDGE
	dbw 52, SANDSTORM
	db 0 ; no more level-up moves

DrowzeeEvosAttacks:
	dbbw EVOLVE_LEVEL, 26, HYPNO
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 5, DISABLE
	dbw 9, CONFUSION
	dbw 13, HEADBUTT
	dbw 17, POISON_GAS
	dbw 21, MEDITATE
	dbw 25, PSYBEAM
	dbw 29, BRICK_BREAK
	dbw 33, PSYCH_UP
	dbw 37, CALM_MIND
	dbw 41, DREAM_EATER
	dbw 45, SWAGGER
	dbw 49, PSYCHIC_M
	dbw 53, NASTY_PLOT
	dbw 57, EXTRASENSORY
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

HypnoEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, ZEN_HEADBUTT
	dbw 1, ZEN_HEADBUTT
	dbw 1, POUND
	dbw 1, HYPNOSIS
	dbw 5, DISABLE
	dbw 9, CONFUSION
	dbw 13, HEADBUTT
	dbw 17, POISON_GAS
	dbw 21, MEDITATE
	dbw 25, PSYBEAM
	dbw 29, BRICK_BREAK
	dbw 33, PSYCH_UP
	dbw 37, CALM_MIND
	dbw 41, DREAM_EATER
	dbw 45, SWAGGER
	dbw 49, PSYCHIC_M
	dbw 53, NASTY_PLOT
	dbw 57, EXTRASENSORY
	dbw 61, FUTURE_SIGHT
	db 0 ; no more level-up moves

CorphishEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, CRAWDAUNT
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, HARDEN
	dbw 7, VICEGRIP
	dbw 10, LEER
	dbw 14, BUBBLEBEAM
	dbw 17, PROTECT
	dbw 20, DOUBLE_HIT_M
	dbw 23, KNOCK_OFF
	dbw 26, NIGHT_SLASH
	dbw 31, WATERFALL
	dbw 34, SHELL_SMASH
	dbw 37, SWORDS_DANCE
	dbw 39, CRUNCH
	dbw 43, CRABHAMMER
	dbw 48, GUILLOTINE
	dbw 53, WAVE_CRASH
	db 0 ; no more level-up moves

CrawdauntEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SWIFT
	dbw 1, SWIFT
	dbw 1, BUBBLE
	dbw 5, HARDEN
	dbw 7, VICEGRIP
	dbw 10, LEER
	dbw 14, BUBBLEBEAM
	dbw 17, PROTECT
	dbw 20, DOUBLE_HIT_M
	dbw 23, KNOCK_OFF
	dbw 26, NIGHT_SLASH
	dbw 32, WATERFALL
	dbw 36, SHELL_SMASH
	dbw 40, SWORDS_DANCE
	dbw 43, CRUNCH
	dbw 48, CRABHAMMER
	dbw 54, GUILLOTINE
	dbw 58, WAVE_CRASH
	db 0 ; no more level-up moves

VoltorbEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTRODE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 4, THUNDERSHOCK
	dbw 6, STUN_SPORE
	dbw 9, BULLET_SEED
	dbw 11, ROLLOUT
	dbw 13, SCREECH
	dbw 16, CHARGE_BEAM
	dbw 20, SWIFT
	dbw 22, WILD_CHARGE
	dbw 26, SELFDESTRUCT
	dbw 29, ENERGY_BALL
	dbw 34, DISCHARGE
	dbw 34, SEED_BOMB
	dbw 41, EXPLOSION
	dbw 46, GYRO_BALL
	dbw 50, SYNTHESIS
	dbw 58, VOLT_TACKLE
	db 0 ; no more level-up moves

ElectrodeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SUCKER_PUNCH
	dbw 1, SUCKER_PUNCH
	dbw 1, TACKLE
	dbw 4, THUNDERSHOCK
	dbw 6, STUN_SPORE
	dbw 9, BULLET_SEED
	dbw 11, ROLLOUT
	dbw 13, SCREECH
	dbw 16, CHARGE_BEAM
	dbw 20, SWIFT
	dbw 22, WILD_CHARGE
	dbw 26, SELFDESTRUCT
	dbw 29, ENERGY_BALL
	dbw 34, DISCHARGE
	dbw 34, SEED_BOMB
	dbw 41, EXPLOSION
	dbw 46, GYRO_BALL
	dbw 50, SYNTHESIS
	dbw 58, VOLT_TACKLE
	db 0 ; no more level-up moves

ExeggcuteEvosAttacks:
	dbbw EVOLVE_ITEM, LEAF_STONE, EXEGGUTOR
	db 0 ; no more evolutions
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, ROUND_M
	dbw 1, ABSORB
	dbw 7, REFLECT
	dbw 11, LEECH_SEED
	dbw 17, CONFUSION
	dbw 19, STUN_SPORE
	dbw 21, POISONPOWDER
	dbw 23, SLEEP_POWDER
	dbw 27, BULLET_SEED
	dbw 33, GIGA_DRAIN
	dbw 37, SYNTHESIS
	dbw 43, SOLARBEAM
	dbw 47, EXTRASENSORY
	dbw 50, PSYCHIC_M
	db 0 ; no more level-up moves

ExeggutorEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, STOMP
	dbw 1, STOMP
	dbw 1, BARRAGE
	dbw 1, HYPNOSIS
	dbw 1, CONFUSION
	dbw 1, EXTRASENSORY
	dbw 17, PSYBEAM
	dbw 27, EGG_BOMB
	dbw 37, WOOD_HAMMER
	dbw 47, SOLARBEAM
	dbw 57, PSYCHIC_M
	db 0 ; no more level-up moves

CuboneEvosAttacks:
	dbbw EVOLVE_LEVEL, 28, MAROWAK
	db 0 ; no more evolutions
	dbw 1, GROWL
	dbw 3, TAIL_WHIP
	dbw 7, BONE_CLUB
	dbw 11, HEADBUTT
	dbw 13, LEER
	dbw 17, FOCUS_ENERGY
	dbw 21, BONEMERANG
	dbw 23, RAGE
	dbw 27, FALSE_SWIPE
	dbw 31, THRASH
	dbw 33, FAINT_ATTACK
	dbw 37, HIHORSEPOWER
	dbw 41, BRICK_BREAK
	dbw 43, DOUBLE_EDGE
	dbw 47, EARTHQUAKE
	dbw 51, BONE_RUSH
	db 0 ; no more level-up moves

MarowakEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, SHADOW_BONE
	dbw 1, SHADOW_BONE
	dbw 1, GROWL
	dbw 3, TAIL_WHIP
	dbw 7, BONE_CLUB
	dbw 11, FLAME_WHEEL
	dbw 13, LEER
	dbw 17, HEX
	dbw 21, BONEMERANG
	dbw 23, WILL_O_WISP
	dbw 27, FALSE_SWIPE
	dbw 33, THRASH
	dbw 37, FAINT_ATTACK
	dbw 43, HIHORSEPOWER
	dbw 49, SHADOW_CLAW
	dbw 53, FLARE_BLITZ
	dbw 59, EARTHQUAKE
	dbw 65, BONE_RUSH
	db 0 ; no more level-up moves

ScraggyEvosAttacks:
	dbbw EVOLVE_LEVEL, 39, SCRAFTY
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 5, SAND_ATTACK
	dbw 9, FAINT_ATTACK
	dbw 12, SWAGGER
	dbw 16, LOW_KICK
	dbw 20, PAYBACK
	dbw 23, BRICK_BREAK
	dbw 27, FAKE_OUT
	dbw 31, HI_JUMP_KICK
	dbw 34, SCARY_FACE
	dbw 38, CRUNCH
	dbw 42, CATASTROPHE
	dbw 45, DOUBLE_EDGE
	dbw 48, DYNAMICPUNCH
	dbw 50, HEAD_SMASH
	db 0 ; no more level-up moves

ScraftyEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, HEADBUTT
	dbw 5, SAND_ATTACK
	dbw 9, FAINT_ATTACK
	dbw 12, SWAGGER
	dbw 16, LOW_KICK
	dbw 20, PAYBACK
	dbw 23, BRICK_BREAK
	dbw 27, FAKE_OUT
	dbw 31, HI_JUMP_KICK
	dbw 34, SCARY_FACE
	dbw 38, CRUNCH
	dbw 45, CATASTROPHE
	dbw 51, DOUBLE_EDGE
	dbw 58, DYNAMICPUNCH
	dbw 65, HEAD_SMASH
	db 0 ; no more level-up moves

RioluEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_MORNDAY, LUCARIO
	db 0 ; no more evolutions
	dbw 1, FORESIGHT
	dbw 1, QUICK_ATTACK
	dbw 1, ENDURE
	dbw 6, COUNTER
	dbw 11, FAKE_OUT
	dbw 15, KARATE_CHOP
	dbw 19, MIMIC
	dbw 24, SCREECH
	dbw 29, REVERSAL
	dbw 47, NASTY_PLOT
	dbw 50, DESTINY_BOND
	db 0 ; no more level-up moves

LucarioEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, AURA_SPHERE
	dbw 1, AURA_SPHERE
	dbw 1, FORESIGHT
	dbw 1, QUICK_ATTACK
	dbw 1, ENDURE
	dbw 6, COUNTER
	dbw 11, FAKE_OUT
	dbw 15, POWERUPPUNCH
	dbw 19, SWORDS_DANCE
	dbw 24, METAL_SOUND
	dbw 29, BONE_RUSH
	dbw 33, DETECT
	dbw 37, MIRROR_COAT
	dbw 42, WORK_UP
	dbw 47, CALM_MIND
	dbw 51, MORNING_SUN
	dbw 55, CLOSE_COMBAT
	dbw 60, DRAGON_PULSE
	dbw 65, EXTREMESPEED
	db 0 ; no more level-up moves

LickitungEvosAttacks:
	dbbw EVOLVE_LEVEL, 33, LICKILICKY
	db 0 ; no more evolutions
	dbw 1, LICK
	dbw 5, SUPERSONIC
	dbw 9, DEFENSE_CURL
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 37, BODY_SLAM
	dbw 41, BELLY_DRUM
	dbw 45, HEAL_BELL
	dbw 49, SCREECH
	dbw 53, POWER_WHIP
	dbw 57, DOUBLE_EDGE
	db 0 ; no more level-up moves

LickilickyEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, ROLLOUT
	dbw 1, ROLLOUT
	dbw 1, LICK
	dbw 5, SUPERSONIC
	dbw 9, DEFENSE_CURL
	dbw 13, KNOCK_OFF
	dbw 17, WRAP
	dbw 21, STOMP
	dbw 25, DISABLE
	dbw 29, SLAM
	dbw 33, ROLLOUT
	dbw 37, BODY_SLAM
	dbw 41, BELLY_DRUM
	dbw 45, HEAL_BELL
	dbw 49, SCREECH
	dbw 53, POWER_WHIP
	dbw 57, DOUBLE_EDGE
	dbw 61, GYRO_BALL
	db 0 ; no more level-up moves

KoffingEvosAttacks:
	dbbw EVOLVE_LEVEL, 35, WEEZING
	db 0 ; no more evolutions
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 4, SMOG
	dbw 7, SMOKESCREEN
	dbw 12, PAYBACK
	dbw 15, MUD_BOMB
	dbw 18, SLUDGE
	dbw 23, SELFDESTRUCT
	dbw 26, HAZE
	dbw 29, GYRO_BALL
	dbw 34, SLUDGE_BOMB
	dbw 37, EXPLOSION
	dbw 40, DESTINY_BOND
	dbw 42, SLUDGE_WAVE
	dbw 45, BELCH
	db 0 ; no more level-up moves

WeezingEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DOUBLE_HIT_M
	dbw 1, DOUBLE_HIT_M
	dbw 1, TOXIC
	dbw 1, POISON_GAS
	dbw 1, TACKLE
	dbw 4, SMOG
	dbw 7, SMOKESCREEN
	dbw 12, PAYBACK
	dbw 15, MUD_BOMB
	dbw 18, SLUDGE
	dbw 23, SELFDESTRUCT
	dbw 26, HAZE
	dbw 29, GYRO_BALL
	dbw 34, SLUDGE_BOMB
	dbw 40, EXPLOSION
	dbw 46, DESTINY_BOND
	dbw 51, SLUDGE_WAVE
	dbw 57, BELCH
	db 0 ; no more level-up moves

RhyhornEvosAttacks:
	dbbw EVOLVE_LEVEL, 42, RHYDON
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 5, FURY_ATTACK
	dbw 9, SCARY_FACE
	dbw 13, ROCK_TOMB
	dbw 17, STOMP
	dbw 21, BULLDOZE
	dbw 25, BODY_SLAM
	dbw 29, ROCK_BLAST
	dbw 33, DRILL_RUN
	dbw 37, TAKE_DOWN
	dbw 41, STONE_EDGE
	dbw 45, EARTHQUAKE
	dbw 49, MEGAHORN
	dbw 53, HORN_DRILL
	db 0 ; no more level-up moves

RhydonEvosAttacks:
	dbbw EVOLVE_ITEM, PROTECTOR, RHYPERIOR
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, HAMMER_ARM
	dbw 1, HAMMER_ARM
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 5, FURY_ATTACK
	dbw 9, SCARY_FACE
	dbw 13, ROCK_TOMB
	dbw 17, STOMP
	dbw 21, BULLDOZE
	dbw 25, BODY_SLAM
	dbw 29, ROCK_BLAST
	dbw 33, DRILL_RUN
	dbw 37, TAKE_DOWN
	dbw 41, STONE_EDGE
	dbw 48, EARTHQUAKE
	dbw 55, MEGAHORN
	dbw 62, HORN_DRILL
	db 0 ; no more level-up moves

RhyperiorEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, HORN_ATTACK
	dbw 1, TAIL_WHIP
	dbw 5, FURY_ATTACK
	dbw 9, SCARY_FACE
	dbw 13, ROCK_TOMB
	dbw 17, STOMP
	dbw 21, BULLDOZE
	dbw 25, BODY_SLAM
	dbw 29, ROCK_BLAST
	dbw 33, DRILL_RUN
	dbw 37, TAKE_DOWN
	dbw 41, STONE_EDGE
	dbw 42, HAMMER_ARM
	dbw 48, EARTHQUAKE
	dbw 55, MEGAHORN
	dbw 62, HORN_DRILL
	dbw 69, ROCK_WRECKER
	db 0 ; no more level-up moves

HappinyEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, CHANSEY
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, MINIMIZE
	dbw 1, MIMIC
	dbw 4, DEFENSE_CURL
	dbw 8, SWEET_KISS
	dbw 12, DISARM_VOICE
	dbw 16, SAFEGUARD
	dbw 20, CHARM
	db 0 ; no more level-up moves

ChanseyEvosAttacks:
	dbbw EVOLVE_HAPPINESS, TR_ANYTIME, BLISSEY
	db 0 ; no more evolutions
	dbw 1, DEFENSE_CURL
	dbw 1, POUND
	dbw 5, GROWL
	dbw 5, TAIL_WHIP
	dbw 7, ECHOED_VOICE
	dbw 9, HEAL_BELL
	dbw 12, DOUBLESLAP
	dbw 16, SOFTBOILED
	dbw 20, METRONOME
	dbw 23, MINIMIZE
	dbw 27, TAKE_DOWN
	dbw 31, SING
	dbw 34, CHARM
	dbw 38, HYPER_VOICE
	dbw 42, EGG_BOMB
	dbw 46, LIGHT_SCREEN
	dbw 50, AMNESIA
	dbw 54, DOUBLE_EDGE
	db 0 ; no more level-up moves

BlisseyEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, DEFENSE_CURL
	dbw 1, DEFENSE_CURL
	dbw 1, POUND
	dbw 5, GROWL
	dbw 5, TAIL_WHIP
	dbw 7, ECHOED_VOICE
	dbw 9, HEAL_BELL
	dbw 12, DOUBLESLAP
	dbw 16, SOFTBOILED
	dbw 20, METRONOME
	dbw 23, MINIMIZE
	dbw 27, TAKE_DOWN
	dbw 31, SING
	dbw 34, CHARM
	dbw 39, HYPER_VOICE
	dbw 44, EGG_BOMB
	dbw 50, LIGHT_SCREEN
	dbw 57, AMNESIA
	dbw 65, DOUBLE_EDGE
	db 0 ; no more level-up moves

TangelaEvosAttacks:
	dbbw EVOLVE_LEVEL, 38, TANGROWTH
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 4, SLEEP_POWDER
	dbw 7, VINE_WHIP
	dbw 10, ABSORB
	dbw 14, POISONPOWDER
	dbw 17, BIND
	dbw 20, GROWTH
	dbw 23, MEGA_DRAIN
	dbw 27, KNOCK_OFF
	dbw 30, STUN_SPORE
	dbw 33, SYNTHESIS
	dbw 36, GIGA_DRAIN
	dbw 38, ANCIENTPOWER
	dbw 41, SLAM
	dbw 44, SWAGGER
	dbw 46, SWORDS_DANCE
	dbw 48, AMNESIA
	dbw 50, POWER_WHIP
	db 0 ; no more level-up moves

TangrowthEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CONSTRICT
	dbw 4, SLEEP_POWDER
	dbw 7, VINE_WHIP
	dbw 10, ABSORB
	dbw 14, POISONPOWDER
	dbw 17, BIND
	dbw 20, GROWTH
	dbw 23, MEGA_DRAIN
	dbw 27, KNOCK_OFF
	dbw 30, STUN_SPORE
	dbw 33, SYNTHESIS
	dbw 36, GIGA_DRAIN
	dbw 40, POWER_GEM
	dbw 43, SLAM
	dbw 46, ROCK_SLIDE
	dbw 49, SWORDS_DANCE
	dbw 50, AMNESIA
	dbw 53, POWER_WHIP
	dbw 56, STONE_EDGE
	db 0 ; no more level-up moves

KangaskhanEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 7, FAKE_OUT
	dbw 10, TAIL_WHIP
	dbw 13, BITE
	dbw 19, DOUBLE_HIT_M
	dbw 22, RAGE
	dbw 25, MEGA_PUNCH
	dbw 31, HEADBUTT
	dbw 34, DIZZY_PUNCH
	dbw 37, CRUNCH
	dbw 43, ENDURE
	dbw 46, OUTRAGE
	dbw 49, SUCKER_PUNCH
	dbw 50, REVERSAL
	db 0 ; no more level-up moves

HorseaEvosAttacks:
	dbbw EVOLVE_LEVEL, 32, SEADRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, SMOKESCREEN
	dbw 9, LEER
	dbw 13, WATER_GUN
	dbw 17, TWISTER
	dbw 21, BUBBLEBEAM
	dbw 26, FOCUS_ENERGY
	dbw 31, WATER_PULSE
	dbw 36, AGILITY
	dbw 41, DRAGON_PULSE
	dbw 46, DRAGON_DANCE
	dbw 52, HYDRO_PUMP
	db 0 ; no more level-up moves

SeadraEvosAttacks:
	dbbw EVOLVE_ITEM, DRAGON_SCALE, KINGDRA
	db 0 ; no more evolutions
	dbw 1, BUBBLE
	dbw 5, SMOKESCREEN
	dbw 9, LEER
	dbw 13, WATER_GUN
	dbw 17, TWISTER
	dbw 21, BUBBLEBEAM
	dbw 26, FOCUS_ENERGY
	dbw 31, WATER_PULSE
	dbw 38, AGILITY
	dbw 45, DRAGON_PULSE
	dbw 52, DRAGON_DANCE
	dbw 60, HYDRO_PUMP
	db 0 ; no more level-up moves

KingdraEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, OUTRAGE
	dbw 1, OUTRAGE
	dbw 1, BUBBLE
	dbw 5, SMOKESCREEN
	dbw 9, LEER
	dbw 13, WATER_GUN
	dbw 17, TWISTER
	dbw 21, BUBBLEBEAM
	dbw 26, FOCUS_ENERGY
	dbw 31, WATER_PULSE
	dbw 38, AGILITY
	dbw 45, DRAGON_PULSE
	dbw 52, DRAGON_DANCE
	dbw 60, HYDRO_PUMP
	db 0 ; no more level-up moves

GolettEvosAttacks:
	dbbw EVOLVE_LEVEL, 43, GOLURK
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 1, ASTONISH
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 9, ROLLOUT
	dbw 13, SHADOW_PUNCH
	dbw 17, IRON_DEFENSE
	dbw 21, BULLDOZE
	dbw 25, MEGA_PUNCH
	dbw 30, MAGNITUDE
	dbw 35, DYNAMICPUNCH
	dbw 40, NIGHT_SHADE
	dbw 45, CURSE
	dbw 50, EARTHQUAKE
	dbw 55, HAMMER_ARM
	dbw 61, CLOSE_COMBAT
	db 0 ; no more level-up moves

GolurkEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, GYRO_BALL
	dbw 1, GYRO_BALL
	dbw 1, POUND
	dbw 1, ASTONISH
	dbw 1, DEFENSE_CURL
	dbw 5, MUD_SLAP
	dbw 9, ROLLOUT
	dbw 13, SHADOW_PUNCH
	dbw 17, IRON_DEFENSE
	dbw 21, BULLDOZE
	dbw 25, MEGA_PUNCH
	dbw 30, MAGNITUDE
	dbw 35, DYNAMICPUNCH
	dbw 40, NIGHT_SHADE
	dbw 47, CURSE
	dbw 54, EARTHQUAKE
	dbw 61, HAMMER_ARM
	dbw 69, CLOSE_COMBAT
	dbw 76, PHANTOMFORCE
	db 0 ; no more level-up moves

StaryuEvosAttacks:
	dbbw EVOLVE_ITEM, WATER_STONE, STARMIE
	db 0 ; no more evolutions
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 4, WATER_GUN
	dbw 8, CONFUSE_RAY
	dbw 12, RAPID_SPIN
	dbw 16, MINIMIZE
	dbw 20, SWIFT
	dbw 24, PSYBEAM
	dbw 28, BUBBLEBEAM
	dbw 32, LIGHT_SCREEN
	dbw 36, POWER_GEM
	dbw 40, EXTRASENSORY
	dbw 44, SURF
	dbw 48, RECOVER
	dbw 52, COSMIC_POWER
	dbw 56, HYDRO_PUMP
	db 0 ; no more level-up moves

StarmieEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, PSYCHIC_M
	dbw 1, PSYCHIC_M
	dbw 1, TACKLE
	dbw 1, HARDEN
	dbw 1, WATER_GUN
	dbw 1, CONFUSE_RAY
	dbw 1, RAPID_SPIN
	dbw 1, MINIMIZE
	dbw 1, SWIFT
	dbw 1, PSYBEAM
	dbw 1, BUBBLEBEAM
	dbw 1, LIGHT_SCREEN
	dbw 1, POWER_GEM
	dbw 1, SURF
	dbw 1, RECOVER
	dbw 1, COSMIC_POWER
	dbw 1, HYDRO_PUMP
	db 0 ; no more level-up moves

MimeJrEvosAttacks:
	dbbw EVOLVE_LEVEL, 16, MR__MIME
	db 0 ; no more evolutions
	dbw 1, BARRIER
	dbw 1, CONFUSION
	dbw 1, MAGICAL_LEAF
	dbw 8, MEDITATE
	dbw 11, DOUBLESLAP
	dbw 15, MIMIC
	dbw 18, ENCORE
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, PSYBEAM
	dbw 29, SUBSTITUTE
	dbw 32, DRAININGKISS
	dbw 36, DAZZLINGLEAM
	dbw 39, PSYCHIC_M
	dbw 43, CALM_MIND
	dbw 46, BATON_PASS
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

MrMimeEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, CONFUSION
	dbw 1, CONFUSION
	dbw 1, BARRIER
	dbw 1, MAGICAL_LEAF
	dbw 8, MEDITATE
	dbw 11, DOUBLESLAP
	dbw 15, MIMIC
	dbw 15, PSYWAVE
	dbw 18, ENCORE
	dbw 22, LIGHT_SCREEN
	dbw 22, REFLECT
	dbw 25, PSYBEAM
	dbw 29, SUBSTITUTE
	dbw 32, DRAININGKISS
	dbw 36, DAZZLINGLEAM
	dbw 39, PSYCHIC_M
	dbw 43, CALM_MIND
	dbw 46, BATON_PASS
	dbw 50, SAFEGUARD
	db 0 ; no more level-up moves

ScytherEvosAttacks:
	dbbw EVOLVE_ITEM, METAL_COAT, SCIZOR
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, FOCUS_ENERGY
	dbw 9, PURSUIT
	dbw 13, FALSE_SWIPE
	dbw 17, AGILITY
	dbw 21, WING_ATTACK
	dbw 25, FURY_CUTTER
	dbw 29, SLASH
	dbw 33, RAZOR_WIND
	dbw 37, DOUBLE_TEAM
	dbw 41, X_SCISSOR
	dbw 45, NIGHT_SLASH
	dbw 49, DOUBLE_HIT_M
	dbw 50, DUALWINGBEAT
	dbw 57, SWORDS_DANCE
	dbw 60, BOUNCE
	db 0 ; no more level-up moves

ScizorEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, METAL_CLAW
	dbw 1, METAL_CLAW
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, FOCUS_ENERGY
	dbw 9, PURSUIT
	dbw 13, FALSE_SWIPE
	dbw 17, AGILITY
	dbw 21, METAL_CLAW
	dbw 25, FURY_CUTTER
	dbw 29, SLASH
	dbw 33, RAZOR_WIND
	dbw 37, IRON_DEFENSE
	dbw 41, X_SCISSOR
	dbw 45, NIGHT_SLASH
	dbw 49, DOUBLE_HIT_M
	dbw 50, IRON_HEAD
	dbw 57, SWORDS_DANCE
	dbw 61, DOUBLE_TEAM
	db 0 ; no more level-up moves

SmoochumEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, JYNX
	db 0 ; no more evolutions
	dbw 1, POUND
	dbw 5, LICK
	dbw 8, SWEET_KISS
	dbw 11, POWDER_SNOW
	dbw 15, CONFUSION
	dbw 18, SING
	dbw 21, PSYBEAM
	dbw 25, MEAN_LOOK
	dbw 28, NASTY_PLOT
	dbw 31, PROTECT
	dbw 35, AURORA_BEAM
	dbw 38, PSYCHIC_M
	dbw 45, PERISH_SONG
	dbw 48, BLIZZARD
	db 0 ; no more level-up moves

JynxEvosAttacks:
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, LOVELY_KISS
	dbw 1, LOVELY_KISS
	dbw 1, POUND
	dbw 5, LICK
	dbw 8, LOVELY_KISS
	dbw 11, POWDER_SNOW
	dbw 15, DOUBLESLAP
	dbw 18, ICE_PUNCH
	dbw 21, PSYBEAM
	dbw 25, MEAN_LOOK
	dbw 28, NASTY_PLOT
	dbw 33, BRICK_BREAK
	dbw 39, AVALANCHE
	dbw 44, BODY_SLAM
	dbw 49, PSYCHIC_M
	dbw 55, PERISH_SONG
	dbw 60, BLIZZARD
	db 0 ; no more level-up moves

ElekidEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, ELECTABUZZ
	db 0 ; no more evolutions
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 5, THUNDERSHOCK
	dbw 8, LOW_KICK
	dbw 12, SWIFT
	dbw 15, CHARGE_BEAM
	dbw 19, THUNDER_WAVE
	dbw 22, THUNDER_FANG
	dbw 26, LIGHT_SCREEN
	dbw 29, THUNDERPUNCH
	dbw 33, DISCHARGE
	dbw 36, SCREECH
	dbw 40, THUNDERBOLT
	dbw 43, THUNDER
	db 0 ; no more level-up moves

ElectabuzzEvosAttacks:
	dbbw EVOLVE_ITEM, ELECTIRIZER, ELECTIVIRE
	db 0 ; no more evolutions
	dbw LEARN_EVO_MOVE, CROSS_CHOP
	dbw 1, CROSS_CHOP
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 8, LOW_KICK
	dbw 12, SWIFT
	dbw 15, SPARK
	dbw 19, THUNDER_WAVE
	dbw 22, CHARGE_BEAM
	dbw 26, LIGHT_SCREEN
	dbw 29, THUNDERPUNCH
	dbw 36, DISCHARGE
	dbw 42, SCREECH
	dbw 49, THUNDERBOLT
	dbw 55, THUNDER
	db 0 ; no more level-up moves

ElectivireEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, CROSS_CHOP
	dbw 1, QUICK_ATTACK
	dbw 1, LEER
	dbw 1, THUNDERSHOCK
	dbw 8, LOW_KICK
	dbw 12, SWIFT
	dbw 15, SPARK
	dbw 19, THUNDER_WAVE
	dbw 22, CHARGE_BEAM
	dbw 26, LIGHT_SCREEN
	dbw 29, THUNDERPUNCH
	dbw 30, CROSS_CHOP
	dbw 36, DISCHARGE
	dbw 42, SCREECH
	dbw 49, THUNDERBOLT
	dbw 55, VOLT_TACKLE
	dbw 62, GIGA_IMPACT
	dbw 65, CLOSE_COMBAT
	db 0 ; no more level-up moves

MagbyEvosAttacks:
	dbbw EVOLVE_LEVEL, 30, MAGMAR
	db 0 ; no more evolutions
	dbw 1, LEER
	dbw 1, SMOG
	dbw 5, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, FAINT_ATTACK
	dbw 15, FIRE_SPIN
	dbw 19, SLUDGE
	dbw 22, FLAME_BURST
	dbw 26, CONFUSE_RAY
	dbw 29, FIRE_PUNCH
	dbw 33, LAVA_PLUME
	dbw 36, SUNNY_DAY
	dbw 40, FLAMETHROWER
	dbw 43, FIRE_BLAST
	db 0 ; no more level-up moves

MagmarEvosAttacks:
	dbbw EVOLVE_ITEM, MAGMARIZER, MAGMORTAR
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, SMOG
	dbw 5, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, FAINT_ATTACK
	dbw 15, FIRE_SPIN
	dbw 19, SLUDGE
	dbw 22, FLAME_BURST
	dbw 26, CONFUSE_RAY
	dbw 29, FIRE_PUNCH
	dbw 36, LAVA_PLUME
	dbw 42, SUNNY_DAY
	dbw 49, FLAMETHROWER
	dbw 55, FIRE_BLAST
	db 0 ; no more level-up moves

MagmortarEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, EMBER
	dbw 1, LEER
	dbw 1, SMOG
	dbw 5, EMBER
	dbw 8, SMOKESCREEN
	dbw 12, FAINT_ATTACK
	dbw 15, FIRE_SPIN
	dbw 19, SLUDGE
	dbw 22, FLAME_BURST
	dbw 26, CONFUSE_RAY
	dbw 29, FIRE_PUNCH
	dbw 36, LAVA_PLUME
	dbw 42, SUNNY_DAY
	dbw 49, FLAMETHROWER
	dbw 55, FIRE_BLAST
if DEF(_FAITHFUL)
	dbw 62, HYPER_BEAM
else
	dbw 62, BELCH
endc
	db 0 ; no more level-up moves

PinsirEvosAttacks:
	db 0 ; no more evolutions
	dbw 1, VICEGRIP
	dbw 1, FOCUS_ENERGY
	dbw 4, BIND
	dbw 8, SEISMIC_TOSS
	dbw 11, HARDEN
	dbw 15, REVENGE
	dbw 18, VITAL_THROW
	dbw 22, DOUBLE_HIT_M
	dbw 26, BRICK_BREAK
	dbw 29, X_SCISSOR
	dbw 33, SUBMISSION
	dbw 36, CIRCLE_THROW
	dbw 40, SWORDS_DANCE
	dbw 43, PINCIRFLURRY
	dbw 47, SUPERPOWER
	dbw 50, GUILLOTINE
	db 0 ; no more level-up moves
