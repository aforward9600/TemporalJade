; Every Pokémon sorted by their Japanese names in gojūon order.
; Notably, Rhydon is missing (it should be before Rhyhorn).

EZChat_SortedPokemon:
	dw .a
	dw .i
	dw .u
	dw .e
	dw .o
	dw .ka_ga
	dw .ki_gi
	dw .ku_gu
	dw .ke_ge
	dw .ko_go
	dw .sa_za
	dw .shi_ji
	dw .su_zu
	dw .se_ze
	dw .so_zo
	dw .ta_da
	dw .chi_dhi
	dw .tsu_du
	dw .te_de
	dw .to_do
	dw .na
	dw .ni
	dw .nu
	dw .ne
	dw .no
	dw .ha_ba_pa
	dw .hi_bi_pi
	dw .fu_bu_pu
	dw .he_be_pe
	dw .ho_bo_po
	dw .ma
	dw .mi
	dw .mu
	dw .me
	dw .mo
	dw .ya
	dw .yu
	dw .yo
	dw .ra
	dw .ri
	dw .ru
	dw .re
	dw .ro
	dw .wa
	dw .end

.a:        db EKANS, ARBOK, SEAKING, ACCELGOR, CROCONAW, UNOWN, -1
.i:        db EEVEE, GEODUDE, SHELMET, KINGDRA, ONIX, -1
.u:        db ARCANINE, SUDOWOODO, WEEPINBELL, VICTREEBEL, WOOPER, SWINUB, -1
.e:        db PORYGON_Z, AIPOM, ESPEON, HITMONCHAN, RHYPERIOR, ELECTABUZZ, TOGEKISS, -1
.o:        db FERALIGATR, FURRET, SCRAGGY, PRIMEAPE, SENTRET, MAGBY, SPEAROW, FEAROW, CARRACOSTA, TIRTOUGA, -1
.ka_ga:    db GROWLITHE, MACHAMP, DRAGONITE, PINSIR, SNORLAX, ARCHEN, ARCHEOPS, BLISSEY, MARSHTOMP, SWAMPERT, FARFETCH_D, CUBONE, MAROWAK, KANGASKHAN, -1
.ki_gi:    db SUNFLORA, PIKIPEK, GYARADOS, RAPIDASH, NINETALES, GIRAFARIG, LILLIGANT, LICKILICKY, CRAWDAUNT, -1
.ku_gu:    db WHIMSICOTT, PINECO, GLIGAR, CORPHISH, GRANBULL, CROBAT, -1
.ke_ge:    db ABRA, GENGAR, TAUROS, -1
.ko_go:    db MAGIKARP, MAGNEMITE, GASTLY, HAUNTER, MACHOKE, HERDIER, PSYDUCK, ELECTIVIRE, CUTIEFLY, GOLDUCK, GOLBAT, GOLEM, GRAVELER, VENONAT, -1
.sa_za:    db RHYHORN, GLISCOR, KINGDRA, SCRAFTY, ZAPDOS, JOLTEON, DRILBUR, EXCADRILL, -1 ; RHYDON should lead this list
.shi_ji:   db SEADRA, MAREANIE, VAPOREON, DEWGONG, -1
.su_zu:    db AMBIPOM, STARMIE, SCYTHER, ZUBAT, STOUTLAND, HYPNO, DROWZEE, -1
.se_ze:    db MUDKIP, SKORUPI, -1
.so_zo:    db DRAPION, -1
.ta_da:    db PALOSSAND, HORSEA, EXEGGCUTE, -1
.chi_dhi:  db CHIKORITA, CHINCHOU, -1
.tsu_du:   db SHUCKLE, -1
.te_de:    db SANDYGAST, KINGDRA, LEAFEON, PORYGON2, AMPHAROS, -1
.to_do:    db DODUO, DODRIO, ELEKID, KOFFING, TENTACRUEL, TOGETIC, TOGEPI, GOLDEEN, TRUMBEAK, MAGMORTAR, -1
.na:       db COTTONEE, EXEGGUTOR, -1
.ni:       db NIDOKING, NIDOQUEEN, NIDORAN_M, NIDORAN_F, NIDORINA, NIDORINO, MEOWTH, SNEASEL, POLIWHIRL, POLITOED, POLIWRATH, POLIWAG, -1
.nu:       db QUAGSIRE, -1
.ne:       db NATU, XATU, -1
.no:       db DUNSPARCE, -1
.ha_ba_pa: db SEEL, STEELIX, TYPHLOSION, DRAGONAIR, TOUCANNON, SCIZOR, LITWICK, KINGDRA, PARAS, PARASECT, QWILFISH, MR__MIME, TANGROWTH, TOXAPEX, MISMAGIUS, -1
.hi_bi_pi: db CLEFFA, LILLIPUP, PIKACHU, CLEFABLE, SCOLIPEDE, WHIRLIPEDE, PICHU, CLEFAIRY, TEPIG, STARYU, CYNDAQUIL, SUNKERN, TEDDIURSA, VOLTORB, -1
.fu_bu_pu: db MOLTRES, FLAREON, ALAKAZAM, MAGMAR, FORRETRESS, WIGGLYTUFF, DARTRIX, ROWLET, DECIDUEYE, AERODACTYL, MUNCHLAX, IGGLYBUFF, UMBREON, ARTICUNO, JIGGLYPUFF, SNUBBULL, -1
.he_be_pe: db BAYLEEF, GRIMER, MUK, HERACROSS, MAGNEZONE, PERSIAN, LICKITUNG, -1
.ho_bo_po: db POLITOED, HOOTHOOT, VENIPEDE, PONYTA, LAMPENT, PORYGON, SMOOCHUM, -1
.ma:       db MAGCARGO, SLUGMA, QUILAVA, BELLSPROUT, WEEZING, MARILL, AZUMARILL, ELECTRODE, MANKEY, SYLVEON, -1
.mi:       db DRATINI, MEW, MEWTWO, MIME__JR, -1
.mu:       db MISDREAVUS, HAPPINY, -1
.me:       db MEGANIUM, DITTO, TENTACOOL, MAREEP, -1
.mo:       db FLAAFFY, VENOMOTH, TANGELA, -1
.ya:       db SLOWKING, SLOWBRO, SLOWPOKE, MURKROW, YANMA, -1
.yu:       db KADABRA, -1
.yo:       db WEAVILE, NOCTOWL, -1
.ra:       db YANMEGA, RAICHU, CHANSEY, RIBOMBEE, LAPRAS, PETILIL, LANTURN, -1
.ri:       db PIGNITE, EMBOAR, URSARING, -1
.ru:       db JYNX, GLACEON, -1
.re:       db MAGNETON, ESCAVALIER, KARRABLAST, -1
.ro:       db VULPIX, -1
.wa:       db CHANDELURE, TOTODILE, MACHOP ;, -1
.end:      db -1
