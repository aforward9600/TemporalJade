; Trainer data structure:
; - db "NAME@", TRAINERTYPE_* constant
; - 1 to 6 Pokémon:
;    * for TRAINERTYPE_NORMAL:     db level, species
;    * for TRAINERTYPE_MOVES:      db level, species, 4 moves
;    * for TRAINERTYPE_ITEM:       db level, species, item
;    * for TRAINERTYPE_ITEM_MOVES: db level, species, item, 4 moves
; - db -1 ; end

SECTION "Enemy Trainer Parties 1", ROMX

WalkerGroup:
	next_list_item ; Walker (1)
	db "Walker@", TRAINERTYPE_MOVES
	db 7
	dw HOOTHOOT
	dw TACKLE, SAND_ATTACK, PECK, ROOST
	db 9
	dw MURKROW
	dw PECK, PURSUIT, ROOST, HAZE
	db -1 ; end

	end_list_items

MiltonGroup:
	next_list_item ; Milton (1)
	db "Milton@", TRAINERTYPE_MOVES
	db 18
	dw AIPOM
	dw FURY_SWIPES, SWORDS_DANCE, GROWL, SAND_ATTACK
	db 19
	dw TAUROS
	dw SWORDS_DANCE, REST, HORN_ATTACK, SCARY_FACE
	db -1 ; end

	end_list_items

KurtGroup:
	next_list_item ; KURT (1)
	db "Kurt@", TRAINERTYPE_MOVES
	db 14
	dw YANMA
	dw SONICBOOM, QUICK_ATTACK, FORESIGHT, TACKLE
	db 14
	dw SPINARAK
	dw POISON_STING, SCARY_FACE, ABSORB, PAYBACK
	db 16
	dw HERACROSS
	dw HEADBUTT, AERIAL_ACE, HORN_ATTACK, ENDURE
	db -1 ; end

	end_list_items

EnokiGroup:
	next_list_item ; MORTY (1)
	db "Enoki@", TRAINERTYPE_MOVES
	db 15
	dw GASTLY
	dw HEX, SPITE, MEAN_LOOK, CURSE
	db 16
	dw CORSOLA
	dw NIGHT_SHADE, WILL_O_WISP, HEX, SPIKES
	db 17
	dw MISDREAVUS
	dw HEX, HYPNOSIS, MEAN_LOOK, DREAM_EATER
	db -1 ; end

	end_list_items

PryceGroup:
	next_list_item ; PRYCE (1)
	db "Pryce@", TRAINERTYPE_MOVES
	db 9
	dw SMOOCHUM
	dw SWEET_KISS, POUND, ICY_WIND, CONFUSION
	db 10
	dw SWINUB
	dw MUD_SLAP, POWDER_SNOW, TACKLE, HAIL
	db 11
	dw SNEASEL
	dw SCRATCH, PURSUIT, HONE_CLAWS, ICE_SHARD
	db -1 ; end

	end_list_items

ByronGroup:
	next_list_item ; BYRON (1)
	db "Byron@", TRAINERTYPE_MOVES
	db 29
	dw FORRETRESS
	dw MIRROR_SHOT, SPIKES, SUBSTITUTE, REVERSAL
	db 30
	dw MAGNETON
	dw DISCHARGE, METAL_SOUND, MIRROR_SHOT, TRI_ATTACK
	db 35
	dw STEELIX
	dw IRON_DEFENSE, BULLDOZE, ROCK_SLIDE, IRON_HEAD
	db -1 ; end

	end_list_items

ChuckGroup:
	next_list_item ; CHUCK (1)
	db "Chuck@", TRAINERTYPE_MOVES
	db 23
	dw PRIMEAPE
	dw LEER, RAGE, KARATE_CHOP, FURY_SWIPES
	db 24
	dw POLIWRATH
	dw HYPNOSIS, MIND_READER, SURF, DYNAMICPUNCH
	db -1 ; end

	end_list_items

ClairGroup:
	next_list_item ; CLAIR (1)
	db "Clair@", TRAINERTYPE_NORMAL
	db 5
	dw HORSEA
	db -1 ; end

	end_list_items

Rival1Group:
	next_list_item ; RIVAL1 (4)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw BAYLEEF
	db -1 ; end

	next_list_item ; RIVAL1 (5)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw QUILAVA
	db -1 ; end

	next_list_item ; RIVAL1 (6)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 12
	dw GASTLY
	db 14
	dw ZUBAT
	db 16
	dw CROCONAW
	db -1 ; end

	next_list_item ; RIVAL1 (7)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw BAYLEEF
	dw GROWL, REFLECT, RAZOR_LEAF, POISONPOWDER
	db -1 ; end

	next_list_item ; RIVAL1 (8)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw QUILAVA
	dw LEER, SMOKESCREEN, EMBER, QUICK_ATTACK
	db -1 ; end

	next_list_item ; RIVAL1 (9)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 20
	dw HAUNTER
	dw LICK, SPITE, MEAN_LOOK, CURSE
	db 18
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SUPERSONIC, SONICBOOM
	db 20
	dw ZUBAT
	dw LEECH_LIFE, SUPERSONIC, BITE, CONFUSE_RAY
	db 22
	dw CROCONAW
	dw LEER, RAGE, WATER_GUN, BITE
	db -1 ; end

	next_list_item ; RIVAL1 (10)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (11)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw QUILAVA
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (12)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 30
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 28
	dw MAGNEMITE
	dw TACKLE, THUNDERSHOCK, SONICBOOM, THUNDER_WAVE
	db 30
	dw HAUNTER
	dw LICK, MEAN_LOOK, CURSE, SHADOW_BALL
	db 32
	dw SNEASEL
	dw LEER, QUICK_ATTACK, SCREECH, FAINT_ATTACK
	db 32
	dw FERALIGATR
	dw RAGE, WATER_GUN, BITE, SCARY_FACE
	db -1 ; end

	next_list_item ; RIVAL1 (13)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw MEGANIUM
	dw REFLECT, RAZOR_LEAF, POISONPOWDER, BODY_SLAM
	db -1 ; end

	next_list_item ; RIVAL1 (14)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 35
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw TYPHLOSION
	dw SMOKESCREEN, EMBER, QUICK_ATTACK, FLAME_WHEEL
	db -1 ; end

	next_list_item ; RIVAL1 (15)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 34
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 34
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 35
	dw HAUNTER
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 35
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db 38
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	end_list_items

PokemonProfGroup:
	next_list_item ; OAK (1)
	db "Oak@", TRAINERTYPE_ITEM_MOVES
	db 100
	dw GYARADOS
	db KINGS_ROCK
	dw WATERFALL, DRAGON_DANCE, BOUNCE, GIGA_IMPACT
	db 100
	dw DODRIO
	db SHARP_BEAK
	dw DRILL_PECK, AGILITY, SWORDS_DANCE, STEEL_WING
	db 100
	dw RHYDON
	db EVIOLITE
	dw EARTHQUAKE, STONE_EDGE, REST, HAMMER_ARM
	db 100
	dw ARCANINE
	db CHARCOAL
	dw EXTREMESPEED, FLARE_BLITZ, CRUNCH, OUTRAGE
	db 100
	dw EXEGGUTOR
	db QUICK_CLAW
	dw PSYCHIC_M, GIGA_DRAIN, NASTY_PLOT, SLEEP_POWDER
	db 100
	dw TAUROS
	db FOCUS_BAND
	dw EARTHQUAKE, SWORDS_DANCE, BODY_SLAM, GIGA_IMPACT
	db -1 ; end

	end_list_items

FlorinaGroup:
	next_list_item ; FLORINA (1)
	db "Florina@", TRAINERTYPE_MOVES
	db 40
	dw SUNFLORA
	dw FLAMETHROWER, EARTH_POWER, SUNNY_DAY, SOLARBEAM
	db 41
	dw BELLOSSOM
	dw MOONBLAST, STRENGTH_SAP, SUNNY_DAY, SOLARBEAM
	db 41
	dw EXEGGUTOR
	dw REFLECT, SLEEP_POWDER, GIGA_DRAIN, DREAM_EATER
	db 41
	dw LEAFEON
	dw POISON_JAB, SOLAR_BLADE, SUNNY_DAY, STRENGTH_SAP
	db 42
	dw MEGANIUM
	dw MOONBLAST, CALM_MIND, GIGA_DRAIN, LIGHT_SCREEN
	db -1 ; end

	end_list_items

PKMNTrainerGroup:
	next_list_item ; CAL (1)
	db "CAL@", TRAINERTYPE_NORMAL
	db 10
	dw CHIKORITA
	db 10
	dw CYNDAQUIL
	db 10
	dw TOTODILE
	db -1 ; end

	next_list_item ; CAL (2)
	db "CAL@", TRAINERTYPE_NORMAL
	db 30
	dw BAYLEEF
	db 30
	dw QUILAVA
	db 30
	dw CROCONAW
	db -1 ; end

	next_list_item ; CAL (3)
	db "CAL@", TRAINERTYPE_NORMAL
	db 50
	dw MEGANIUM
	db 50
	dw TYPHLOSION
	db 50
	dw FERALIGATR
	db -1 ; end

	end_list_items

MarthaGroup:
	next_list_item ; MARTHA (1)
	db "Martha@", TRAINERTYPE_MOVES
	db 42
	dw CLEFABLE
	dw MOONBLAST, COSMIC_POWER, SOFTBOILED, FIRE_BLAST
	db 42
	dw WIGGLYTUFF
	dw PLAY_ROUGH, HYPER_VOICE, EARTHQUAKE, MOONLIGHT
	db 42
	dw GRANBULL
	dw CRUNCH, PLAY_ROUGH, EARTHQUAKE, SWORDS_DANCE
	db 43
	dw SNORLAX
	dw CURSE, HIHORSEPOWER, REST, BODY_SLAM
	db 46
	dw TOGEKISS
	dw MOONBLAST, AIR_SLASH, AURA_SPHERE, AGILITY
	db -1 ; end

	end_list_items

AgathaGroup:
	next_list_item ; AGATHA (1)
	db "Agatha@", TRAINERTYPE_MOVES
	db 42
	dw GENGAR
	dw HYPNOSIS, DREAM_EATER, SHADOW_BALL, NASTY_PLOT
	db 42
	dw CROBAT
	dw FLY, CONFUSE_RAY, GUNK_SHOT, CRUNCH
	db 45
	dw CURSOLA
	dw PERISH_SONG, SHADOW_BALL, NASTY_PLOT, STRENGTH_SAP
	db 44
	dw HOUNDOOM
	dw NASTY_PLOT, FLAMETHROWER, DARK_PULSE, WILL_O_WISP
	db 47
	dw MISMAGIUS
	dw SHADOW_BALL, NASTY_PLOT, FLAMETHROWER, MOONBLAST
	db -1 ; end

	end_list_items

KogaGroup:
	next_list_item ; KOGA (1)
	db "Koga@", TRAINERTYPE_MOVES
	db 40
	dw ARIADOS
	dw DOUBLE_TEAM, SPIDER_WEB, BATON_PASS, GIGA_DRAIN
	db 41
	dw VENOMOTH
	dw SUPERSONIC, GUST, PSYCHIC_M, TOXIC
	db 43
	dw FORRETRESS
	dw PROTECT, SWIFT, EXPLOSION, SPIKES
	db 42
	dw MUK
	dw MINIMIZE, ACID_ARMOR, SLUDGE_BOMB, TOXIC
	db 44
	dw CROBAT
	dw DOUBLE_TEAM, QUICK_ATTACK, WING_ATTACK, TOXIC
	db -1 ; end

	end_list_items

ChampionGroup:
	next_list_item ; CHAMPION (1)
	db "LANCE@", TRAINERTYPE_MOVES
	db 44
	dw GYARADOS
	dw FLAIL, RAIN_DANCE, SURF, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, THUNDER, HYPER_BEAM
	db 47
	dw DRAGONITE
	dw THUNDER_WAVE, TWISTER, BLIZZARD, HYPER_BEAM
	db 46
	dw AERODACTYL
	dw WING_ATTACK, ANCIENTPOWER, ROCK_SLIDE, HYPER_BEAM
	db 46
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, HYPER_BEAM
	db 50
	dw DRAGONITE
	dw FIRE_BLAST, SAFEGUARD, OUTRAGE, HYPER_BEAM
	db -1 ; end

	end_list_items

BrockGroup:
	next_list_item ; BROCK (1)
	db "BROCK@", TRAINERTYPE_MOVES
	db 41
	dw GRAVELER
	dw DEFENSE_CURL, ROCK_SLIDE, ROLLOUT, EARTHQUAKE
	db 41
	dw RHYHORN
	dw FURY_ATTACK, SCARY_FACE, EARTHQUAKE, HORN_DRILL
	db 42
	dw OMASTAR
	dw BITE, SURF, PROTECT, SPIKE_CANNON
	db 44
	dw ONIX
	dw BIND, ROCK_SLIDE, EARTHQUAKE, SANDSTORM
	db 42
	dw KABUTOPS
	dw SLASH, SURF, ENDURE, GIGA_DRAIN
	db -1 ; end

	end_list_items

MistyGroup:
	next_list_item ; MISTY (1)
	db "MISTY@", TRAINERTYPE_MOVES
	db 42
	dw GOLDUCK
	dw SURF, DISABLE, PSYCH_UP, PSYCHIC_M
	db 42
	dw QUAGSIRE
	dw SURF, AMNESIA, EARTHQUAKE, RAIN_DANCE
	db 44
	dw LAPRAS
	dw SURF, PERISH_SONG, BLIZZARD, RAIN_DANCE
	db 47
	dw STARMIE
	dw SURF, CONFUSE_RAY, RECOVER, ICE_BEAM
	db -1 ; end

	end_list_items

LtSurgeGroup:
	next_list_item ; LT_SURGE (1)
	db "LT.SURGE@", TRAINERTYPE_MOVES
	db 44
	dw RAICHU
	dw THUNDER_WAVE, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 40
	dw ELECTRODE
	dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 40
	dw MAGNETON
	dw LOCK_ON, DOUBLE_TEAM, SWIFT, ZAP_CANNON
	db 40
	dw ELECTRODE
	dw SCREECH, DOUBLE_TEAM, SWIFT, EXPLOSION
	db 46
	dw ELECTABUZZ
	dw QUICK_ATTACK, THUNDERPUNCH, LIGHT_SCREEN, THUNDER
	db -1 ; end

	end_list_items

ScientistGroup:
	next_list_item ; SCIENTIST (1)
	db "ROSS@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SCIENTIST (2)
	db "MITCH@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SCIENTIST (3)
	db "JED@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (4)
	db "MARC@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCIENTIST (5)
	db "RICH@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, NASTY_PLOT, RECOVER, TRI_ATTACK
	db -1 ; end

	end_list_items

ErikaGroup:
	next_list_item ; ERIKA (1)
	db "ERIKA@", TRAINERTYPE_MOVES
	db 42
	dw TANGELA
	dw VINE_WHIP, BIND, GIGA_DRAIN, SLEEP_POWDER
	db 41
	dw JUMPLUFF
	dw MEGA_DRAIN, LEECH_SEED, COTTON_SPORE, GIGA_DRAIN
	db 46
	dw VICTREEBEL
	dw SUNNY_DAY, SYNTHESIS, ACID, RAZOR_LEAF
	db 46
	dw BELLOSSOM
	dw SUNNY_DAY, SYNTHESIS, PETAL_DANCE, SOLARBEAM
	db -1 ; end

	end_list_items

YoungsterGroup:
	next_list_item ; YOUNGSTER (1)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (2)
	db "Timmy@", TRAINERTYPE_NORMAL
	db 3
	dw PIDGEY
	db 4
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (3)
	db "ALBERT@", TRAINERTYPE_NORMAL
	db 6
	dw RATTATA
	db 8
	dw ZUBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (4)
	db "GORDON@", TRAINERTYPE_NORMAL
	db 10
	dw WOOPER
	db -1 ; end

	next_list_item ; YOUNGSTER (5)
	db "SAMUEL@", TRAINERTYPE_NORMAL
	db 7
	dw RATTATA
	db 10
	dw SANDSHREW
	db 8
	dw SPEAROW
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (6)
	db "IAN@", TRAINERTYPE_NORMAL
	db 10
	dw MANKEY
	db 12
	dw DIGLETT
	db -1 ; end

	next_list_item ; YOUNGSTER (7)
	db "JOEY@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; YOUNGSTER (8)
	db "JOEY@", TRAINERTYPE_MOVES
	db 21
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, SCARY_FACE
	db -1 ; end

	next_list_item ; YOUNGSTER (9)
	db "WARREN@", TRAINERTYPE_NORMAL
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; YOUNGSTER (10)
	db "JIMMY@", TRAINERTYPE_NORMAL
	db 33
	dw RATICATE
	db 33
	dw ARBOK
	db -1 ; end

	next_list_item ; YOUNGSTER (11)
	db "OWEN@", TRAINERTYPE_NORMAL
	db 35
	dw GROWLITHE
	db -1 ; end

	next_list_item ; YOUNGSTER (12)
	db "JASON@", TRAINERTYPE_NORMAL
	db 33
	dw SANDSLASH
	db 33
	dw CROBAT
	db -1 ; end

	next_list_item ; YOUNGSTER (13)
	db "JOEY@", TRAINERTYPE_MOVES
	db 30
	dw RATICATE
	dw TAIL_WHIP, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	next_list_item ; YOUNGSTER (14)
	db "JOEY@", TRAINERTYPE_MOVES
	db 37
	dw RATICATE
	dw HYPER_BEAM, QUICK_ATTACK, HYPER_FANG, PURSUIT
	db -1 ; end

	end_list_items

SECTION "Enemy Trainer Parties 2", ROMX

SchoolboyGroup:
	next_list_item ; SCHOOLBOY (1)
	db "Finn@", TRAINERTYPE_NORMAL
	db 9
	dw ODDISH
	db 10
	dw MAGBY
	db -1 ; end

	next_list_item ; SCHOOLBOY (2)
	db "KIPP@", TRAINERTYPE_NORMAL
	db 27
	dw VOLTORB
	db 27
	dw MAGNEMITE
	db 31
	dw VOLTORB
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (3)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 16
	dw TANGELA
	db -1 ; end

	next_list_item ; SCHOOLBOY (4)
	db "JOHNNY@", TRAINERTYPE_NORMAL
	db 29
	dw BELLSPROUT
	db 31
	dw WEEPINBELL
	db 33
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; SCHOOLBOY (5)
	db "DANNY@", TRAINERTYPE_NORMAL
	db 31
	dw JYNX
	db 31
	dw ELECTABUZZ
	db 31
	dw MAGMAR
	db -1 ; end

	next_list_item ; SCHOOLBOY (6)
	db "TOMMY@", TRAINERTYPE_NORMAL
	db 32
	dw XATU
	db 34
	dw ALAKAZAM
	db -1 ; end

	next_list_item ; SCHOOLBOY (7)
	db "DUDLEY@", TRAINERTYPE_NORMAL
	db 35
	dw ODDISH
	db -1 ; end

	next_list_item ; SCHOOLBOY (8)
	db "JOE@", TRAINERTYPE_NORMAL
	db 33
	dw TANGELA
	db 33
	dw VAPOREON
	db -1 ; end

	next_list_item ; SCHOOLBOY (9)
	db "BILLY@", TRAINERTYPE_NORMAL
	db 27
	dw PARAS
	db 27
	dw PARAS
	db 27
	dw POLIWHIRL
	db 35
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (10) CHAD1
	db "Eric@", TRAINERTYPE_NORMAL
	db 15
	dw DROWZEE
	db 15
	dw MAREEP
	db 16
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; SCHOOLBOY (11)
	db "NATE@", TRAINERTYPE_NORMAL
	db 32
	dw LEDIAN
	db 32
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; SCHOOLBOY (12)
	db "RICKY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 32
	dw DITTO
	db -1 ; end

	next_list_item ; SCHOOLBOY (13)
	db "JACK@", TRAINERTYPE_NORMAL
	db 14
	dw ODDISH
	db 17
	dw VOLTORB
	db -1 ; end

	next_list_item ; SCHOOLBOY (14)
	db "JACK@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (15)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 17
	dw TANGELA
	db 17
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (16)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 20
	dw NATU
	db 22
	dw TANGELA
	db 20
	dw QUAGSIRE
	db 25
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (17)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 19
	dw MR__MIME
	db 19
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SCHOOLBOY (18)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 27
	dw MR__MIME
	db 31
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (19)
	db "JACK@", TRAINERTYPE_NORMAL
	db 30
	dw GLOOM
	db 33
	dw GROWLITHE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; SCHOOLBOY (20)
	db "JACK@", TRAINERTYPE_MOVES
	db 35
	dw ELECTRODE
	dw SCREECH, SONICBOOM, ROLLOUT, LIGHT_SCREEN
	db 35
	dw GROWLITHE
	dw SUNNY_DAY, LEER, TAKE_DOWN, FLAME_WHEEL
	db 37
	dw VILEPLUME
	dw SOLARBEAM, SLEEP_POWDER, ACID, MOONLIGHT
	db -1 ; end

	next_list_item ; SCHOOLBOY (21)
	db "ALAN@", TRAINERTYPE_NORMAL
	db 27
	dw NATU
	db 27
	dw TANGELA
	db 30
	dw QUAGSIRE
	db 30
	dw YANMA
	db -1 ; end

	next_list_item ; SCHOOLBOY (22)
	db "ALAN@", TRAINERTYPE_MOVES
	db 35
	dw XATU
	dw PECK, NIGHT_SHADE, SWIFT, FUTURE_SIGHT
	db 32
	dw TANGELA
	dw POISONPOWDER, VINE_WHIP, BIND, MEGA_DRAIN
	db 32
	dw YANMA
	dw QUICK_ATTACK, DOUBLE_TEAM, SONICBOOM, SUPERSONIC
	db 35
	dw QUAGSIRE
	dw TAIL_WHIP, SLAM, AMNESIA, EARTHQUAKE
	db -1 ; end

	next_list_item ; SCHOOLBOY (23)
	db "CHAD@", TRAINERTYPE_NORMAL
	db 30
	dw MR__MIME
	db 34
	dw MAGNETON
	db -1 ; end

	next_list_item ; SCHOOLBOY (24)
	db "CHAD@", TRAINERTYPE_MOVES
	db 34
	dw MR__MIME
	dw PSYCHIC_M, LIGHT_SCREEN, REFLECT, ENCORE
	db 38
	dw MAGNETON
	dw ZAP_CANNON, THUNDER_WAVE, LOCK_ON, SWIFT
	db -1 ; end

	end_list_items

BirdKeeperGroup:
	next_list_item ; BIRD_KEEPER (1)
	db "ROD@", TRAINERTYPE_NORMAL
	db 7
	dw PIDGEY
	db 7
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (2)
	db "ABE@", TRAINERTYPE_NORMAL
	db 9
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (3)
	db "BRYAN@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 14
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (4)
	db "THEO@", TRAINERTYPE_NORMAL
	db 17
	dw PIDGEY
	db 15
	dw PIDGEY
	db 19
	dw PIDGEY
	db 15
	dw PIDGEY
	db 15
	dw PIDGEY
	db -1 ; end

	next_list_item ; BIRD_KEEPER (5) TOBY
	db "Farley@", TRAINERTYPE_NORMAL
	db 15
	dw DODUO
	db 16
	dw NATU
	db 17
	dw SKARMINI
	db -1 ; end

	next_list_item ; BIRD_KEEPER (6)
	db "DENIS@", TRAINERTYPE_NORMAL
	db 18
	dw SPEAROW
	db 20
	dw FEAROW
	db 18
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (7)
	db "Sal@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw SPEAROW
	db 7
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (8)
	db "HANK@", TRAINERTYPE_NORMAL
	db 12
	dw PIDGEY
	db 34
	dw PIDGEOT
	db -1 ; end

	next_list_item ; BIRD_KEEPER (9)
	db "ROY@", TRAINERTYPE_NORMAL
	db 29
	dw FEAROW
	db 35
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (10)
	db "BORIS@", TRAINERTYPE_NORMAL
	db 30
	dw DODUO
	db 28
	dw DODUO
	db 32
	dw DODRIO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (11)
	db "BOB@", TRAINERTYPE_NORMAL
	db 34
	dw NOCTOWL
	db -1 ; end

	next_list_item ; BIRD_KEEPER (12)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 36
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (13)
	db "PETER@", TRAINERTYPE_NORMAL
	db 6
	dw PIDGEY
	db 6
	dw PIDGEY
	db 8
	dw SPEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (14)
	db "JOSE@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (15)
	db "PERRY@", TRAINERTYPE_NORMAL
	db 34
	dw FARFETCH_D
	db -1 ; end

	next_list_item ; BIRD_KEEPER (16)
	db "BRET@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw FEAROW
	db -1 ; end

	next_list_item ; BIRD_KEEPER (17)
	db "JOSE@", TRAINERTYPE_MOVES
	db 40
	dw FARFETCH_D
	dw FURY_ATTACK, DETECT, FLY, SLASH
	db -1 ; end

	next_list_item ; BIRD_KEEPER (18)
	db "VANCE@", TRAINERTYPE_NORMAL
	db 32
	dw PIDGEOTTO
	db 32
	dw PIDGEOTTO
	db -1 ; end

	next_list_item ; BIRD_KEEPER (19)
	db "VANCE@", TRAINERTYPE_MOVES
	db 38
	dw PIDGEOT
	dw TOXIC, QUICK_ATTACK, WHIRLWIND, FLY
	db 38
	dw PIDGEOT
	dw SWIFT, DETECT, STEEL_WING, FLY
	db -1 ; end

	end_list_items

LassGroup:
	next_list_item ; LASS (1)
	db "Jackie@", TRAINERTYPE_MOVES
	db 12
	dw SNUBBULL
	dw SCARY_FACE, CHARM, BITE, LICK
	db -1 ; end

	next_list_item ; LASS (3)
	db "Arielle@", TRAINERTYPE_NORMAL
	db 4
	dw PIDGEY
	db 5
	dw NIDORAN_F
	db 5
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; LASS (4)
	db "KRISE@", TRAINERTYPE_NORMAL
	db 12
	dw ODDISH
	db 15
	dw CUBONE
	db -1 ; end

	next_list_item ; LASS (5)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (6)
	db "LINDA@", TRAINERTYPE_NORMAL
	db 30
	dw BULBASAUR
	db 32
	dw IVYSAUR
	db 34
	dw VENUSAUR
	db -1 ; end

	next_list_item ; LASS (7)
	db "LAURA@", TRAINERTYPE_NORMAL
	db 28
	dw GLOOM
	db 31
	dw PIDGEOTTO
	db 31
	dw BELLOSSOM
	db -1 ; end

	next_list_item ; LASS (8)
	db "SHANNON@", TRAINERTYPE_NORMAL
	db 29
	dw PARAS
	db 29
	dw PARAS
	db 32
	dw PARASECT
	db -1 ; end

	next_list_item ; LASS (9)
	db "MICHELLE@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 33
	dw HOPPIP
	db 34
	dw JUMPLUFF
	db -1 ; end

	next_list_item ; LASS (9) DANA1
	db "Cynthia@", TRAINERTYPE_MOVES
	db 17
	dw TOGETIC
	dw FAIRY_WIND, SING, ENCORE, METRONOME
	db -1 ; end

	next_list_item ; LASS (10)
	db "ELLEN@", TRAINERTYPE_NORMAL
	db 30
	dw WIGGLYTUFF
	db 34
	dw GRANBULL
	db -1 ; end

	next_list_item ; LASS (11)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (12)
	db "CONNIE@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db -1 ; end

	next_list_item ; LASS (13)
	db "DANA@", TRAINERTYPE_MOVES
	db 21
	dw FLAAFFY
	dw TACKLE, GROWL, THUNDERSHOCK, THUNDER_WAVE
	db 21
	dw PSYDUCK
	dw SCRATCH, TAIL_WHIP, DISABLE, CONFUSION
	db -1 ; end

	next_list_item ; LASS (14)
	db "DANA@", TRAINERTYPE_MOVES
	db 29
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 29
	dw AMPHAROS
	dw TACKLE, THUNDERSHOCK, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (15)
	db "DANA@", TRAINERTYPE_MOVES
	db 32
	dw PSYDUCK
	dw SCRATCH, DISABLE, CONFUSION, SCREECH
	db 32
	dw AMPHAROS
	dw TACKLE, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db -1 ; end

	next_list_item ; LASS (16)
	db "DANA@", TRAINERTYPE_MOVES
	db 36
	dw AMPHAROS
	dw SWIFT, THUNDERPUNCH, THUNDER_WAVE, COTTON_SPORE
	db 36
	dw GOLDUCK
	dw DISABLE, SURF, PSYCHIC_M, SCREECH
	db -1 ; end

	end_list_items

JanineGroup:
	next_list_item ; JANINE (1)
	db "JANINE@", TRAINERTYPE_MOVES
	db 36
	dw CROBAT
	dw SCREECH, SUPERSONIC, CONFUSE_RAY, WING_ATTACK
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 36
	dw WEEZING
	dw SMOG, SLUDGE_BOMB, TOXIC, EXPLOSION
	db 33
	dw ARIADOS
	dw SCARY_FACE, GIGA_DRAIN, STRING_SHOT, NIGHT_SHADE
	db 39
	dw VENOMOTH
	dw FORESIGHT, DOUBLE_TEAM, GUST, PSYCHIC_M
	db -1 ; end

	end_list_items

CooltrainerMGroup:
	next_list_item ; COOLTRAINERM (1)
	db "NICK@", TRAINERTYPE_MOVES
	db 26
	dw CHARMANDER
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db 26
	dw SQUIRTLE
	dw WITHDRAW, WATER_GUN, BITE, CURSE
	db 26
	dw BULBASAUR
	dw LEECH_SEED, POISONPOWDER, SLEEP_POWDER, RAZOR_LEAF
	db -1 ; end

	next_list_item ; COOLTRAINERM (2)
	db "AARON@", TRAINERTYPE_NORMAL
	db 24
	dw IVYSAUR
	db 24
	dw CHARMELEON
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (3)
	db "PAUL@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db 34
	dw DRATINI
	db -1 ; end

	next_list_item ; COOLTRAINERM (4)
	db "CODY@", TRAINERTYPE_NORMAL
	db 34
	dw HORSEA
	db 36
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERM (5)
	db "MIKE@", TRAINERTYPE_NORMAL
	db 37
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERM (6)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 35
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 35
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 35
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (7)
	db "GAVEN@", TRAINERTYPE_ITEM_MOVES
	db 39
	dw VICTREEBEL
	db NO_ITEM
	dw GIGA_DRAIN, TOXIC, SLUDGE_BOMB, RAZOR_LEAF
	db 39
	dw KINGLER
	db KINGS_ROCK
	dw SURF, STOMP, GUILLOTINE, BLIZZARD
	db 39
	dw FLAREON
	db NO_ITEM
	dw FLAMETHROWER, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (8)
	db "RYAN@", TRAINERTYPE_MOVES
	db 25
	dw PIDGEOT
	dw SAND_ATTACK, QUICK_ATTACK, WHIRLWIND, WING_ATTACK
	db 27
	dw ELECTABUZZ
	dw THUNDERPUNCH, LIGHT_SCREEN, SWIFT, SCREECH
	db -1 ; end

	next_list_item ; COOLTRAINERM (9)
	db "JAKE@", TRAINERTYPE_MOVES
	db 33
	dw PARASECT
	dw LEECH_LIFE, SPORE, SLASH, SWORDS_DANCE
	db 35
	dw GOLDUCK
	dw CONFUSION, SCREECH, PSYCH_UP, FURY_SWIPES
	db -1 ; end

	next_list_item ; COOLTRAINERM (10)
	db "GAVEN@", TRAINERTYPE_MOVES
	db 32
	dw VICTREEBEL
	dw WRAP, TOXIC, ACID, RAZOR_LEAF
	db 32
	dw KINGLER
	dw BUBBLEBEAM, STOMP, GUILLOTINE, PROTECT
	db 32
	dw FLAREON
	dw SAND_ATTACK, QUICK_ATTACK, BITE, FIRE_SPIN
	db -1 ; end

	next_list_item ; COOLTRAINERM (11)
	db "BLAKE@", TRAINERTYPE_MOVES
	db 33
	dw MAGNETON
	dw THUNDERBOLT, SUPERSONIC, SWIFT, SCREECH
	db 31
	dw QUAGSIRE
	dw WATER_GUN, SLAM, AMNESIA, EARTHQUAKE
	db 31
	dw EXEGGCUTE
	dw LEECH_SEED, CONFUSION, SLEEP_POWDER, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERM (12)
	db "BRIAN@", TRAINERTYPE_MOVES
	db 35
	dw SANDSLASH
	dw SAND_ATTACK, POISON_STING, SLASH, SWIFT
	db -1 ; end

	next_list_item ; COOLTRAINERM (13)
	db "ERICK@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (14)
	db "ANDY@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (15)
	db "TYLER@", TRAINERTYPE_NORMAL
	db 10
	dw BULBASAUR
	db 10
	dw CHARMANDER
	db 10
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (16)
	db "SEAN@", TRAINERTYPE_NORMAL
	db 35
	dw FLAREON
	db 35
	dw TANGELA
	db 35
	dw TAUROS
	db -1 ; end

	next_list_item ; COOLTRAINERM (17)
	db "KEVIN@", TRAINERTYPE_NORMAL
	db 38
	dw RHYHORN
	db 35
	dw CHARMELEON
	db 35
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (18)
	db "STEVE@", TRAINERTYPE_NORMAL
	db 14
	dw BULBASAUR
	db 14
	dw CHARMANDER
	db 14
	dw SQUIRTLE
	db -1 ; end

	next_list_item ; COOLTRAINERM (19)
	db "ALLEN@", TRAINERTYPE_MOVES
	db 27
	dw CHARMELEON
	dw EMBER, SMOKESCREEN, RAGE, SCARY_FACE
	db -1 ; end

	next_list_item ; COOLTRAINERM (20)
	db "DARIN@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw WRAP, SURF, DRAGON_RAGE, SLAM
	db -1 ; end

	end_list_items

CooltrainerFGroup:
	next_list_item ; COOLTRAINERF (1)
	db "GWEN@", TRAINERTYPE_NORMAL
	db 26
	dw EEVEE
	db 22
	dw FLAREON
	db 22
	dw VAPOREON
	db 22
	dw JOLTEON
	db -1 ; end

	next_list_item ; COOLTRAINERF (2)
	db "LOIS@", TRAINERTYPE_MOVES
	db 25
	dw SKIPLOOM
	dw SYNTHESIS, POISONPOWDER, MEGA_DRAIN, LEECH_SEED
	db 25
	dw NINETALES
	dw EMBER, QUICK_ATTACK, CONFUSE_RAY, SAFEGUARD
	db -1 ; end

	next_list_item ; COOLTRAINERF (3)
	db "FRAN@", TRAINERTYPE_NORMAL
	db 37
	dw SEADRA
	db -1 ; end

	next_list_item ; COOLTRAINERF (4)
	db "LOLA@", TRAINERTYPE_NORMAL
	db 34
	dw DRATINI
	db 36
	dw DRAGONAIR
	db -1 ; end

	next_list_item ; COOLTRAINERF (5)
	db "KATE@", TRAINERTYPE_NORMAL
	db 26
	dw SHELLDER
	db 28
	dw CLOYSTER
	db -1 ; end

	next_list_item ; COOLTRAINERF (6)
	db "IRENE@", TRAINERTYPE_NORMAL
	db 22
	dw GOLDEEN
	db 24
	dw SEAKING
	db -1 ; end

	next_list_item ; COOLTRAINERF (7)
	db "KELLY@", TRAINERTYPE_NORMAL
	db 27
	dw MARILL
	db 24
	dw WARTORTLE
	db 24
	dw WARTORTLE
	db -1 ; end

	next_list_item ; COOLTRAINERF (8)
	db "JOYCE@", TRAINERTYPE_MOVES
	db 36
	dw PIKACHU
	dw QUICK_ATTACK, DOUBLE_TEAM, THUNDERBOLT, THUNDER
	db 32
	dw BLASTOISE
	dw BITE, CURSE, SURF, RAIN_DANCE
	db -1 ; end

	next_list_item ; COOLTRAINERF (9)
	db "BETH@", TRAINERTYPE_MOVES
	db 36
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (10)
	db "REENA@", TRAINERTYPE_NORMAL
	db 31
	dw STARMIE
	db 33
	dw NIDOQUEEN
	db 31
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (11)
	db "MEGAN@", TRAINERTYPE_MOVES
	db 32
	dw BULBASAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw IVYSAUR
	dw GROWL, LEECH_SEED, POISONPOWDER, RAZOR_LEAF
	db 32
	dw VENUSAUR
	dw BODY_SLAM, SLEEP_POWDER, RAZOR_LEAF, SWEET_SCENT
	db -1 ; end

	next_list_item ; COOLTRAINERF (12)
	db "BETH@", TRAINERTYPE_MOVES
	db 39
	dw RAPIDASH
	dw STOMP, FIRE_SPIN, FURY_ATTACK, AGILITY
	db -1 ; end

	next_list_item ; COOLTRAINERF (13)
	db "CAROL@", TRAINERTYPE_NORMAL
	db 35
	dw ELECTRODE
	db 35
	dw STARMIE
	db 35
	dw NINETALES
	db -1 ; end

	next_list_item ; COOLTRAINERF (14)
	db "QUINN@", TRAINERTYPE_NORMAL
	db 38
	dw IVYSAUR
	db 38
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (15)
	db "EMMA@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; COOLTRAINERF (16)
	db "CYBIL@", TRAINERTYPE_MOVES
	db 25
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, WHIRLWIND, GUST
	db 25
	dw BELLOSSOM
	dw ABSORB, STUN_SPORE, ACID, SOLARBEAM
	db -1 ; end

	next_list_item ; COOLTRAINERF (17)
	db "JENN@", TRAINERTYPE_NORMAL
	db 24
	dw STARYU
	db 26
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (18)
	db "BETH@", TRAINERTYPE_ITEM_MOVES
	db 43
	dw RAPIDASH
	db FOCUS_BAND
	dw STOMP, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	next_list_item ; COOLTRAINERF (19)
	db "REENA@", TRAINERTYPE_NORMAL
	db 34
	dw STARMIE
	db 36
	dw NIDOQUEEN
	db 34
	dw STARMIE
	db -1 ; end

	next_list_item ; COOLTRAINERF (20)
	db "REENA@", TRAINERTYPE_ITEM_MOVES
	db 38
	dw STARMIE
	db NO_ITEM
	dw DOUBLE_TEAM, PSYCHIC_M, WATERFALL, CONFUSE_RAY
	db 40
	dw NIDOQUEEN
	db PINK_BOW
	dw EARTHQUAKE, DOUBLE_KICK, TOXIC, BODY_SLAM
	db 38
	dw STARMIE
	db NO_ITEM
	dw BLIZZARD, PSYCHIC_M, WATERFALL, RECOVER
	db -1 ; end

	next_list_item ; COOLTRAINERF (21)
	db "CARA@", TRAINERTYPE_MOVES
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 33
	dw HORSEA
	dw SMOKESCREEN, LEER, WHIRLPOOL, TWISTER
	db 35
	dw SEADRA
	dw SWIFT, LEER, WATERFALL, TWISTER
	db -1 ; end

	end_list_items

BeautyGroup:
	next_list_item ; BEAUTY (3)
	db "JULIE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (4)
	db "JACLYN@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (5)
	db "BRENDA@", TRAINERTYPE_NORMAL
	db 16
	dw FURRET
	db -1 ; end

	next_list_item ; BEAUTY (6)
	db "CASSIE@", TRAINERTYPE_NORMAL
	db 28
	dw VILEPLUME
	db 34
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BEAUTY (7)
	db "CAROLINE@", TRAINERTYPE_NORMAL
	db 30
	dw MARILL
	db 32
	dw SEEL
	db 30
	dw MARILL
	db -1 ; end

	next_list_item ; BEAUTY (8)
	db "CARLENE@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (9)
	db "JESSICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (10)
	db "RACHAEL@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (11)
	db "ANGELICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (12)
	db "KENDRA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (13)
	db "VERONICA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (14)
	db "JULIA@", TRAINERTYPE_NORMAL
	db 32
	dw PARAS
	db 32
	dw EXEGGCUTE
	db 35
	dw PARASECT
	db -1 ; end

	next_list_item ; BEAUTY (15)
	db "THERESA@", TRAINERTYPE_NORMAL
	db 15
	dw SENTRET
	db -1 ; end

	next_list_item ; BEAUTY (16) VALERIE
	db "Wilma@", TRAINERTYPE_MOVES
	db 16
	dw VULPIX
	dw EMBER, QUICK_ATTACK, FIRE_SPIN, CONFUSE_RAY
	db 17
	dw JIGGLYPUFF
	dw DOUBLESLAP, DISABLE, PLAY_NICE, POUND
	db -1 ; end

	next_list_item ; BEAUTY (17) OLIVIA
	db "Fiona@", TRAINERTYPE_NORMAL
	db 15
	dw TEDDIURSA
	db 17
	dw CUBONE
	db 16
	dw MANTYKE
	db -1 ; end

	end_list_items

PokemaniacGroup:
	next_list_item ; POKEMANIAC (1)
	db "LARRY@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (2)
	db "ANDREW@", TRAINERTYPE_NORMAL
	db 24
	dw MAROWAK
	db 24
	dw MAROWAK
	db -1 ; end

	next_list_item ; POKEMANIAC (3)
	db "CALVIN@", TRAINERTYPE_NORMAL
	db 26
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (4)
	db "SHANE@", TRAINERTYPE_NORMAL
	db 16
	dw NIDORINA
	db 16
	dw NIDORINO
	db -1 ; end

	next_list_item ; POKEMANIAC (5)
	db "BEN@", TRAINERTYPE_NORMAL
	db 19
	dw SLOWBRO
	db -1 ; end

	next_list_item ; POKEMANIAC (6)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 19
	dw LICKITUNG
	db -1 ; end

	next_list_item ; POKEMANIAC (7)
	db "RON@", TRAINERTYPE_NORMAL
	db 19
	dw NIDOKING
	db -1 ; end

	next_list_item ; POKEMANIAC (8)
	db "ETHAN@", TRAINERTYPE_NORMAL
	db 31
	dw RHYHORN
	db 31
	dw RHYDON
	db -1 ; end

	next_list_item ; POKEMANIAC (9)
	db "BRENT@", TRAINERTYPE_NORMAL
	db 25
	dw KANGASKHAN
	db -1 ; end

	next_list_item ; POKEMANIAC (10)
	db "BRENT@", TRAINERTYPE_MOVES
	db 36
	dw PORYGON
	dw RECOVER, PSYCHIC_M, NASTY_PLOT, TRI_ATTACK
	db -1 ; end

	next_list_item ; POKEMANIAC (11)
	db "ISSAC@", TRAINERTYPE_MOVES
	db 12
	dw LICKITUNG
	dw LICK, SUPERSONIC, CUT, NO_MOVE
	db -1 ; end

	next_list_item ; POKEMANIAC (12)
	db "DONALD@", TRAINERTYPE_NORMAL
	db 10
	dw SLOWPOKE
	db 10
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; POKEMANIAC (13)
	db "ZACH@", TRAINERTYPE_NORMAL
	db 27
	dw RHYHORN
	db -1 ; end

	next_list_item ; POKEMANIAC (14)
	db "BRENT@", TRAINERTYPE_MOVES
	db 41
	dw CHANSEY
	dw ROLLOUT, ATTRACT, EGG_BOMB, SOFTBOILED
	db -1 ; end

	next_list_item ; POKEMANIAC (15)
	db "Allan@", TRAINERTYPE_NORMAL
	db 12
	dw NIDORAN_M
	db 12
	dw SUNKERN
	db -1 ; end

	next_list_item ; POKEMANIAC (16)
	db "Jarvis@", TRAINERTYPE_NORMAL
	db 11
	dw LICKITUNG
	db -1 ; end

	end_list_items

GruntMGroup:
	next_list_item ; ManM (1)
	db "Man@", TRAINERTYPE_NORMAL
	db 14
	dw SPEAROW
	db 14
	dw ELEKID
	db 15
	dw STARYU
	db -1 ; end

	next_list_item ; ManM (2)
	db "Man@", TRAINERTYPE_NORMAL
	db 16
	dw MURKROW
	db 16
	dw BEEDRILL
	db 17
	dw KADABRA
	db -1 ; end

	next_list_item ; ManM (3)
	db "Man@", TRAINERTYPE_NORMAL
	db 18
	dw KOFFING
	db 19
	dw ARIADOS
	db -1 ; end

	next_list_item ; ManM (4)
	db "Man@", TRAINERTYPE_NORMAL
	db 17
	dw GRIMER
	db 18
	dw MAGNEMITE
	db 18
	dw GLIGAR
	db -1 ; end

	next_list_item ; ManM (5)
	db "Man@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 16
	dw DROWZEE
	db 17
	dw FLAAFFY
	db 17
	dw MANKEY
	db 18
	dw AZUMARILL
	db -1 ; end

	next_list_item ; ManM (6)
	db "Man@", TRAINERTYPE_NORMAL
	db 19
	dw ZUBAT
	db 20
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; ManM (7)
	db "Man@", TRAINERTYPE_NORMAL
	db 19
	dw KOFFING
	db 19
	dw GRIMER
	db 19
	dw ZUBAT
	db 20
	dw RATICATE
	db -1 ; end

	next_list_item ; ManM (8)
	db "Man@", TRAINERTYPE_NORMAL
	db 22
	dw WEEZING
	db -1 ; end

	next_list_item ; ManM (9)
	db "Man@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 26
	dw KOFFING
	db -1 ; end

	next_list_item ; ManM (10)
	db "Man@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw GOLBAT
	db 22
	dw GRIMER
	db -1 ; end

	next_list_item ; ManM (11)
	db "Man@", TRAINERTYPE_NORMAL
	db 23
	dw MUK
	db 23
	dw KOFFING
	db 25
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (12)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 33
	dw HOUNDOUR
	db -1 ; end

	next_list_item ; ManM (13)
	db "Man@", TRAINERTYPE_NORMAL
	db 27
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (14)
	db "Man@", TRAINERTYPE_NORMAL
	db 24
	dw RATICATE
	db 24
	dw GOLBAT
	db -1 ; end

	next_list_item ; ManM (15)
	db "Man@", TRAINERTYPE_NORMAL
	db 26
	dw GRIMER
	db 23
	dw WEEZING
	db -1 ; end

	next_list_item ; ManM (16)
	db "Man@", TRAINERTYPE_NORMAL
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db 16
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (17)
	db "Man@", TRAINERTYPE_NORMAL
	db 18
	dw GOLBAT
	db -1 ; end

	next_list_item ; ManM (18)
	db "Man@", TRAINERTYPE_NORMAL
	db 17
	dw RATTATA
	db 17
	dw ZUBAT
	db 17
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (19)
	db "Man@", TRAINERTYPE_NORMAL
	db 18
	dw VENONAT
	db 18
	dw VENONAT
	db -1 ; end

	next_list_item ; ManM (20)
	db "Man@", TRAINERTYPE_NORMAL
	db 17
	dw DROWZEE
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; ManM (21)
	db "Man@", TRAINERTYPE_NORMAL
	db 16
	dw ZUBAT
	db 17
	dw GRIMER
	db 18
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (22)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 36
	dw GOLBAT
	db -1 ; end

	next_list_item ; ManM (23)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; ManM (24)
	db "Man@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 25
	dw KOFFING
	db -1 ; end

	next_list_item ; ManM (25)
	db "Man@", TRAINERTYPE_NORMAL
	db 24
	dw KOFFING
	db 24
	dw MUK
	db -1 ; end

	next_list_item ; ManM (26)
	db "Man@", TRAINERTYPE_NORMAL
	db 15
	dw RATTATA
	db 15
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (27)
	db "EXECUTIVE@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db -1 ; end

	next_list_item ; ManM (28)
	db "Man@", TRAINERTYPE_NORMAL
	db 19
	dw RATICATE
	db -1 ; end

	next_list_item ; ManM (29)
	db "Man@", TRAINERTYPE_NORMAL
	db 9
	dw RATTATA
	db 9
	dw RATTATA
	db -1 ; end

	next_list_item ; ManM (30)
	db "Man@", TRAINERTYPE_NORMAL
	db 25
	dw GOLBAT
	db 25
	dw GOLBAT
	db 30
	dw ARBOK
	db -1 ; end

	next_list_item ; ManM (31)
	db "Man@", TRAINERTYPE_NORMAL
	db 30
	dw GOLBAT
	db -1 ; end

	end_list_items

GentlemanGroup:
	next_list_item ; GENTLEMAN (1)
	db "PRESTON@", TRAINERTYPE_NORMAL
	db 18
	dw GROWLITHE
	db 18
	dw GROWLITHE
	db -1 ; end

	next_list_item ; GENTLEMAN (2)
	db "EDWARD@", TRAINERTYPE_NORMAL
	db 33
	dw PERSIAN
	db -1 ; end

	next_list_item ; GENTLEMAN (3)
	db "GREGORY@", TRAINERTYPE_NORMAL
	db 37
	dw PIKACHU
	db 33
	dw FLAAFFY
	db -1 ; end

	next_list_item ; GENTLEMAN (4)
	db "VIRGIL@", TRAINERTYPE_NORMAL
	db 20
	dw PONYTA
	db -1 ; end

	next_list_item ; GENTLEMAN (5)
	db "ALFRED@", TRAINERTYPE_NORMAL
	db 20
	dw NOCTOWL
	db -1 ; end

	end_list_items

SkierGroup:
	next_list_item ; SKIER (1)
	db "Brandy@", TRAINERTYPE_NORMAL
	db 11
	dw SMOOCHUM
	db -1 ; end

	next_list_item ; SKIER (2)
	db "Luann@", TRAINERTYPE_NORMAL
	db 11
	dw SEEL
	db -1 ; end

	end_list_items

TeacherGroup:
	next_list_item ; TEACHER (1)
	db "COLETTE@", TRAINERTYPE_NORMAL
	db 36
	dw CLEFAIRY
	db -1 ; end

	next_list_item ; TEACHER (2)
	db "HILLARY@", TRAINERTYPE_NORMAL
	db 32
	dw AIPOM
	db 36
	dw CUBONE
	db -1 ; end

	next_list_item ; TEACHER (3)
	db "SHIRLEY@", TRAINERTYPE_NORMAL
	db 35
	dw JIGGLYPUFF
	db -1 ; end

	next_list_item ; TEACHER (4)
	db "Cadi@", TRAINERTYPE_ITEM
	db 8
	dw CLEFFA
	db ORAN_BERRY
	db -1 ; end

	end_list_items

SabrinaGroup:
	next_list_item ; SABRINA (1)
	db "SABRINA@", TRAINERTYPE_MOVES
	db 46
	dw ESPEON
	dw SAND_ATTACK, QUICK_ATTACK, SWIFT, PSYCHIC_M
	db 46
	dw MR__MIME
	dw BARRIER, REFLECT, BATON_PASS, PSYCHIC_M
	db 48
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db -1 ; end

	end_list_items

BugCatcherGroup:
	next_list_item ; BUG_CATCHER (1)
	db "Anton@", TRAINERTYPE_NORMAL
	db 6
	dw SPINARAK
	db 6
	dw LEDYBA
	db -1 ; end

	next_list_item ; BUG_CATCHER (2)
	db "Colton@", TRAINERTYPE_NORMAL
	db 7
	dw VENONAT
	db 7
	dw PARAS
	db 8
	dw PINECO
	db -1 ; end

	next_list_item ; BUG_CATCHER (3)
	db "Stevie@", TRAINERTYPE_NORMAL
	db 17
	dw BEEDRILL
	db 17
	dw BUTTERFREE
	db 18
	dw YANMA
	db -1 ; end

	next_list_item ; BUG_CATCHER (4)
	db "WADE@", TRAINERTYPE_NORMAL
	db 2
	dw CATERPIE
	db 2
	dw CATERPIE
	db 3
	dw WEEDLE
	db 2
	dw CATERPIE
	db -1 ; end

	next_list_item ; BUG_CATCHER (5)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 7
	dw WEEDLE
	db 9
	dw KAKUNA
	db 12
	dw BEEDRILL
	db -1 ; end

	next_list_item ; BUG_CATCHER (6)
	db "AL@", TRAINERTYPE_NORMAL
	db 12
	dw CATERPIE
	db 12
	dw WEEDLE
	db -1 ; end

	next_list_item ; BUG_CATCHER (7)
	db "JOSH@", TRAINERTYPE_NORMAL
	db 13
	dw PARAS
	db -1 ; end

	next_list_item ; BUG_CATCHER (8)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 15
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (9)
	db "KEN@", TRAINERTYPE_NORMAL
	db 30
	dw ARIADOS
	db 32
	dw PINSIR
	db -1 ; end

	next_list_item ; BUG_CATCHER (10)
	db "WADE@", TRAINERTYPE_NORMAL
	db 9
	dw METAPOD
	db 9
	dw METAPOD
	db 10
	dw KAKUNA
	db 9
	dw METAPOD
	db -1 ; end

	next_list_item ; BUG_CATCHER (11)
	db "WADE@", TRAINERTYPE_NORMAL
	db 14
	dw BUTTERFREE
	db 14
	dw BUTTERFREE
	db 15
	dw BEEDRILL
	db 14
	dw BUTTERFREE
	db -1 ; end

	next_list_item ; BUG_CATCHER (12)
	db "DOUG@", TRAINERTYPE_NORMAL
	db 34
	dw ARIADOS
	db -1 ; end

	next_list_item ; BUG_CATCHER (13)
	db "ARNIE@", TRAINERTYPE_NORMAL
	db 19
	dw VENONAT
	db -1 ; end

	next_list_item ; BUG_CATCHER (14)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 28
	dw VENOMOTH
	dw DISABLE, SUPERSONIC, CONFUSION, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (15)
	db "WADE@", TRAINERTYPE_MOVES
	db 24
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, WHIRLWIND
	db 24
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, WHIRLWIND
	db 25
	dw BEEDRILL
	dw FURY_ATTACK, FOCUS_ENERGY, TWINEEDLE, RAGE
	db 24
	dw BUTTERFREE
	dw CONFUSION, SLEEP_POWDER, SUPERSONIC, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (16)
	db "WADE@", TRAINERTYPE_MOVES
	db 30
	dw BUTTERFREE
	dw CONFUSION, POISONPOWDER, SUPERSONIC, GUST
	db 30
	dw BUTTERFREE
	dw CONFUSION, STUN_SPORE, SUPERSONIC, GUST
	db 32
	dw BEEDRILL
	dw FURY_ATTACK, PURSUIT, TWINEEDLE, DOUBLE_TEAM
	db 34
	dw BUTTERFREE
	dw PSYBEAM, SLEEP_POWDER, GUST, WHIRLWIND
	db -1 ; end

	next_list_item ; BUG_CATCHER (17)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 36
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYBEAM, LEECH_LIFE
	db -1 ; end

	next_list_item ; BUG_CATCHER (18)
	db "ARNIE@", TRAINERTYPE_MOVES
	db 40
	dw VENOMOTH
	dw GUST, SUPERSONIC, PSYCHIC_M, TOXIC
	db -1 ; end

	next_list_item ; BUG_CATCHER (19)
	db "WAYNE@", TRAINERTYPE_NORMAL
	db 8
	dw LEDYBA
	db 10
	dw PARAS
	db -1 ; end

	end_list_items

FisherGroup:
	next_list_item ; FISHER (1)
	db "JUSTIN@", TRAINERTYPE_NORMAL
	db 5
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 5
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (2)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 10
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (3)
	db "ARNOLD@", TRAINERTYPE_NORMAL
	db 34
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (4)
	db "KYLE@", TRAINERTYPE_NORMAL
	db 28
	dw SEAKING
	db 31
	dw POLIWHIRL
	db 31
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (5)
	db "HENRY@", TRAINERTYPE_NORMAL
	db 8
	dw POLIWAG
	db 8
	dw POLIWAG
	db -1 ; end

	next_list_item ; FISHER (6)
	db "Shane@", TRAINERTYPE_NORMAL
	db 10
	dw MAGIKARP
	db 10
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db 15
	dw MAGIKARP
	db -1 ; end

	next_list_item ; FISHER (7)
	db "Fred@", TRAINERTYPE_NORMAL
	db 9
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (8)
	db "Aidan@", TRAINERTYPE_NORMAL
	db 9
	dw TENTACOOL
	db -1 ; end

	next_list_item ; FISHER (9)
	db "Noah@", TRAINERTYPE_NORMAL
	db 11
	dw MAGIKARP
	db 10
	dw TENTACOOL
	db 10
	dw GOLDEEN
	db 10
	dw WOOPER
	db -1 ; end

	next_list_item ; FISHER (10)
	db "Lyle@", TRAINERTYPE_NORMAL
	db 7
	dw MAGIKARP
	db 7
	dw GOLDEEN
	db 7
	dw REMORAID
	db -1 ; end

	next_list_item ; FISHER (11)
	db "EDGAR@", TRAINERTYPE_MOVES
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db 25
	dw REMORAID
	dw LOCK_ON, PSYBEAM, AURORA_BEAM, BUBBLEBEAM
	db -1 ; end

	next_list_item ; FISHER (12)
	db "JONAH@", TRAINERTYPE_NORMAL
	db 25
	dw SHELLDER
	db 29
	dw OCTILLERY
	db 25
	dw REMORAID
	db 29
	dw CLOYSTER
	db -1 ; end

	next_list_item ; FISHER (13)
	db "MARTIN@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 32
	dw REMORAID
	db -1 ; end

	next_list_item ; FISHER (14)
	db "STEPHEN@", TRAINERTYPE_NORMAL
	db 25
	dw MAGIKARP
	db 25
	dw MAGIKARP
	db 31
	dw QWILFISH
	db 31
	dw TENTACRUEL
	db -1 ; end

	next_list_item ; FISHER (15)
	db "BARNEY@", TRAINERTYPE_NORMAL
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db 30
	dw GYARADOS
	db -1 ; end

	next_list_item ; FISHER (16)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (17)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 17
	dw QWILFISH
	db 19
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (18)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 23
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (19)
	db "TULLY@", TRAINERTYPE_NORMAL
	db 32
	dw GOLDEEN
	db 32
	dw GOLDEEN
	db 32
	dw QWILFISH
	db -1 ; end

	next_list_item ; FISHER (20)
	db "Butch@", TRAINERTYPE_NORMAL
	db 10
	dw POLIWAG
	db 11
	dw WOOPER
	db 11
	dw KRABBY
	db -1 ; end

	next_list_item ; FISHER (21)
	db "SCOTT@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 30
	dw QWILFISH
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; FISHER (22)
	db "WILTON@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, WATERFALL, FLAIL, FURY_ATTACK
	db 38
	dw REMORAID
	dw PSYBEAM, AURORA_BEAM, BUBBLEBEAM, HYPER_BEAM
	db -1 ; end

	next_list_item ; FISHER (23)
	db "RALPH@", TRAINERTYPE_NORMAL
	db 30
	dw QWILFISH
	db 32
	dw GOLDEEN
	db -1 ; end

	next_list_item ; FISHER (24)
	db "RALPH@", TRAINERTYPE_MOVES
	db 35
	dw QWILFISH
	dw TOXIC, MINIMIZE, SURF, PIN_MISSILE
	db 39
	dw SEAKING
	dw ENDURE, FLAIL, FURY_ATTACK, WATERFALL
	db -1 ; end

	next_list_item ; FISHER (25)
	db "TULLY@", TRAINERTYPE_MOVES
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 34
	dw SEAKING
	dw SUPERSONIC, RAIN_DANCE, WATERFALL, FURY_ATTACK
	db 37
	dw QWILFISH
	dw ROLLOUT, SURF, PIN_MISSILE, TAKE_DOWN
	db -1 ; end

	end_list_items

SwimmerMGroup:
	next_list_item ; SWIMMERM (1)
	db "HAROLD@", TRAINERTYPE_NORMAL
	db 32
	dw REMORAID
	db 30
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (2)
	db "Derick@", TRAINERTYPE_NORMAL
	db 22
	dw TENTACOOL
	db 22
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (3)
	db "Jaxson@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 21
	dw WARTORTLE
	db 21
	dw STARYU
	db -1 ; end

	next_list_item ; SWIMMERM (4) CHARLIE
	db "Daryl@", TRAINERTYPE_NORMAL
	db 21
	dw MARILL
	db 21
	dw REMORAID
	db 21
	dw AZUMARILL
	db -1 ; end

	next_list_item ; SWIMMERM (5) GEORGE
	db "Guy@", TRAINERTYPE_NORMAL
	db 18
	dw WOOPER
	db 18
	dw TENTACOOL
	db 19
	dw SLOWPOKE
	db 19
	dw STARYU
	db 20
	dw GYARADOS
	db 20
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (6) BERKE
	db "Barry@", TRAINERTYPE_NORMAL
	db 22
	dw QWILFISH
	db -1 ; end

	next_list_item ; SWIMMERM (7) KIRK
	db "Reid@", TRAINERTYPE_NORMAL
	db 22
	dw HORSEA
	db 22
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (8) MATHEW
	db "Rod@", TRAINERTYPE_NORMAL
	db 22
	dw KINGLER
	db -1 ; end

	next_list_item ; SWIMMERM (9)
	db "HAL@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERM (10)
	db "PATON@", TRAINERTYPE_NORMAL
	db 26
	dw PILOSWINE
	db 26
	dw PILOSWINE
	db -1 ; end

	next_list_item ; SWIMMERM (11)
	db "DARYL@", TRAINERTYPE_NORMAL
	db 24
	dw SHELLDER
	db 25
	dw CLOYSTER
	db 24
	dw SHELLDER
	db -1 ; end

	next_list_item ; SWIMMERM (12)
	db "WALTER@", TRAINERTYPE_NORMAL
	db 15
	dw HORSEA
	db 15
	dw HORSEA
	db 20
	dw SEADRA
	db -1 ; end

	next_list_item ; SWIMMERM (13)
	db "TONY@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (14)
	db "JEROME@", TRAINERTYPE_NORMAL
	db 26
	dw SEADRA
	db 28
	dw TENTACOOL
	db 30
	dw TENTACRUEL
	db 28
	dw GOLDEEN
	db -1 ; end

	next_list_item ; SWIMMERM (15)
	db "TUCKER@", TRAINERTYPE_NORMAL
	db 30
	dw SHELLDER
	db 34
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERM (16)
	db "RICK@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (17)
	db "CAMERON@", TRAINERTYPE_NORMAL
	db 34
	dw MARILL
	db -1 ; end

	next_list_item ; SWIMMERM (18)
	db "SETH@", TRAINERTYPE_NORMAL
	db 29
	dw QUAGSIRE
	db 29
	dw OCTILLERY
	db 32
	dw QUAGSIRE
	db -1 ; end

	next_list_item ; SWIMMERM (19)
	db "JAMES@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (20)
	db "LEWIS@", TRAINERTYPE_NORMAL
	db 13
	dw STARYU
	db 18
	dw STARMIE
	db 16
	dw HORSEA
	db -1 ; end

	next_list_item ; SWIMMERM (21)
	db "PARKER@", TRAINERTYPE_NORMAL
	db 32
	dw HORSEA
	db 32
	dw HORSEA
	db 35
	dw SEADRA
	db -1 ; end

	end_list_items

SwimmerFGroup:
	next_list_item ; SWIMMERF (1)
	db "Angie@", TRAINERTYPE_MOVES
	db 22
	dw STARMIE
	dw MINIMIZE, WATER_GUN, RAPID_SPIN, PSYBEAM
	db -1 ; end

	next_list_item ; SWIMMERF (2)
	db "Kaitlyn@", TRAINERTYPE_NORMAL
	db 21
	dw PSYDUCK
	db 21
	dw SEEL
	db -1 ; end

	next_list_item ; SWIMMERF (3)
	db "Brady@", TRAINERTYPE_NORMAL
	db 19
	dw GOLDEEN
	db 20
	dw CROCONAW
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (4)
	db "Susan@", TRAINERTYPE_MOVES
	db 21
	dw PSYDUCK
	dw SCRATCH, SCREECH, WATER_PULSE, CONFUSION
	db 21
	dw GOLDEEN
	dw TAIL_WHIP, AQUA_JET, WATER_PULSE, FURY_ATTACK
	db -1 ; end

	next_list_item ; SWIMMERF (5)
	db "Pamela@", TRAINERTYPE_NORMAL
	db 22
	dw GYARADOS
	db -1 ; end

	next_list_item ; SWIMMERF (6)
	db "Lois@", TRAINERTYPE_NORMAL
	db 21
	dw SHELLDER
	db 21
	dw CLOYSTER
	db -1 ; end

	next_list_item ; SWIMMERF (7)
	db "Elma@", TRAINERTYPE_MOVES
	db 22
	dw HORSEA
	dw BUBBLEBEAM, SMOKESCREEN, TWISTER, WATER_GUN
	db 22
	dw HORSEA
	dw DRAGON_RAGE, SMOKESCREEN, BUBBLEBEAM, WATER_GUN
	db -1 ; end

	next_list_item ; SWIMMERF (8)
	db "LISA@", TRAINERTYPE_NORMAL
	db 28
	dw JYNX
	db -1 ; end

	next_list_item ; SWIMMERF (9)
	db "JILL@", TRAINERTYPE_NORMAL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (10)
	db "MARY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (11)
	db "KATIE@", TRAINERTYPE_NORMAL
	db 33
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (12)
	db "DAWN@", TRAINERTYPE_NORMAL
	db 34
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (13)
	db "TARA@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (14)
	db "NICOLE@", TRAINERTYPE_NORMAL
	db 29
	dw MARILL
	db 29
	dw MARILL
	db 32
	dw LAPRAS
	db -1 ; end

	next_list_item ; SWIMMERF (15)
	db "LORI@", TRAINERTYPE_NORMAL
	db 32
	dw STARMIE
	db 32
	dw STARMIE
	db -1 ; end

	next_list_item ; SWIMMERF (16)
	db "JODY@", TRAINERTYPE_NORMAL
	db 20
	dw SEAKING
	db -1 ; end

	next_list_item ; SWIMMERF (17)
	db "NIKKI@", TRAINERTYPE_NORMAL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw SEEL
	db 28
	dw DEWGONG
	db -1 ; end

	next_list_item ; SWIMMERF (18)
	db "DIANA@", TRAINERTYPE_NORMAL
	db 37
	dw GOLDUCK
	db -1 ; end

	next_list_item ; SWIMMERF (19)
	db "BRIANA@", TRAINERTYPE_NORMAL
	db 35
	dw SEAKING
	db 35
	dw SEAKING
	db -1 ; end

	end_list_items

SailorGroup:
	next_list_item ; SAILOR (1) EUGENE
	db "Sheldon@", TRAINERTYPE_NORMAL
	db 17
	dw POLIWAG
	db 17
	dw KRABBY
	db 18
	dw GYARADOS
	db -1 ; end

	next_list_item ; SAILOR (2)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 18
	dw POLIWAG
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (3)
	db "TERRELL@", TRAINERTYPE_NORMAL
	db 20
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (4)
	db "KENT@", TRAINERTYPE_MOVES
	db 18
	dw KRABBY
	dw BUBBLE, LEER, VICEGRIP, HARDEN
	db 20
	dw KRABBY
	dw BUBBLEBEAM, LEER, VICEGRIP, HARDEN
	db -1 ; end

	next_list_item ; SAILOR (5)
	db "ERNEST@", TRAINERTYPE_NORMAL
	db 18
	dw MACHOP
	db 18
	dw MACHOP
	db 18
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (6)
	db "JEFF@", TRAINERTYPE_NORMAL
	db 32
	dw RATICATE
	db 32
	dw RATICATE
	db -1 ; end

	next_list_item ; SAILOR (7)
	db "GARRETT@", TRAINERTYPE_NORMAL
	db 34
	dw KINGLER
	db -1 ; end

	next_list_item ; SAILOR (8)
	db "KENNETH@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOP
	db 28
	dw MACHOP
	db 28
	dw POLIWRATH
	db 28
	dw MACHOP
	db -1 ; end

	next_list_item ; SAILOR (9)
	db "STANLY@", TRAINERTYPE_NORMAL
	db 31
	dw MACHOP
	db 33
	dw MACHOKE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; SAILOR (10) HARRY
	db "Larry@", TRAINERTYPE_NORMAL
	db 16
	dw MACHOP
	db 17
	dw CHINCHOU
	db -1 ; end

	next_list_item ; SAILOR (11)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 28
	dw POLIWHIRL
	db 28
	dw POLIWHIRL
	db -1 ; end

	next_list_item ; SAILOR (12)
	db "HUEY@", TRAINERTYPE_NORMAL
	db 34
	dw POLIWHIRL
	db 34
	dw POLIWRATH
	db -1 ; end

	next_list_item ; SAILOR (13)
	db "HUEY@", TRAINERTYPE_MOVES
	db 38
	dw POLITOED
	dw WHIRLPOOL, RAIN_DANCE, BODY_SLAM, PERISH_SONG
	db 38
	dw POLIWRATH
	dw SURF, STRENGTH, ICE_PUNCH, SUBMISSION
	db -1 ; end

	end_list_items

SuperNerdGroup:
	next_list_item ; SUPER_NERD (1)
	db "Dexter@", TRAINERTYPE_NORMAL
	db 8
	dw GRIMER
	db 8
	dw PICHU
	db -1 ; end

	next_list_item ; SUPER_NERD (2)
	db "ERIC@", TRAINERTYPE_NORMAL
	db 11
	dw GRIMER
	db 11
	dw GRIMER
	db -1 ; end

	next_list_item ; SUPER_NERD (3)
	db "GREGG@", TRAINERTYPE_NORMAL
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db 20
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (4)
	db "JAY@", TRAINERTYPE_NORMAL
	db 22
	dw KOFFING
	db 22
	dw KOFFING
	db -1 ; end

	next_list_item ; SUPER_NERD (5)
	db "DAVE@", TRAINERTYPE_NORMAL
	db 24
	dw DITTO
	db -1 ; end

	next_list_item ; SUPER_NERD (6)
	db "SAM@", TRAINERTYPE_NORMAL
	db 34
	dw GRIMER
	db 34
	dw MUK
	db -1 ; end

	next_list_item ; SUPER_NERD (7)
	db "TOM@", TRAINERTYPE_NORMAL
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (8)
	db "PAT@", TRAINERTYPE_NORMAL
	db 36
	dw PORYGON
	db -1 ; end

	next_list_item ; SUPER_NERD (9)
	db "SHAWN@", TRAINERTYPE_NORMAL
	db 31
	dw MAGNEMITE
	db 33
	dw MUK
	db 31
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (10)
	db "TERU@", TRAINERTYPE_NORMAL
	db 7
	dw MAGNEMITE
	db 11
	dw VOLTORB
	db 7
	dw MAGNEMITE
	db 9
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (11)
	db "RUSS@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db 27
	dw MAGNEMITE
	db -1 ; end

	next_list_item ; SUPER_NERD (12)
	db "NORTON@", TRAINERTYPE_MOVES
	db 30
	dw PORYGON
	dw CONVERSION, NASTY_PLOT, RECOVER, TRI_ATTACK
	db -1 ; end

	next_list_item ; SUPER_NERD (13)
	db "HUGH@", TRAINERTYPE_MOVES
	db 39
	dw SEADRA
	dw SMOKESCREEN, TWISTER, SURF, WATERFALL
	db -1 ; end

	next_list_item ; SUPER_NERD (14)
	db "Clark@", TRAINERTYPE_MOVES
	db 13
	dw SLOWPOKE
	dw CURSE, WATER_GUN, GROWL, HEADBUTT
	db -1 ; end

	end_list_items

Rival2Group:
	next_list_item ; RIVAL2 (1)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw MEGANIUM
	dw RAZOR_LEAF, POISONPOWDER, BODY_SLAM, LIGHT_SCREEN
	db -1 ; end

	next_list_item ; RIVAL2 (2)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FLAME_WHEEL, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (3)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 41
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 42
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db 41
	dw MAGNETON
	dw THUNDERSHOCK, SONICBOOM, THUNDER_WAVE, SWIFT
	db 43
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 43
	dw ALAKAZAM
	dw DISABLE, RECOVER, FUTURE_SIGHT, PSYCHIC_M
	db 45
	dw FERALIGATR
	dw RAGE, WATER_GUN, SCARY_FACE, SLASH
	db -1 ; end

	next_list_item ; RIVAL2 (4)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw MEGANIUM
	dw GIGA_DRAIN, BODY_SLAM, LIGHT_SCREEN, SAFEGUARD
	db -1 ; end

	next_list_item ; RIVAL2 (5)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw TYPHLOSION
	dw SMOKESCREEN, QUICK_ATTACK, FIRE_BLAST, SWIFT
	db -1 ; end

	next_list_item ; RIVAL2 (6)
	db "Dahlia@", TRAINERTYPE_MOVES
	db 45
	dw SNEASEL
	dw QUICK_ATTACK, SCREECH, FAINT_ATTACK, FURY_CUTTER
	db 48
	dw CROBAT
	dw TOXIC, BITE, CONFUSE_RAY, WING_ATTACK
	db 45
	dw MAGNETON
	dw THUNDER, SONICBOOM, THUNDER_WAVE, SWIFT
	db 46
	dw GENGAR
	dw MEAN_LOOK, CURSE, SHADOW_BALL, CONFUSE_RAY
	db 46
	dw ALAKAZAM
	dw RECOVER, FUTURE_SIGHT, PSYCHIC_M, REFLECT
	db 50
	dw FERALIGATR
	dw SURF, RAIN_DANCE, SLASH, SCREECH
	db -1 ; end

	end_list_items

GuitaristGroup:
	next_list_item ; GUITARIST (1)
	db "CLYDE@", TRAINERTYPE_NORMAL
	db 34
	dw ELECTABUZZ
	db -1 ; end

	next_list_item ; GUITARIST (2)
	db "VINCENT@", TRAINERTYPE_NORMAL
	db 27
	dw MAGNEMITE
	db 33
	dw VOLTORB
	db 32
	dw MAGNEMITE
	db 32
	dw MAGNEMITE
	db -1 ; end

	end_list_items

HikerGroup:
	next_list_item ; HIKER (1)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 16
	dw GEODUDE
	db 18
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (2)
	db "Ozzy@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw MACHOP
	db 12
	dw BONSLY
	db -1 ; end

	next_list_item ; HIKER (3)
	db "PHILLIP@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 23
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (4)
	db "LEONARD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 25
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (5)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 11
	dw GEODUDE
	db 11
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (6)
	db "BENJAMIN@", TRAINERTYPE_NORMAL
	db 14
	dw DIGLETT
	db 14
	dw GEODUDE
	db 16
	dw DUGTRIO
	db -1 ; end

	next_list_item ; HIKER (7)
	db "ERIK@", TRAINERTYPE_NORMAL
	db 24
	dw MACHOP
	db 27
	dw GRAVELER
	db 27
	dw MACHOP
	db -1 ; end

	next_list_item ; HIKER (8)
	db "MICHAEL@", TRAINERTYPE_NORMAL
	db 25
	dw GEODUDE
	db 25
	dw GRAVELER
	db 25
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (9)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 35
	dw ONIX
	db 33
	dw SWINUB
	db -1 ; end

	next_list_item ; HIKER (10)
	db "TIMOTHY@", TRAINERTYPE_MOVES
	db 27
	dw DIGLETT
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db 27
	dw DUGTRIO
	dw MAGNITUDE, DIG, SAND_ATTACK, SLASH
	db -1 ; end

	next_list_item ; HIKER (11)
	db "BAILEY@", TRAINERTYPE_NORMAL
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db 13
	dw GEODUDE
	db -1 ; end

	next_list_item ; HIKER (12)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 25
	dw GRAVELER
	db 27
	dw GRAVELER
	db 29
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (13)
	db "TIM@", TRAINERTYPE_NORMAL
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db 31
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (14)
	db "NOLAND@", TRAINERTYPE_NORMAL
	db 31
	dw SANDSLASH
	db 33
	dw GOLEM
	db -1 ; end

	next_list_item ; HIKER (15)
	db "SIDNEY@", TRAINERTYPE_NORMAL
	db 34
	dw DUGTRIO
	db 32
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (16)
	db "KENNY@", TRAINERTYPE_NORMAL
	db 27
	dw SANDSLASH
	db 29
	dw GRAVELER
	db 31
	dw GOLEM
	db 29
	dw GRAVELER
	db -1 ; end

	next_list_item ; HIKER (17)
	db "JIM@", TRAINERTYPE_NORMAL
	db 35
	dw MACHAMP
	db -1 ; end

	next_list_item ; HIKER (18)
	db "DANIEL@", TRAINERTYPE_NORMAL
	db 11
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (19)
	db "PARRY@", TRAINERTYPE_MOVES
	db 35
	dw PILOSWINE
	dw EARTHQUAKE, BLIZZARD, REST, TAKE_DOWN
	db 35
	dw DUGTRIO
	dw MAGNITUDE, DIG, MUD_SLAP, SLASH
	db 38
	dw STEELIX
	dw DIG, IRON_TAIL, SANDSTORM, SLAM
	db -1 ; end

	next_list_item ; HIKER (20)
	db "PARRY@", TRAINERTYPE_NORMAL
	db 29
	dw ONIX
	db -1 ; end

	next_list_item ; HIKER (21)
	db "ANTHONY@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; HIKER (22)
	db "ANTHONY@", TRAINERTYPE_MOVES
	db 34
	dw GRAVELER
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 36
	dw GOLEM
	dw MAGNITUDE, SELFDESTRUCT, DEFENSE_CURL, ROLLOUT
	db 34
	dw MACHOKE
	dw KARATE_CHOP, VITAL_THROW, HEADBUTT, DIG
	db -1 ; end

	end_list_items

BikerGroup:
	next_list_item ; BIKER (1)
	db "BENNY@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (2)
	db "KAZU@", TRAINERTYPE_NORMAL
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db 20
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (3)
	db "DWAYNE@", TRAINERTYPE_NORMAL
	db 27
	dw KOFFING
	db 28
	dw KOFFING
	db 29
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (4)
	db "HARRIS@", TRAINERTYPE_NORMAL
	db 34
	dw FLAREON
	db -1 ; end

	next_list_item ; BIKER (5)
	db "ZEKE@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw KOFFING
	db -1 ; end

	next_list_item ; BIKER (6)
	db "CHARLES@", TRAINERTYPE_NORMAL
	db 30
	dw KOFFING
	db 30
	dw CHARMELEON
	db 30
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (7)
	db "RILEY@", TRAINERTYPE_NORMAL
	db 34
	dw WEEZING
	db -1 ; end

	next_list_item ; BIKER (8)
	db "JOEL@", TRAINERTYPE_NORMAL
	db 32
	dw MAGMAR
	db 32
	dw MAGMAR
	db -1 ; end

	next_list_item ; BIKER (9)
	db "GLENN@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 30
	dw MAGMAR
	db 32
	dw WEEZING
	db -1 ; end

	end_list_items

BlaineGroup:
	next_list_item ; BLAINE (1)
	db "BLAINE@", TRAINERTYPE_MOVES
	db 45
	dw MAGCARGO
	dw CURSE, SMOG, FLAMETHROWER, ROCK_SLIDE
	db 45
	dw MAGMAR
	dw THUNDERPUNCH, FIRE_PUNCH, SUNNY_DAY, CONFUSE_RAY
	db 50
	dw RAPIDASH
	dw QUICK_ATTACK, FIRE_SPIN, FURY_ATTACK, FIRE_BLAST
	db -1 ; end

	end_list_items

BurglarGroup:
	next_list_item ; BURGLAR (1)
	db "DUNCAN@", TRAINERTYPE_NORMAL
	db 23
	dw KOFFING
	db 25
	dw MAGMAR
	db 23
	dw KOFFING
	db -1 ; end

	next_list_item ; BURGLAR (2)
	db "EDDIE@", TRAINERTYPE_MOVES
	db 26
	dw GROWLITHE
	dw ROAR, EMBER, LEER, TAKE_DOWN
	db 24
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; BURGLAR (3)
	db "COREY@", TRAINERTYPE_NORMAL
	db 25
	dw KOFFING
	db 28
	dw MAGMAR
	db 25
	dw KOFFING
	db 30
	dw KOFFING
	db -1 ; end

	end_list_items

FirebreatherGroup:
	next_list_item ; FIREBREATHER (1)
	db "Chaz@", TRAINERTYPE_NORMAL
	db 10
	dw MAGBY
	db 10
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (2)
	db "DICK@", TRAINERTYPE_NORMAL
	db 17
	dw CHARMELEON
	db -1 ; end

	next_list_item ; FIREBREATHER (3)
	db "NED@", TRAINERTYPE_NORMAL
	db 15
	dw KOFFING
	db 16
	dw GROWLITHE
	db 15
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (4)
	db "BURT@", TRAINERTYPE_NORMAL
	db 32
	dw KOFFING
	db 32
	dw SLUGMA
	db -1 ; end

	next_list_item ; FIREBREATHER (5)
	db "BILL@", TRAINERTYPE_NORMAL
	db 6
	dw KOFFING
	db 6
	dw KOFFING
	db -1 ; end

	next_list_item ; FIREBREATHER (6)
	db "WALT@", TRAINERTYPE_NORMAL
	db 11
	dw MAGMAR
	db 13
	dw MAGMAR
	db -1 ; end

	next_list_item ; FIREBREATHER (7)
	db "RAY@", TRAINERTYPE_NORMAL
	db 9
	dw VULPIX
	db -1 ; end

	next_list_item ; FIREBREATHER (8)
	db "LYLE@", TRAINERTYPE_NORMAL
	db 28
	dw KOFFING
	db 31
	dw FLAREON
	db 28
	dw KOFFING
	db -1 ; end

	end_list_items

JugglerGroup:
	next_list_item ; JUGGLER (1)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 2
	dw VOLTORB
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (2)
	db "Percy@", TRAINERTYPE_NORMAL
	db 10
	dw MIME__JR
	db 8
	dw VOLTORB
	db 9
	dw IGGLYBUFF
	db -1 ; end

	next_list_item ; JUGGLER (3)
	db "HORTON@", TRAINERTYPE_NORMAL
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db 33
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (4)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 6
	dw VOLTORB
	db 10
	dw VOLTORB
	db 14
	dw VOLTORB
	db 18
	dw VOLTORB
	db -1 ; end

	next_list_item ; JUGGLER (5)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	next_list_item ; JUGGLER (6)
	db "IRWIN@", TRAINERTYPE_NORMAL
	db 18
	dw VOLTORB
	db 22
	dw VOLTORB
	db 26
	dw VOLTORB
	db 30
	dw ELECTRODE
	db -1 ; end

	end_list_items

BlackbeltGroup:
	next_list_item ; BLACKBELT_T (1)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 27
	dw ONIX
	db 30
	dw HITMONLEE
	db 27
	dw ONIX
	db 32
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (2)
	db "Shigeru@", TRAINERTYPE_MOVES
	db 22
	dw HITMONLEE
	dw DOUBLE_KICK, BULK_UP, BRICK_BREAK, FOCUS_ENERGY
	db 22
	dw HITMONCHAN
	dw AERIAL_ACE, MACH_PUNCH, BULK_UP, BULLET_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (3)
	db "KENJI@", TRAINERTYPE_MOVES
	db 33
	dw ONIX
	dw BIND, ROCK_THROW, TOXIC, DIG
	db 38
	dw MACHAMP
	dw HEADBUTT, SWAGGER, THUNDERPUNCH, VITAL_THROW
	db 33
	dw STEELIX
	dw EARTHQUAKE, ROCK_THROW, IRON_TAIL, SANDSTORM
	db 36
	dw HITMONLEE
	dw DOUBLE_TEAM, HI_JUMP_KICK, MUD_SLAP, SWIFT
	db -1 ; end

	next_list_item ; BLACKBELT_T (4)
	db "LAO@", TRAINERTYPE_MOVES
	db 27
	dw HITMONCHAN
	dw COMET_PUNCH, THUNDERPUNCH, ICE_PUNCH, FIRE_PUNCH
	db -1 ; end

	next_list_item ; BLACKBELT_T (5)
	db "Satoshi@", TRAINERTYPE_MOVES
	db 22
	dw MACHOP
	dw LEER, FOCUS_ENERGY, KARATE_CHOP, SEISMIC_TOSS
	db 23
	dw MACHOKE
	dw LEER, KARATE_CHOP, SEISMIC_TOSS, ROCK_SLIDE
	db -1 ; end

	next_list_item ; BLACKBELT_T (6)
	db "KIYO@", TRAINERTYPE_NORMAL
	db 34
	dw HITMONLEE
	db 34
	dw HITMONCHAN
	db -1 ; end

	next_list_item ; BLACKBELT_T (7)
	db "Kensuke@", TRAINERTYPE_NORMAL
	db 22
	dw MANKEY
	db 22
	dw MANKEY
	db 23
	dw PRIMEAPE
	db -1 ; end

	next_list_item ; BLACKBELT_T (8)
	db "KENJI@", TRAINERTYPE_NORMAL
	db 28
	dw MACHOKE
	db -1 ; end

	next_list_item ; BLACKBELT_T (9)
	db "WAI@", TRAINERTYPE_NORMAL
	db 30
	dw MACHOKE
	db 32
	dw MACHOKE
	db 34
	dw MACHOKE
	db -1 ; end

	end_list_items

ArcherGroup:
	next_list_item ; ARCHER (1)
	db "Archer@", TRAINERTYPE_MOVES
	db 20
	dw SLOWPOKE
	dw DISABLE, ZEN_HEADBUTT, WATER_GUN, CONFUSION
	db 20
	dw KOFFING
	dw MUD_BOMB, SLUDGE, SMOKESCREEN, PAYBACK
	db 21
	dw HOUNDOUR
	dw ODOR_SLEUTH, SMOG, BITE, EMBER
	db 22
	dw NIDORINO
	dw POISON_JAB, HORN_ATTACK, DOUBLE_KICK, LEER
	db -1 ; end

	next_list_item ; ARCHER (2)
	db "Archer@", TRAINERTYPE_MOVES
	db 36
	dw GOLBAT
	dw LEECH_LIFE, BITE, CONFUSE_RAY, WING_ATTACK
	db -1 ; end

	next_list_item ; ARCHER (3)
	db "Archer@", TRAINERTYPE_MOVES
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 32
	dw WEEZING
	dw TACKLE, EXPLOSION, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SELFDESTRUCT, SLUDGE, SMOKESCREEN
	db 30
	dw KOFFING
	dw TACKLE, SMOG, SLUDGE, SMOKESCREEN
	db -1 ; end

	next_list_item ; ARCHER (4)
	db "Archer@", TRAINERTYPE_NORMAL
	db 22
	dw ZUBAT
	db 24
	dw RATICATE
	db 22
	dw KOFFING
	db -1 ; end

	end_list_items

PsychicGroup:
	next_list_item ; PSYCHIC_T (1)
	db "Jordan@", TRAINERTYPE_NORMAL
	db 9
	dw NATU
	db 9
	dw ABRA
	db 9
	dw SLOWPOKE
	db -1 ; end

	next_list_item ; PSYCHIC_T (2)
	db "FRANKLIN@", TRAINERTYPE_NORMAL
	db 37
	dw KADABRA
	db -1 ; end

	next_list_item ; PSYCHIC_T (3)
	db "HERMAN@", TRAINERTYPE_NORMAL
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGCUTE
	db 30
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PSYCHIC_T (4)
	db "FIDEL@", TRAINERTYPE_NORMAL
	db 34
	dw XATU
	db -1 ; end

	next_list_item ; PSYCHIC_T (5)
	db "GREG@", TRAINERTYPE_MOVES
	db 17
	dw DROWZEE
	dw HYPNOSIS, DISABLE, DREAM_EATER, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (6)
	db "NORMAN@", TRAINERTYPE_MOVES
	db 17
	dw SLOWPOKE
	dw TACKLE, GROWL, WATER_GUN, NO_MOVE
	db 20
	dw SLOWPOKE
	dw CURSE, BODY_SLAM, WATER_GUN, CONFUSION
	db -1 ; end

	next_list_item ; PSYCHIC_T (7)
	db "MARK@", TRAINERTYPE_MOVES
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 13
	dw ABRA
	dw TELEPORT, FLASH, NO_MOVE, NO_MOVE
	db 15
	dw KADABRA
	dw TELEPORT, KINESIS, CONFUSION, NO_MOVE
	db -1 ; end

	next_list_item ; PSYCHIC_T (8)
	db "PHIL@", TRAINERTYPE_MOVES
	db 24
	dw NATU
	dw LEER, NIGHT_SHADE, FUTURE_SIGHT, CONFUSE_RAY
	db 26
	dw KADABRA
	dw DISABLE, PSYBEAM, RECOVER, FUTURE_SIGHT
	db -1 ; end

	next_list_item ; PSYCHIC_T (9)
	db "RICHARD@", TRAINERTYPE_NORMAL
	db 36
	dw ESPEON
	db -1 ; end

	next_list_item ; PSYCHIC_T (10)
	db "GILBERT@", TRAINERTYPE_NORMAL
	db 30
	dw STARMIE
	db 30
	dw EXEGGCUTE
	db 34
	dw GIRAFARIG
	db -1 ; end

	next_list_item ; PSYCHIC_T (11)
	db "JARED@", TRAINERTYPE_NORMAL
	db 32
	dw MR__MIME
	db 32
	dw EXEGGCUTE
	db 35
	dw EXEGGCUTE
	db -1 ; end

	next_list_item ; PSYCHIC_T (12)
	db "RODNEY@", TRAINERTYPE_NORMAL
	db 29
	dw DROWZEE
	db 33
	dw HYPNO
	db -1 ; end

	end_list_items

PicnickerGroup:
	next_list_item ; PICNICKER (1)
	db "Haylee@", TRAINERTYPE_NORMAL
	db 7
	dw HOPPIP
	db 7
	dw AZURILL
	db 7
	dw NIDORAN_F
	db -1 ; end

	next_list_item ; PICNICKER (2)
	db "GINA@", TRAINERTYPE_NORMAL
	db 9
	dw HOPPIP
	db 9
	dw HOPPIP
	db 12
	dw BULBASAUR
	db -1 ; end

	next_list_item ; PICNICKER (3)
	db "Chloe@", TRAINERTYPE_NORMAL
	db 11
	dw PIKACHU
	db -1 ; end

	next_list_item ; PICNICKER (4)
	db "KIM@", TRAINERTYPE_NORMAL
	db 15
	dw VULPIX
	db -1 ; end

	next_list_item ; PICNICKER (5)
	db "CINDY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (6)
	db "HOPE@", TRAINERTYPE_NORMAL
	db 34
	dw FLAAFFY
	db -1 ; end

	next_list_item ; PICNICKER (7)
	db "SHARON@", TRAINERTYPE_NORMAL
	db 31
	dw FURRET
	db 33
	dw RAPIDASH
	db -1 ; end

	next_list_item ; PICNICKER (8)
	db "DEBRA@", TRAINERTYPE_NORMAL
	db 33
	dw SEAKING
	db -1 ; end

	next_list_item ; PICNICKER (9)
	db "GINA@", TRAINERTYPE_NORMAL
	db 14
	dw HOPPIP
	db 14
	dw HOPPIP
	db 17
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (10)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 16
	dw PONYTA
	db 16
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (11)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 15
	dw WEEPINBELL
	db 15
	dw NIDORINA
	db -1 ; end

	next_list_item ; PICNICKER (12)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 19
	dw WEEPINBELL
	db 19
	dw NIDORINO
	db 21
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (13)
	db "HEIDI@", TRAINERTYPE_NORMAL
	db 32
	dw SKIPLOOM
	db 32
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; PICNICKER (14)
	db "EDNA@", TRAINERTYPE_NORMAL
	db 30
	dw NIDORINA
	db 34
	dw RAICHU
	db -1 ; end

	next_list_item ; PICNICKER (15)
	db "GINA@", TRAINERTYPE_NORMAL
	db 26
	dw SKIPLOOM
	db 26
	dw SKIPLOOM
	db 29
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (16)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 31
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (17)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 37
	dw CLEFAIRY
	dw ENCORE, DOUBLESLAP, MINIMIZE, METRONOME
	db -1 ; end

	next_list_item ; PICNICKER (18)
	db "ERIN@", TRAINERTYPE_NORMAL
	db 32
	dw PONYTA
	db 32
	dw PONYTA
	db -1 ; end

	next_list_item ; PICNICKER (19)
	db "TANYA@", TRAINERTYPE_NORMAL
	db 37
	dw EXEGGUTOR
	db -1 ; end

	next_list_item ; PICNICKER (20)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 20
	dw CLEFAIRY
	dw ENCORE, SING, DOUBLESLAP, MINIMIZE
	db -1 ; end

	next_list_item ; PICNICKER (21)
	db "ERIN@", TRAINERTYPE_MOVES
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db 34
	dw RAICHU
	dw SWIFT, MUD_SLAP, QUICK_ATTACK, THUNDERBOLT
	db 36
	dw PONYTA
	dw DOUBLE_TEAM, STOMP, FIRE_SPIN, SUNNY_DAY
	db -1 ; end

	next_list_item ; PICNICKER (22)
	db "LIZ@", TRAINERTYPE_NORMAL
	db 24
	dw WEEPINBELL
	db 26
	dw NIDORINO
	db 26
	dw NIDOQUEEN
	db -1 ; end

	next_list_item ; PICNICKER (23)
	db "LIZ@", TRAINERTYPE_MOVES
	db 30
	dw WEEPINBELL
	dw SLEEP_POWDER, POISONPOWDER, STUN_SPORE, SLUDGE_BOMB
	db 32
	dw NIDOKING
	dw EARTHQUAKE, DOUBLE_KICK, POISON_STING, IRON_TAIL
	db 32
	dw NIDOQUEEN
	dw EARTHQUAKE, DOUBLE_KICK, TAIL_WHIP, BODY_SLAM
	db -1 ; end

	next_list_item ; PICNICKER (24)
	db "GINA@", TRAINERTYPE_NORMAL
	db 30
	dw SKIPLOOM
	db 30
	dw SKIPLOOM
	db 32
	dw IVYSAUR
	db -1 ; end

	next_list_item ; PICNICKER (25)
	db "GINA@", TRAINERTYPE_MOVES
	db 33
	dw JUMPLUFF
	dw STUN_SPORE, SUNNY_DAY, LEECH_SEED, COTTON_SPORE
	db 33
	dw JUMPLUFF
	dw SUNNY_DAY, SLEEP_POWDER, LEECH_SEED, COTTON_SPORE
	db 38
	dw VENUSAUR
	dw SOLARBEAM, RAZOR_LEAF, HEADBUTT, MUD_SLAP
	db -1 ; end

	next_list_item ; PICNICKER (26)
	db "TIFFANY@", TRAINERTYPE_MOVES
	db 43
	dw CLEFAIRY
	dw METRONOME, ENCORE, MOONLIGHT, MINIMIZE
	db -1 ; end

	end_list_items

CamperGroup:
	next_list_item ; CAMPER (1)
	db "Garret@", TRAINERTYPE_NORMAL
	db 11
	dw DIGLETT
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "TODD@", TRAINERTYPE_NORMAL
	db 11
	dw ODDISH
	db 11
	dw SLUGMA
	db 11
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (2)
	db "Howard@", TRAINERTYPE_NORMAL
	db 10
	dw ODDISH
	db 10
	dw SLUGMA
	db 10
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (4)
	db "ELLIOT@", TRAINERTYPE_NORMAL
	db 13
	dw SANDSHREW
	db 15
	dw MARILL
	db -1 ; end

	next_list_item ; CAMPER (5)
	db "BARRY@", TRAINERTYPE_NORMAL
	db 36
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (6)
	db "LLOYD@", TRAINERTYPE_NORMAL
	db 34
	dw NIDOKING
	db -1 ; end

	next_list_item ; CAMPER (7)
	db "DEAN@", TRAINERTYPE_NORMAL
	db 33
	dw GOLDUCK
	db 31
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (8)
	db "SID@", TRAINERTYPE_NORMAL
	db 32
	dw DUGTRIO
	db 29
	dw PRIMEAPE
	db 29
	dw POLIWRATH
	db -1 ; end

	next_list_item ; CAMPER (9)
	db "HARVEY@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (10)
	db "DALE@", TRAINERTYPE_NORMAL
	db 15
	dw NIDORINO
	db -1 ; end

	next_list_item ; CAMPER (11)
	db "TED@", TRAINERTYPE_NORMAL
	db 17
	dw MANKEY
	db -1 ; end

	next_list_item ; CAMPER (12)
	db "TODD@", TRAINERTYPE_NORMAL
	db 17
	dw GEODUDE
	db 17
	dw GEODUDE
	db 23
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (13)
	db "TODD@", TRAINERTYPE_NORMAL
	db 23
	dw GEODUDE
	db 23
	dw GEODUDE
	db 26
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (14)
	db "THOMAS@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (15)
	db "LEROY@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (16)
	db "DAVID@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (17)
	db "JOHN@", TRAINERTYPE_NORMAL
	db 33
	dw GRAVELER
	db 36
	dw GRAVELER
	db 40
	dw GOLBAT
	db 42
	dw GOLDUCK
	db -1 ; end

	next_list_item ; CAMPER (18)
	db "JERRY@", TRAINERTYPE_NORMAL
	db 37
	dw SANDSLASH
	db -1 ; end

	next_list_item ; CAMPER (19)
	db "SPENCER@", TRAINERTYPE_NORMAL
	db 17
	dw SANDSHREW
	db 17
	dw SANDSLASH
	db 19
	dw ZUBAT
	db -1 ; end

	next_list_item ; CAMPER (20)
	db "TODD@", TRAINERTYPE_NORMAL
	db 30
	dw GRAVELER
	db 30
	dw GRAVELER
	db 30
	dw SLUGMA
	db 32
	dw PSYDUCK
	db -1 ; end

	next_list_item ; CAMPER (21)
	db "TODD@", TRAINERTYPE_MOVES
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 33
	dw GRAVELER
	dw SELFDESTRUCT, ROCK_THROW, HARDEN, MAGNITUDE
	db 36
	dw MAGCARGO
	dw ROCK_THROW, HARDEN, AMNESIA, FLAMETHROWER
	db 34
	dw GOLDUCK
	dw DISABLE, PSYCHIC_M, SURF, PSYCH_UP
	db -1 ; end

	next_list_item ; CAMPER (22)
	db "QUENTIN@", TRAINERTYPE_NORMAL
	db 30
	dw FEAROW
	db 30
	dw PRIMEAPE
	db 30
	dw TAUROS
	db -1 ; end

	end_list_items

ArianaGroup:
	next_list_item ; EXECUTIVEF (1)
	db "Ariana@", TRAINERTYPE_MOVES
	db 19
	dw EKANS
	dw POISON_JAB, SCREECH, BITE, GLARE
	db 19
	dw GLOOM
	dw GROWTH, SLEEP_POWDER, GIGA_DRAIN, ACID
	db 20
	dw MURKROW
	dw WING_ATTACK, PURSUIT, HAZE, NIGHT_SHADE
	db 21
	dw NIDORINA
	dw DOUBLE_KICK, POISON_JAB, BITE, TAIL_WHIP
	db -1 ; end

	next_list_item ; EXECUTIVEF (2)
	db "Ariana@", TRAINERTYPE_MOVES
	db 19
	dw ARBOK
	dw WRAP, LEER, POISON_STING, BITE
	db 20
	dw GLOOM
	dw ABSORB, SWEET_SCENT, SLEEP_POWDER, ACID
	db 21
	dw MURKROW
	dw PECK, PURSUIT, HAZE, NO_MOVE
	db -1 ; end

	end_list_items

SageGroup:
	next_list_item ; SAGE (1)
	db "CHOW@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (2)
	db "NICO@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (3)
	db "JIN@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (4)
	db "TROY@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (5)
	db "Jeffrey@", TRAINERTYPE_NORMAL
	db 15
	dw MISDREAVUS
	db -1 ; end

	next_list_item ; SAGE (6)
	db "Ping@", TRAINERTYPE_NORMAL
	db 13
	dw GASTLY
	db 13
	dw GASTLY
	db 13
	dw GASTLY
	db 13
	dw GASTLY
	db 13
	dw CORSOLA
	db -1 ; end

	next_list_item ; SAGE (7)
	db "EDMOND@", TRAINERTYPE_NORMAL
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db 3
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (8)
	db "NEAL@", TRAINERTYPE_NORMAL
	db 6
	dw BELLSPROUT
	db -1 ; end

	next_list_item ; SAGE (9)
	db "LI@", TRAINERTYPE_NORMAL
	db 7
	dw BELLSPROUT
	db 7
	dw BELLSPROUT
	db 10
	dw HOOTHOOT
	db -1 ; end

	next_list_item ; SAGE (10)
	db "GAKU@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw FLAREON
	db -1 ; end

	next_list_item ; SAGE (11)
	db "MASA@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw JOLTEON
	db -1 ; end

	next_list_item ; SAGE (12)
	db "KOJI@", TRAINERTYPE_NORMAL
	db 32
	dw NOCTOWL
	db 32
	dw VAPOREON
	db -1 ; end

	end_list_items

MediumGroup:
	next_list_item ; MEDIUM (3)
	db "BETHANY@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (4)
	db "MARGRET@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (5)
	db "ETHEL@", TRAINERTYPE_NORMAL
	db 25
	dw HAUNTER
	db -1 ; end

	next_list_item ; MEDIUM (6)
	db "REBECCA@", TRAINERTYPE_NORMAL
	db 35
	dw DROWZEE
	db 35
	dw HYPNO
	db -1 ; end

	next_list_item ; MEDIUM (7)
	db "DORIS@", TRAINERTYPE_NORMAL
	db 34
	dw SLOWPOKE
	db 36
	dw SLOWBRO
	db -1 ; end

	end_list_items

BoarderGroup:
	next_list_item ; BOARDER (1)
	db "RONALD@", TRAINERTYPE_NORMAL
	db 24
	dw SEEL
	db 25
	dw DEWGONG
	db 24
	dw SEEL
	db -1 ; end

	next_list_item ; BOARDER (2)
	db "BRAD@", TRAINERTYPE_NORMAL
	db 26
	dw SWINUB
	db 26
	dw SWINUB
	db -1 ; end

	next_list_item ; BOARDER (3)
	db "Sonny@", TRAINERTYPE_NORMAL
	db 9
	dw SHELLDER
	db 9
	dw SWINUB
	db 10
	dw DELIBIRD
	db -1 ; end

	end_list_items

PokefanMGroup:
	next_list_item ; POKEFANM (1)
	db "WILLIAM@", TRAINERTYPE_ITEM
	db 14
	dw RAICHU
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (2) DEREK1
	db "Devon@", TRAINERTYPE_ITEM
	db 16
	dw PIKACHU
	db ORAN_BERRY
	db 16
	dw PHANPY
	db ORAN_BERRY
	db 17
	dw QUILAVA
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (3)
	db "ROBERT@", TRAINERTYPE_ITEM
	db 33
	dw QUAGSIRE
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (4)
	db "JOSHUA@", TRAINERTYPE_ITEM
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db 23
	dw PIKACHU
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (5)
	db "CARTER@", TRAINERTYPE_ITEM
	db 29
	dw BULBASAUR
	db ORAN_BERRY
	db 29
	dw CHARMANDER
	db ORAN_BERRY
	db 29
	dw SQUIRTLE
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (6)
	db "TREVOR@", TRAINERTYPE_ITEM
	db 33
	dw PSYDUCK
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (7)
	db "BRANDON@", TRAINERTYPE_ITEM
	db 13
	dw SNUBBULL
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (8)
	db "JEREMY@", TRAINERTYPE_ITEM
	db 28
	dw MEOWTH
	db ORAN_BERRY
	db 28
	dw MEOWTH
	db ORAN_BERRY
	db 28
	dw MEOWTH
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (9)
	db "COLIN@", TRAINERTYPE_ITEM
	db 32
	dw DELIBIRD
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (10)
	db "DEREK@", TRAINERTYPE_ITEM
	db 19
	dw PIKACHU
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (11)
	db "DEREK@", TRAINERTYPE_ITEM
	db 36
	dw PIKACHU
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (12)
	db "ALEX@", TRAINERTYPE_ITEM
	db 29
	dw NIDOKING
	db ORAN_BERRY
	db 29
	dw SLOWKING
	db ORAN_BERRY
	db 29
	dw SEAKING
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (13)
	db "REX@", TRAINERTYPE_ITEM
	db 35
	dw PHANPY
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANM (14)
	db "ALLAN@", TRAINERTYPE_ITEM
	db 35
	dw TEDDIURSA
	db ORAN_BERRY
	db -1 ; end

	end_list_items

KimonoGirlGroup:
	next_list_item ; KIMONO_GIRL (1)
	db "Rui@", TRAINERTYPE_NORMAL
	db 14
	dw VAPOREON
	db 14
	dw JOLTEON
	db 14
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (2)
	db "NAOKO@", TRAINERTYPE_NORMAL
	db 17
	dw FLAREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (3)
	db "SAYO@", TRAINERTYPE_NORMAL
	db 17
	dw ESPEON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (4)
	db "ZUKI@", TRAINERTYPE_NORMAL
	db 17
	dw UMBREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (5)
	db "KUNI@", TRAINERTYPE_NORMAL
	db 17
	dw VAPOREON
	db -1 ; end

	next_list_item ; KIMONO_GIRL (6)
	db "MIKI@", TRAINERTYPE_NORMAL
	db 17
	dw JOLTEON
	db -1 ; end

	end_list_items

TwinsGroup:
	next_list_item ; TWINS (1)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw SPINARAK
	db 10
	dw LEDYBA
	db -1 ; end

	next_list_item ; TWINS (2)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db -1 ; end

	next_list_item ; TWINS (3)
	db "ANN & ANNE@", TRAINERTYPE_MOVES
	db 16
	dw JIGGLYPUFF
	dw SING, DEFENSE_CURL, POUND, DISABLE
	db 16
	dw CLEFAIRY
	dw GROWL, ENCORE, DOUBLESLAP, METRONOME
	db -1 ; end

	next_list_item ; TWINS (4)
	db "AMY & MAY@", TRAINERTYPE_NORMAL
	db 10
	dw LEDYBA
	db 10
	dw SPINARAK
	db -1 ; end

	next_list_item ; TWINS (5)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VICTREEBEL
	db 35
	dw VILEPLUME
	db -1 ; end

	next_list_item ; TWINS (6)
	db "JO & ZOE@", TRAINERTYPE_NORMAL
	db 35
	dw VILEPLUME
	db 35
	dw VICTREEBEL
	db -1 ; end

	next_list_item ; TWINS (7)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw TEDDIURSA
	db 31
	dw PHANPY
	db -1 ; end

	next_list_item ; TWINS (8)
	db "MEG & PEG@", TRAINERTYPE_NORMAL
	db 31
	dw PHANPY
	db 31
	dw TEDDIURSA
	db -1 ; end

	next_list_item ; TWINS (9)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db 35
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db -1 ; end

	next_list_item ; TWINS (10)
	db "LEA & PIA@", TRAINERTYPE_MOVES
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, ICE_BEAM, HEADBUTT
	db 38
	dw DRATINI
	dw THUNDER_WAVE, TWISTER, FLAMETHROWER, HEADBUTT
	db -1 ; end

	end_list_items

PokefanFGroup:
	next_list_item ; POKEFANF (1)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 14
	dw SNUBBULL
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (2)
	db "Ethel@", TRAINERTYPE_ITEM
	db 15
	dw TOGEPI
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (3)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 18
	dw SNUBBULL
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (4)
	db "BEVERLY@", TRAINERTYPE_ITEM
	db 30
	dw GRANBULL
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (5) GEORGIA
	db "Camilla@", TRAINERTYPE_ITEM
	db 16
	dw FURRET
	db ORAN_BERRY
	db 16
	dw PIKACHU
	db ORAN_BERRY
	db 17
	dw TOTODILE
	db ORAN_BERRY
	db -1 ; end

	next_list_item ; POKEFANF (6)
	db "JAIME@", TRAINERTYPE_ITEM
	db 16
	dw MEOWTH
	db ORAN_BERRY
	db -1 ; end

	end_list_items

RedGroup:
	next_list_item ; RED (1)
	db "RED@", TRAINERTYPE_MOVES
	db 81
	dw PIKACHU
	dw CHARM, QUICK_ATTACK, THUNDERBOLT, THUNDER
	db 73
	dw ESPEON
	dw MUD_SLAP, REFLECT, SWIFT, PSYCHIC_M
	db 75
	dw SNORLAX
	dw AMNESIA, SNORE, REST, BODY_SLAM
	db 77
	dw VENUSAUR
	dw SUNNY_DAY, GIGA_DRAIN, SYNTHESIS, SOLARBEAM
	db 77
	dw CHARIZARD
	dw FLAMETHROWER, WING_ATTACK, SLASH, FIRE_SPIN
	db 77
	dw BLASTOISE
	dw RAIN_DANCE, SURF, BLIZZARD, WHIRLPOOL
	db -1 ; end

	end_list_items

BlueGroup:
	next_list_item ; BLUE (1)
	db "BLUE@", TRAINERTYPE_MOVES
	db 56
	dw PIDGEOT
	dw QUICK_ATTACK, WHIRLWIND, WING_ATTACK, MIRROR_MOVE
	db 54
	dw ALAKAZAM
	dw DISABLE, RECOVER, PSYCHIC_M, REFLECT
	db 56
	dw RHYDON
	dw FURY_ATTACK, SANDSTORM, ROCK_SLIDE, EARTHQUAKE
	db 58
	dw GYARADOS
	dw TWISTER, HYDRO_PUMP, RAIN_DANCE, HYPER_BEAM
	db 58
	dw EXEGGUTOR
	dw SUNNY_DAY, LEECH_SEED, EGG_BOMB, SOLARBEAM
	db 58
	dw ARCANINE
	dw ROAR, SWIFT, FLAMETHROWER, EXTREMESPEED
	db -1 ; end

	end_list_items

OfficerGroup:
	next_list_item ; OFFICER (1)
	db "Toby@", TRAINERTYPE_NORMAL
	db 16
	dw GROWLITHE
	db -1 ; end

	next_list_item ; OFFICER (2)
	db "DIRK@", TRAINERTYPE_NORMAL
	db 14
	dw GROWLITHE
	db 14
	dw GROWLITHE
	db -1 ; end

	end_list_items

GruntFGroup:
	next_list_item ; ManF (1)
	db "Lady@", TRAINERTYPE_NORMAL
	db 18
	dw RATICATE
	db 19
	dw PORYGON
	db -1 ; end

	next_list_item ; ManF (2)
	db "Lady@", TRAINERTYPE_NORMAL
	db 20
	dw SKIPLOOM
	db -1 ; end

	next_list_item ; ManF (3)
	db "Lady@", TRAINERTYPE_NORMAL
	db 18
	dw CHARMELEON
	db 19
	dw SCYTHER
	db -1 ; end

	next_list_item ; ManF (4)
	db "Lady@", TRAINERTYPE_NORMAL
	db 17
	dw MEOWTH
	db 18
	dw ODDISH
	db 18
	dw PINECO
	db 19
	dw GOLBAT
	db -1 ; end

	next_list_item ; ManF (5)
	db "Lady@", TRAINERTYPE_MOVES
	db 18
	dw EKANS
	dw WRAP, LEER, POISON_STING, BITE
	db 18
	dw GLOOM
	dw ABSORB, SWEET_SCENT, STUN_SPORE, SLEEP_POWDER
	db -1 ; end

	end_list_items

MysticalmanGroup:
	next_list_item ; MYSTICALMAN (1)
	db "EUSINE@", TRAINERTYPE_MOVES
	db 23
	dw DROWZEE
	dw DREAM_EATER, HYPNOSIS, DISABLE, CONFUSION
	db 23
	dw HAUNTER
	dw LICK, HYPNOSIS, MEAN_LOOK, CURSE
	db 25
	dw ELECTRODE
	dw SCREECH, SONICBOOM, THUNDER, ROLLOUT
	db -1 ; end

	end_list_items

Rival3Group:
	next_list_item ; RIVAL3 (1)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 4
	dw SMOOCHUM
	db 5
	dw LARVITAR
	db -1 ; end

	next_list_item ; RIVAL3 (2)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 4
	dw SMOOCHUM
	db 5
	dw DRATINI
	db -1 ; end

	next_list_item ; RIVAL3 (3)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 5
	dw TOTODILE
	db -1 ; end

	next_list_item ; RIVAL3 (4)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 15
	dw EEVEE
	db 15
	dw SWINUB
	db 16
	dw LARVITAR
	db -1 ; end

	next_list_item ; RIVAL3 (5)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 15
	dw EEVEE
	db 15
	dw SWINUB
	db 16
	dw DRATINI
	db -1 ; end

	next_list_item ; RIVAL3 (6)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 24
	dw POLIWHIRL
	db 24
	dw SWINUB
	db 24
	dw SYLVEON
	db 25
	dw PUPITAR
	db -1 ; end

	next_list_item ; RIVAL3 (7)
	db "Dahlia@", TRAINERTYPE_NORMAL
	db 24
	dw POLIWHIRL
	db 24
	dw SWINUB
	db 24
	dw SYLVEON
	db 25
	dw DRAGONAIR
	db -1 ; end

	end_list_items

Rival4Group:
	next_list_item ; RIVAL4 (1)
	db "Draco@", TRAINERTYPE_NORMAL
	db 4
	dw SMOOCHUM
	db 5
	dw LARVITAR
	db -1 ; end

	next_list_item ; RIVAL3 (2)
	db "Draco@", TRAINERTYPE_NORMAL
	db 4
	dw SMOOCHUM
	db 5
	dw DRATINI
	db -1 ; end

	next_list_item ; RIVAL4 (3)
	db "Draco@", TRAINERTYPE_NORMAL
	db 5
	dw TOTODILE
	db -1 ; end

	next_list_item ; RIVAL4 (4)
	db "Draco@", TRAINERTYPE_NORMAL
	db 15
	dw EEVEE
	db 15
	dw SWINUB
	db 16
	dw LARVITAR
	db -1 ; end

	next_list_item ; RIVAL4 (5)
	db "Draco@", TRAINERTYPE_NORMAL
	db 15
	dw EEVEE
	db 15
	dw SWINUB
	db 16
	dw DRATINI
	db -1 ; end

	next_list_item ; RIVAL4 (6)
	db "Draco@", TRAINERTYPE_NORMAL
	db 24
	dw POLIWHIRL
	db 24
	dw SWINUB
	db 24
	dw SYLVEON
	db 25
	dw PUPITAR
	db -1 ; end

	next_list_item ; RIVAL4 (7)
	db "Draco@", TRAINERTYPE_NORMAL
	db 24
	dw POLIWHIRL
	db 24
	dw SWINUB
	db 24
	dw SYLVEON
	db 25
	dw DRAGONAIR
	db -1 ; end

	end_list_items

BreederGroup:
	next_list_item ; BREEDER (1)
	db "Emily@", TRAINERTYPE_MOVES
	db 17
	dw TEDDIURSA
	dw CRUNCH, PLAY_ROUGH, CLOSE_COMBAT, SLACK_OFF
	db -1 ; end

	next_list_item ; BREEDER (2)
	db "Nina@", TRAINERTYPE_MOVES
	db 18
	dw RATTATA
	dw SCREECH, REVERSAL, BITE, FURY_SWIPES
	db 18
	dw TEDDIURSA
	dw CRUNCH, PLAY_ROUGH, CLOSE_COMBAT, SLACK_OFF
	db -1 ; end

	next_list_item ; BREEDER (3)
	db "Sarah@", TRAINERTYPE_MOVES
	db 18
	dw EEVEE
	dw FLAIL, CHARM, LEER, TACKLE
	db 19
	dw AIPOM
	dw SCREECH, FURY_SWIPES, FAINT_ATTACK, BOUNCE
	db -1 ; end

	next_list_item ; BREEDER (4)
	db "Bridget@", TRAINERTYPE_MOVES
	db 20
	dw MILTANK
	dw REVERSAL, MILK_DRINK, BODY_SLAM, ROLLOUT
	db -1 ; end

	end_list_items

HexManiacGroup:
	next_list_item ; HEX_MANIAC (1)
	db "Hilda@", TRAINERTYPE_NORMAL
	db 14
	dw GASTLY
	db 14
	dw CORSOLA
	db -1 ; end

	next_list_item ; HEX_MANIAC (2)
	db "Zelda@", TRAINERTYPE_NORMAL
	db 16
	dw HAUNTER
	db -1 ; end

	next_list_item ; HEX_MANIAC (3)
	db "Sabrina@", TRAINERTYPE_NORMAL
	db 18
	dw NOCTOWL
	db -1 ; end

	end_list_items

ChigusaGroup:
	next_list_item ; CHIGUSA
	db "Chigusa@", TRAINERTYPE_MOVES
	db 23
	dw PRIMEAPE
	dw BULK_UP, CROSS_CHOP, ROCK_TOMB, PAYBACK
	db 24
	dw MACHOKE
	dw BULK_UP, VITAL_THROW, ROCK_TOMB, FAINT_ATTACK
	db 25
	dw HITMONTOP
	dw BULK_UP, ROLLING_KICK, DIG, RAPID_SPIN
	db -1 ; end

	end_list_items

MasterGroup:
	next_list_item ; MASTER
	db "Master@", TRAINERTYPE_MOVES
	db 37
	dw DRAGONAIR
	dw DRAGON_PULSE, DRAGON_DANCE, IRON_TAIL, THUNDERBOLT
	db 37
	dw KINGDRA
	dw DRAGON_PULSE, SURF, HYPER_BEAM, ICE_BEAM
	db 37
	dw AMPHAROS
	dw THUNDERBOLT, DRAGON_PULSE, COTTON_SPORE, FLASH_CANNON
	db 40
	dw SALAMENCE
	dw DRAGON_CLAW, DRAGON_DANCE, FLY, STEEL_WING
	db -1 ; end

	end_list_items

GenSurgeGroup:
	next_list_item ; GEN_SURGE
	db "Surge@", TRAINERTYPE_MOVES
	db 40
	dw RAICHU
	dw DOUBLE_TEAM, THUNDER, RAIN_DANCE, DAZZLINGLEAM
	db 41
	dw JOLTEON
	dw SHADOW_BALL, DOUBLE_TEAM, RAIN_DANCE, THUNDER
	db 43
	dw LANTURN
	dw SURF, DISCHARGE, ICE_BEAM, REST
	db 42
	dw ELECTIVIRE
	dw CLOSE_COMBAT, THUNDERPUNCH, BULK_UP, FIRE_PUNCH
	db 44
	dw ZAPDOS
	dw THUNDERBOLT, HURRICANE, STEEL_WING, RAIN_DANCE
	db -1 ; end

	end_list_items

LanceGroup:
	next_list_item ; LANCE1
	db "Lance@", TRAINERTYPE_NORMAL
	db 5
	dw DRATINI
	db -1 ; end

	end_list_items

PasserbyGroup:
	next_list_item ; MIYAMOTO
	db "Miyamoto@", TRAINERTYPE_NORMAL
	db 11
	dw HOUNDOUR
	db 11
	dw ZUBAT
	db 12
	dw MEOWTH
	db -1 ; end

	end_list_items

MiyamotoGroup:
	next_list_item ; MIYAMOTO1
	db "Miyamoto@", TRAINERTYPE_NORMAL
	db 18
	dw YANMA
	db 18
	dw GOLBAT
	db 19
	dw MEOWTH
	db 20
	dw HOUNDOUR
	db -1 ; end

	end_list_items

CynthiaGroup:
	next_list_item ; CYNTHIA1
	db "Cynthia@", TRAINERTYPE_MOVES
	db 17
	dw TOGETIC
	dw FAIRY_WIND, SING, ENCORE, METRONOME
	db -1 ; end

	end_list_items
