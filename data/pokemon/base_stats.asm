; used in data/pokemon/base_stats/*.asm
MACRO tmhm
	; initialize bytes to 0
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		DEF _tm{d:n} = 0
	endr
	; set bits of bytes
	rept _NARG
		if DEF(\1_TMNUM)
		DEF n = (\1_TMNUM - 1) / 8
		DEF i = (\1_TMNUM - 1) % 8
		DEF _tm{d:n} |= 1 << i
		else
			fail "\1 is not a TM, HM, or tutor move"
		endc
		shift
	endr
	; output bytes
	for n, (NUM_TM_HM_TUTOR + 7) / 8
		db _tm{d:n}
	endr
ENDM

BaseData::
	table_width BASE_DATA_SIZE, BaseData
INCLUDE "data/pokemon/base_stats/spirrip.asm"
INCLUDE "data/pokemon/base_stats/doomstone.asm"
INCLUDE "data/pokemon/base_stats/cryptiid.asm"
INCLUDE "data/pokemon/base_stats/litwick.asm"
INCLUDE "data/pokemon/base_stats/lampent.asm"
INCLUDE "data/pokemon/base_stats/chandelure.asm"
INCLUDE "data/pokemon/base_stats/rookidee.asm"
INCLUDE "data/pokemon/base_stats/corvisquire.asm"
INCLUDE "data/pokemon/base_stats/corviknight.asm"
INCLUDE "data/pokemon/base_stats/farfetchd.asm"
INCLUDE "data/pokemon/base_stats/luxwan.asm"
INCLUDE "data/pokemon/base_stats/sirfetchd.asm"
INCLUDE "data/pokemon/base_stats/yungoos.asm"
INCLUDE "data/pokemon/base_stats/gumshoos.asm"
INCLUDE "data/pokemon/base_stats/wooloo.asm"
INCLUDE "data/pokemon/base_stats/dubwool.asm"
INCLUDE "data/pokemon/base_stats/yamper.asm"
INCLUDE "data/pokemon/base_stats/boltund.asm"
INCLUDE "data/pokemon/base_stats/emolga.asm"
INCLUDE "data/pokemon/base_stats/grubbin.asm"
INCLUDE "data/pokemon/base_stats/charjabug.asm"
INCLUDE "data/pokemon/base_stats/vikavolt.asm"
INCLUDE "data/pokemon/base_stats/blipbug.asm"
INCLUDE "data/pokemon/base_stats/dottler.asm"
INCLUDE "data/pokemon/base_stats/orbeetle.asm"
INCLUDE "data/pokemon/base_stats/sizzlipede.asm"
INCLUDE "data/pokemon/base_stats/centiskorch.asm"
INCLUDE "data/pokemon/base_stats/snom.asm"
INCLUDE "data/pokemon/base_stats/frosmoth.asm"
INCLUDE "data/pokemon/base_stats/aron.asm"
INCLUDE "data/pokemon/base_stats/lairon.asm"
INCLUDE "data/pokemon/base_stats/aggron.asm"
INCLUDE "data/pokemon/base_stats/noibat.asm"
INCLUDE "data/pokemon/base_stats/noivern.asm"
INCLUDE "data/pokemon/base_stats/woobat.asm"
INCLUDE "data/pokemon/base_stats/swoobat.asm"
INCLUDE "data/pokemon/base_stats/ralts.asm"
INCLUDE "data/pokemon/base_stats/kirlia.asm"
INCLUDE "data/pokemon/base_stats/gardevoir.asm"
INCLUDE "data/pokemon/base_stats/gallade.asm"
INCLUDE "data/pokemon/base_stats/hatenna.asm"
INCLUDE "data/pokemon/base_stats/hattrem.asm"
INCLUDE "data/pokemon/base_stats/hatterene.asm"
INCLUDE "data/pokemon/base_stats/zigzagoon.asm"
INCLUDE "data/pokemon/base_stats/linoone.asm"
INCLUDE "data/pokemon/base_stats/obstagoon.asm"
INCLUDE "data/pokemon/base_stats/mudbray.asm"
INCLUDE "data/pokemon/base_stats/mudsdale.asm"
INCLUDE "data/pokemon/base_stats/deerling.asm"
INCLUDE "data/pokemon/base_stats/sawsbuck.asm"
INCLUDE "data/pokemon/base_stats/rockruff.asm"
INCLUDE "data/pokemon/base_stats/lycanroc_midday.asm"
INCLUDE "data/pokemon/base_stats/lycanroc_dusk.asm"
INCLUDE "data/pokemon/base_stats/lycanroc_midnight.asm"
INCLUDE "data/pokemon/base_stats/barboach.asm"
INCLUDE "data/pokemon/base_stats/whiscash.asm"
INCLUDE "data/pokemon/base_stats/gastly.asm"
INCLUDE "data/pokemon/base_stats/haunter.asm"
INCLUDE "data/pokemon/base_stats/gengar.asm"
INCLUDE "data/pokemon/base_stats/mega_gengar.asm"
INCLUDE "data/pokemon/base_stats/unown.asm"
INCLUDE "data/pokemon/base_stats/dwebble.asm"
INCLUDE "data/pokemon/base_stats/crustle.asm"
INCLUDE "data/pokemon/base_stats/lotad.asm"
INCLUDE "data/pokemon/base_stats/lombre.asm"
INCLUDE "data/pokemon/base_stats/ludicolo.asm"
INCLUDE "data/pokemon/base_stats/hoppip.asm"
INCLUDE "data/pokemon/base_stats/skiploom.asm"
INCLUDE "data/pokemon/base_stats/jumpluff.asm"
INCLUDE "data/pokemon/base_stats/morelull.asm"
INCLUDE "data/pokemon/base_stats/shiinotic.asm"
INCLUDE "data/pokemon/base_stats/alomomola.asm"
INCLUDE "data/pokemon/base_stats/spheal.asm"
INCLUDE "data/pokemon/base_stats/sealeo.asm"
INCLUDE "data/pokemon/base_stats/walrein.asm"
INCLUDE "data/pokemon/base_stats/dewpider.asm"
INCLUDE "data/pokemon/base_stats/araquanid.asm"
INCLUDE "data/pokemon/base_stats/mareanie.asm"
INCLUDE "data/pokemon/base_stats/toxapex.asm"
INCLUDE "data/pokemon/base_stats/beldum.asm"
INCLUDE "data/pokemon/base_stats/metang.asm"
INCLUDE "data/pokemon/base_stats/metagross.asm"
INCLUDE "data/pokemon/base_stats/larvesta.asm"
INCLUDE "data/pokemon/base_stats/volcarona.asm"
INCLUDE "data/pokemon/base_stats/shroomish.asm"
INCLUDE "data/pokemon/base_stats/breloom.asm"
INCLUDE "data/pokemon/base_stats/munna.asm"
INCLUDE "data/pokemon/base_stats/musharna.asm"
INCLUDE "data/pokemon/base_stats/solosis.asm"
INCLUDE "data/pokemon/base_stats/duosion.asm"
INCLUDE "data/pokemon/base_stats/reuniclus.asm"
INCLUDE "data/pokemon/base_stats/ditto.asm"
INCLUDE "data/pokemon/base_stats/trubbish.asm"
INCLUDE "data/pokemon/base_stats/garbodor.asm"
INCLUDE "data/pokemon/base_stats/salandit.asm"
INCLUDE "data/pokemon/base_stats/salazzle.asm"
INCLUDE "data/pokemon/base_stats/stunky.asm"
INCLUDE "data/pokemon/base_stats/skuntank.asm"
INCLUDE "data/pokemon/base_stats/grenmar.asm"
INCLUDE "data/pokemon/base_stats/yanma.asm"
INCLUDE "data/pokemon/base_stats/yanmega.asm"
INCLUDE "data/pokemon/base_stats/cherubi.asm"
INCLUDE "data/pokemon/base_stats/cherrim.asm"
INCLUDE "data/pokemon/base_stats/bounsweet.asm"
INCLUDE "data/pokemon/base_stats/steenee.asm"
INCLUDE "data/pokemon/base_stats/tsareena.asm"
INCLUDE "data/pokemon/base_stats/bouffalant.asm"
INCLUDE "data/pokemon/base_stats/fomantis.asm"
INCLUDE "data/pokemon/base_stats/lurantis.asm"
INCLUDE "data/pokemon/base_stats/scyther.asm"
INCLUDE "data/pokemon/base_stats/scizor.asm"
INCLUDE "data/pokemon/base_stats/kleavor.asm"
INCLUDE "data/pokemon/base_stats/heracross.asm"
INCLUDE "data/pokemon/base_stats/combee.asm"
INCLUDE "data/pokemon/base_stats/vespiquen.asm"
INCLUDE "data/pokemon/base_stats/koffing.asm"
INCLUDE "data/pokemon/base_stats/weezing.asm"
INCLUDE "data/pokemon/base_stats/grimer.asm"
INCLUDE "data/pokemon/base_stats/muk.asm"
INCLUDE "data/pokemon/base_stats/espurr.asm"
INCLUDE "data/pokemon/base_stats/meowstic_m.asm"
INCLUDE "data/pokemon/base_stats/meowstic_f.asm"
INCLUDE "data/pokemon/base_stats/purrloin.asm"
INCLUDE "data/pokemon/base_stats/liepard.asm"
INCLUDE "data/pokemon/base_stats/skitty.asm"
INCLUDE "data/pokemon/base_stats/delcatty.asm"
INCLUDE "data/pokemon/base_stats/litleo.asm"
INCLUDE "data/pokemon/base_stats/pyroar.asm"
INCLUDE "data/pokemon/base_stats/growlithe.asm"
INCLUDE "data/pokemon/base_stats/arcanine.asm"
INCLUDE "data/pokemon/base_stats/stantler.asm"
INCLUDE "data/pokemon/base_stats/wyrdeer.asm"
INCLUDE "data/pokemon/base_stats/chatot.asm"
INCLUDE "data/pokemon/base_stats/drilbur.asm"
INCLUDE "data/pokemon/base_stats/excadrill.asm"
INCLUDE "data/pokemon/base_stats/makuhita.asm"
INCLUDE "data/pokemon/base_stats/hariyama.asm"
INCLUDE "data/pokemon/base_stats/meowth.asm"
INCLUDE "data/pokemon/base_stats/perrserker.asm"
INCLUDE "data/pokemon/base_stats/chomp.asm"
INCLUDE "data/pokemon/base_stats/regimagma.asm"
INCLUDE "data/pokemon/base_stats/croagunk.asm"
INCLUDE "data/pokemon/base_stats/toxicroak.asm"
INCLUDE "data/pokemon/base_stats/clobbopus.asm"
INCLUDE "data/pokemon/base_stats/grapploct.asm"
INCLUDE "data/pokemon/base_stats/jangmo_o.asm"
INCLUDE "data/pokemon/base_stats/hakamo_o.asm"
INCLUDE "data/pokemon/base_stats/kommo_o.asm"
INCLUDE "data/pokemon/base_stats/lillipup.asm"
INCLUDE "data/pokemon/base_stats/herdier.asm"
INCLUDE "data/pokemon/base_stats/stoutland.asm"
INCLUDE "data/pokemon/base_stats/salandit2.asm"
INCLUDE "data/pokemon/base_stats/salazzle2.asm"
INCLUDE "data/pokemon/base_stats/tyker.asm"
INCLUDE "data/pokemon/base_stats/straigar.asm"
INCLUDE "data/pokemon/base_stats/tympole.asm"
INCLUDE "data/pokemon/base_stats/palpitoad.asm"
INCLUDE "data/pokemon/base_stats/seismitoad.asm"
INCLUDE "data/pokemon/base_stats/pikipek.asm"
INCLUDE "data/pokemon/base_stats/trumbeak.asm"
INCLUDE "data/pokemon/base_stats/toucannon.asm"
INCLUDE "data/pokemon/base_stats/heatmor.asm"
INCLUDE "data/pokemon/base_stats/molambino.asm"
INCLUDE "data/pokemon/base_stats/angore.asm"
INCLUDE "data/pokemon/base_stats/clauncher.asm"
INCLUDE "data/pokemon/base_stats/clawitzer.asm"
INCLUDE "data/pokemon/base_stats/buizel.asm"
INCLUDE "data/pokemon/base_stats/floatzel.asm"
INCLUDE "data/pokemon/base_stats/shellos.asm"
INCLUDE "data/pokemon/base_stats/gastrodon.asm"
INCLUDE "data/pokemon/base_stats/finneon.asm"
INCLUDE "data/pokemon/base_stats/lumineon.asm"
INCLUDE "data/pokemon/base_stats/tirtouga.asm"
INCLUDE "data/pokemon/base_stats/carracosta.asm"
INCLUDE "data/pokemon/base_stats/chinchou.asm"
INCLUDE "data/pokemon/base_stats/lanturn.asm"
INCLUDE "data/pokemon/base_stats/burgela.asm"
INCLUDE "data/pokemon/base_stats/tangela.asm"
INCLUDE "data/pokemon/base_stats/tangrowth.asm"
INCLUDE "data/pokemon/base_stats/jungela.asm"
INCLUDE "data/pokemon/base_stats/eevee.asm"
INCLUDE "data/pokemon/base_stats/vaporeon.asm"
INCLUDE "data/pokemon/base_stats/jolteon.asm"
INCLUDE "data/pokemon/base_stats/flareon.asm"
INCLUDE "data/pokemon/base_stats/espeon.asm"
INCLUDE "data/pokemon/base_stats/umbreon.asm"
INCLUDE "data/pokemon/base_stats/glaceon.asm"
INCLUDE "data/pokemon/base_stats/leafeon.asm"
INCLUDE "data/pokemon/base_stats/sylveon.asm"
INCLUDE "data/pokemon/base_stats/buzzeon.asm"
INCLUDE "data/pokemon/base_stats/durant.asm"
INCLUDE "data/pokemon/base_stats/swinub.asm"
INCLUDE "data/pokemon/base_stats/piloswine.asm"
INCLUDE "data/pokemon/base_stats/mamoswine.asm"
INCLUDE "data/pokemon/base_stats/teddiursa.asm"
INCLUDE "data/pokemon/base_stats/ursaring.asm"
INCLUDE "data/pokemon/base_stats/ursaluna.asm"
INCLUDE "data/pokemon/base_stats/snover.asm"
INCLUDE "data/pokemon/base_stats/abomasnow.asm"
INCLUDE "data/pokemon/base_stats/skarmory.asm"
INCLUDE "data/pokemon/base_stats/blitzle.asm"
INCLUDE "data/pokemon/base_stats/zebstrika.asm"
INCLUDE "data/pokemon/base_stats/ponyta.asm"
INCLUDE "data/pokemon/base_stats/rapidash.asm"
INCLUDE "data/pokemon/base_stats/sandygast.asm"
INCLUDE "data/pokemon/base_stats/palossand.asm"
INCLUDE "data/pokemon/base_stats/stufful.asm"
INCLUDE "data/pokemon/base_stats/bewear.asm"
INCLUDE "data/pokemon/base_stats/oricorio_baile.asm"
INCLUDE "data/pokemon/base_stats/oricorio_pom.asm"
INCLUDE "data/pokemon/base_stats/houndour.asm"
INCLUDE "data/pokemon/base_stats/houndoom.asm"
INCLUDE "data/pokemon/base_stats/oricorio_pau.asm"
INCLUDE "data/pokemon/base_stats/oricorio_sensu.asm"
INCLUDE "data/pokemon/base_stats/oranguru.asm"
INCLUDE "data/pokemon/base_stats/misdreavus.asm"
INCLUDE "data/pokemon/base_stats/mismagius.asm"
INCLUDE "data/pokemon/base_stats/porygon.asm"
INCLUDE "data/pokemon/base_stats/porygon2.asm"
INCLUDE "data/pokemon/base_stats/porygon_z.asm"
INCLUDE "data/pokemon/base_stats/lapras.asm"
INCLUDE "data/pokemon/base_stats/amaura.asm"
INCLUDE "data/pokemon/base_stats/aurorus.asm"
INCLUDE "data/pokemon/base_stats/minior_meteor.asm"
INCLUDE "data/pokemon/base_stats/minior_core.asm"
INCLUDE "data/pokemon/base_stats/drampa.asm"
INCLUDE "data/pokemon/base_stats/snorlax.asm"
INCLUDE "data/pokemon/base_stats/mawile.asm"
INCLUDE "data/pokemon/base_stats/mega_mawile.asm"
INCLUDE "data/pokemon/base_stats/skrelp.asm"
INCLUDE "data/pokemon/base_stats/dragalge.asm"
INCLUDE "data/pokemon/base_stats/dreepy.asm"
INCLUDE "data/pokemon/base_stats/drakloak.asm"
INCLUDE "data/pokemon/base_stats/dragapult.asm"
INCLUDE "data/pokemon/base_stats/bruxish.asm"
INCLUDE "data/pokemon/base_stats/exeggcute.asm"
INCLUDE "data/pokemon/base_stats/exeggutor.asm"
INCLUDE "data/pokemon/base_stats/suicune.asm"
INCLUDE "data/pokemon/base_stats/applin.asm"
INCLUDE "data/pokemon/base_stats/flapple.asm"
INCLUDE "data/pokemon/base_stats/appletun.asm"
INCLUDE "data/pokemon/base_stats/larvitar.asm"
INCLUDE "data/pokemon/base_stats/pupitar.asm"
INCLUDE "data/pokemon/base_stats/tyranitar.asm"
INCLUDE "data/pokemon/base_stats/zacian.asm"
INCLUDE "data/pokemon/base_stats/mewthree.asm"
INCLUDE "data/pokemon/base_stats/poppy.asm"
INCLUDE "data/pokemon/base_stats/daisy.asm"
INCLUDE "data/pokemon/base_stats/boomer.asm"
INCLUDE "data/pokemon/base_stats/kirby.asm"
INCLUDE "data/pokemon/base_stats/m_block.asm"
INCLUDE "data/pokemon/base_stats/bad_egg.asm"
INCLUDE "data/pokemon/base_stats/furiousb.asm"
	assert_table_length NUM_POKEMON
