evs: MACRO
	db (\1 << 6) | (\2 << 4) | (\3 << 2) | \4
	db (\5 << 6) | (\6 << 4)
ENDM

tmhm: MACRO
; used in data/pokemon/base_stats/*.asm
_tms1 = 0 ; TM01-TM24 (24)
_tms2 = 0 ; TM25-TM48 (24)
_tms3 = 0 ; TM49-TM70 + HM01 + MT01 (24/24)
_tms4 = 0 ; MT02 - MT16 (15/16)
rept _NARG
	if DEF(\1_TMNUM)
	if \1_TMNUM < 24 + 1
_tms1 = _tms1 | (1 << ((\1_TMNUM) - 1))
	elif \1_TMNUM < 48 + 1
_tms2 = _tms2 | (1 << ((\1_TMNUM) - 1 - 24))
	elif \1_TMNUM < 72 + 1
_tms3 = _tms3 | (1 << ((\1_TMNUM) - 1 - 48))
	else
_tms4 = _tms4 | (1 << ((\1_TMNUM) - 1 - 72))
	endc
	else
		fail "\1 is not a TM, HM, or move tutor move"
	endc
	shift
endr
rept 3 ; TM01-TM24 (24/24)
	db _tms1 & $ff
_tms1 = _tms1 >> 8
endr
rept 3 ; TM25-TM48 (24/24)
	db _tms2 & $ff
_tms2 = _tms2 >> 8
endr
rept 3 ; TM49-TM70 + HM01 + MT01 (24/24)
	db _tms3 & $ff
_tms3 = _tms3 >> 8
endr
rept 2 ; MT02 - MT16 (15/16)
	db _tms4 & $ff
_tms4 = _tms4 >> 8
endr
ENDM

BaseData::
	; the parameter to indirect_table must be a compile-time constant, and BASE_DATA_SIZE is not
	if ((__RGBDS_MAJOR__ << 24) | (__RGBDS_MINOR__ << 8) | __RGBDS_PATCH__) >= $400
		; if this version of RGBDS supports asserts, just assert that the size is correct
		assert $1f == BASE_DATA_SIZE, "Please adjust the table size (and this assertion) to match BASE_DATA_SIZE"
	endc
	indirect_table $1f, 1
	indirect_entries HOOTHOOT, BaseData1
	indirect_entries NUM_POKEMON, BaseData2
	indirect_table_end

BaseData1:
INCLUDE "data/pokemon/base_stats/rowlet.asm"
INCLUDE "data/pokemon/base_stats/dartrix.asm"
INCLUDE "data/pokemon/base_stats/decidueye.asm"
INCLUDE "data/pokemon/base_stats/tepig.asm"
INCLUDE "data/pokemon/base_stats/pignite.asm"
INCLUDE "data/pokemon/base_stats/emboar.asm"
INCLUDE "data/pokemon/base_stats/mudkip.asm"
INCLUDE "data/pokemon/base_stats/marshtomp.asm"
INCLUDE "data/pokemon/base_stats/swampert.asm"
INCLUDE "data/pokemon/base_stats/pikipek.asm"
INCLUDE "data/pokemon/base_stats/trumbeak.asm"
INCLUDE "data/pokemon/base_stats/toucannon.asm"
INCLUDE "data/pokemon/base_stats/lillipup.asm"
INCLUDE "data/pokemon/base_stats/herdier.asm"
INCLUDE "data/pokemon/base_stats/stoutland.asm"
INCLUDE "data/pokemon/base_stats/venipede.asm"
INCLUDE "data/pokemon/base_stats/whirlipede.asm"
INCLUDE "data/pokemon/base_stats/scolipede.asm"
INCLUDE "data/pokemon/base_stats/cutiefly.asm"
INCLUDE "data/pokemon/base_stats/ribombee.asm"
INCLUDE "data/pokemon/base_stats/spearow.asm"
INCLUDE "data/pokemon/base_stats/fearow.asm"
INCLUDE "data/pokemon/base_stats/ekans.asm"
INCLUDE "data/pokemon/base_stats/arbok.asm"
INCLUDE "data/pokemon/base_stats/pikachu.asm"
INCLUDE "data/pokemon/base_stats/raichu.asm"
INCLUDE "data/pokemon/base_stats/drilbur.asm"
INCLUDE "data/pokemon/base_stats/excadrill.asm"
INCLUDE "data/pokemon/base_stats/sewaddle.asm"
INCLUDE "data/pokemon/base_stats/swadloon.asm"
INCLUDE "data/pokemon/base_stats/leavanny.asm"
INCLUDE "data/pokemon/base_stats/nidoran_m.asm"
INCLUDE "data/pokemon/base_stats/nidorino.asm"
INCLUDE "data/pokemon/base_stats/nidoking.asm"
INCLUDE "data/pokemon/base_stats/cleffa.asm"
INCLUDE "data/pokemon/base_stats/clefairy.asm"
INCLUDE "data/pokemon/base_stats/clefable.asm"
INCLUDE "data/pokemon/base_stats/vulpix.asm"
INCLUDE "data/pokemon/base_stats/ninetales.asm"
INCLUDE "data/pokemon/base_stats/igglybuff.asm"
INCLUDE "data/pokemon/base_stats/jigglypuff.asm"
INCLUDE "data/pokemon/base_stats/wigglytuff.asm"
INCLUDE "data/pokemon/base_stats/zubat.asm"
INCLUDE "data/pokemon/base_stats/golbat.asm"
INCLUDE "data/pokemon/base_stats/crobat.asm"
INCLUDE "data/pokemon/base_stats/cottonee.asm"
INCLUDE "data/pokemon/base_stats/whimsicott.asm"
INCLUDE "data/pokemon/base_stats/petilil.asm"
INCLUDE "data/pokemon/base_stats/lilligant.asm"
INCLUDE "data/pokemon/base_stats/joltik.asm"
INCLUDE "data/pokemon/base_stats/galvantula.asm"
INCLUDE "data/pokemon/base_stats/minccino.asm"
INCLUDE "data/pokemon/base_stats/cinccino.asm"
INCLUDE "data/pokemon/base_stats/sandygast.asm"
INCLUDE "data/pokemon/base_stats/palossand.asm"
INCLUDE "data/pokemon/base_stats/purrloin.asm"
INCLUDE "data/pokemon/base_stats/liepard.asm"
INCLUDE "data/pokemon/base_stats/psyduck.asm"
INCLUDE "data/pokemon/base_stats/golduck.asm"
INCLUDE "data/pokemon/base_stats/mankey.asm"
INCLUDE "data/pokemon/base_stats/primeape.asm"
INCLUDE "data/pokemon/base_stats/annihilape.asm"
INCLUDE "data/pokemon/base_stats/growlithe.asm"
INCLUDE "data/pokemon/base_stats/arcanine.asm"
INCLUDE "data/pokemon/base_stats/poliwag.asm"
INCLUDE "data/pokemon/base_stats/poliwhirl.asm"
INCLUDE "data/pokemon/base_stats/poliwrath.asm"
INCLUDE "data/pokemon/base_stats/politoed.asm"
INCLUDE "data/pokemon/base_stats/solosis.asm"
INCLUDE "data/pokemon/base_stats/duosion.asm"
INCLUDE "data/pokemon/base_stats/reuniclus.asm"
INCLUDE "data/pokemon/base_stats/timburr.asm"
INCLUDE "data/pokemon/base_stats/gurdurr.asm"
INCLUDE "data/pokemon/base_stats/conkeldurr.asm"
INCLUDE "data/pokemon/base_stats/bellsprout.asm"
INCLUDE "data/pokemon/base_stats/weepinbell.asm"
INCLUDE "data/pokemon/base_stats/victreebel.asm"
INCLUDE "data/pokemon/base_stats/tentacool.asm"
INCLUDE "data/pokemon/base_stats/tentacruel.asm"
INCLUDE "data/pokemon/base_stats/geodude.asm"
INCLUDE "data/pokemon/base_stats/graveler.asm"
INCLUDE "data/pokemon/base_stats/golem.asm"
INCLUDE "data/pokemon/base_stats/ponyta.asm"
INCLUDE "data/pokemon/base_stats/rapidash.asm"
INCLUDE "data/pokemon/base_stats/slowpoke.asm"
INCLUDE "data/pokemon/base_stats/slowbro.asm"
INCLUDE "data/pokemon/base_stats/slowking.asm"
INCLUDE "data/pokemon/base_stats/magnemite.asm"
INCLUDE "data/pokemon/base_stats/magneton.asm"
INCLUDE "data/pokemon/base_stats/magnezone.asm"
INCLUDE "data/pokemon/base_stats/farfetch_d.asm"
INCLUDE "data/pokemon/base_stats/sirfetch_d.asm"
INCLUDE "data/pokemon/base_stats/doduo.asm"
INCLUDE "data/pokemon/base_stats/dodrio.asm"
INCLUDE "data/pokemon/base_stats/seel.asm"
INCLUDE "data/pokemon/base_stats/dewgong.asm"
INCLUDE "data/pokemon/base_stats/grimer.asm"
INCLUDE "data/pokemon/base_stats/muk.asm"
INCLUDE "data/pokemon/base_stats/mareanie.asm"
INCLUDE "data/pokemon/base_stats/toxapex.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/onix.asm"
INCLUDE "data/pokemon/base_stats/steelix.asm"
INCLUDE "data/pokemon/base_stats/drowzee.asm"
INCLUDE "data/pokemon/base_stats/hypno.asm"
INCLUDE "data/pokemon/base_stats/corphish.asm"
INCLUDE "data/pokemon/base_stats/crawdaunt.asm"
INCLUDE "data/pokemon/base_stats/voltorb.asm"
INCLUDE "data/pokemon/base_stats/electrode.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/cubone.asm"
INCLUDE "data/pokemon/base_stats/marowak.asm"
INCLUDE "data/pokemon/base_stats/scraggy.asm"
INCLUDE "data/pokemon/base_stats/scrafty.asm"
INCLUDE "data/pokemon/base_stats/riolu.asm"
INCLUDE "data/pokemon/base_stats/lucario.asm"
INCLUDE "data/pokemon/base_stats/lickitung.asm"
INCLUDE "data/pokemon/base_stats/lickilicky.asm"
INCLUDE "data/pokemon/base_stats/koffing.asm"
INCLUDE "data/pokemon/base_stats/weezing.asm"
INCLUDE "data/pokemon/base_stats/rhyhorn.asm"
INCLUDE "data/pokemon/base_stats/rhydon.asm"
INCLUDE "data/pokemon/base_stats/rhyperior.asm"
INCLUDE "data/pokemon/base_stats/happiny.asm"
INCLUDE "data/pokemon/base_stats/chansey.asm"
INCLUDE "data/pokemon/base_stats/blissey.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/kangaskhan.asm"
INCLUDE "data/pokemon/base_stats/horsea.asm"
INCLUDE "data/pokemon/base_stats/seadra.asm"
INCLUDE "data/pokemon/base_stats/kingdra.asm"
INCLUDE "data/pokemon/base_stats/goldeen.asm"
INCLUDE "data/pokemon/base_stats/seaking.asm"
INCLUDE "data/pokemon/base_stats/staryu.asm"
INCLUDE "data/pokemon/base_stats/starmie.asm"
INCLUDE "data/pokemon/base_stats/mimejr.asm"
INCLUDE "data/pokemon/base_stats/mr__mime.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/smoochum.asm"
INCLUDE "data/pokemon/base_stats/jynx.asm"
INCLUDE "data/pokemon/base_stats/elekid.asm"
INCLUDE "data/pokemon/base_stats/electabuzz.asm"
INCLUDE "data/pokemon/base_stats/electivire.asm"
INCLUDE "data/pokemon/base_stats/magby.asm"
INCLUDE "data/pokemon/base_stats/magmar.asm"
INCLUDE "data/pokemon/base_stats/magmortar.asm"
INCLUDE "data/pokemon/base_stats/pinsir.asm"
INCLUDE "data/pokemon/base_stats/tauros.asm"
INCLUDE "data/pokemon/base_stats/magikarp.asm"
INCLUDE "data/pokemon/base_stats/gyarados.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/sylveon.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/porygon_z.asm"
INCLUDE "data/pokemon/base_stats/tirtouga.asm"
INCLUDE "data/pokemon/base_stats/carracosta.asm"
INCLUDE "data/pokemon/base_stats/archen.asm"
INCLUDE "data/pokemon/base_stats/archeops.asm"
INCLUDE "data/pokemon/base_stats/aerodactyl.asm"
INCLUDE "data/pokemon/base_stats/munchlax.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/articuno.asm"
INCLUDE "data/pokemon/base_stats/zapdos.asm"
INCLUDE "data/pokemon/base_stats/moltres.asm"
INCLUDE "data/pokemon/base_stats/dratini.asm"
INCLUDE "data/pokemon/base_stats/dragonair.asm"
INCLUDE "data/pokemon/base_stats/dragonite.asm"
INCLUDE "data/pokemon/base_stats/mewtwo.asm"
INCLUDE "data/pokemon/base_stats/mew.asm"
INCLUDE "data/pokemon/base_stats/chikorita.asm"
INCLUDE "data/pokemon/base_stats/bayleef.asm"
INCLUDE "data/pokemon/base_stats/meganium.asm"
INCLUDE "data/pokemon/base_stats/cyndaquil.asm"
INCLUDE "data/pokemon/base_stats/quilava.asm"
INCLUDE "data/pokemon/base_stats/typhlosion.asm"
INCLUDE "data/pokemon/base_stats/totodile.asm"
INCLUDE "data/pokemon/base_stats/croconaw.asm"
INCLUDE "data/pokemon/base_stats/feraligatr.asm"
INCLUDE "data/pokemon/base_stats/sentret.asm"
INCLUDE "data/pokemon/base_stats/furret.asm"
INCLUDE "data/pokemon/base_stats/hoothoot.asm"
