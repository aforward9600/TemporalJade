INCLUDE "constants.asm"


; PokemonPicPointers and UnownPicPointers are assumed to start at the same
; address, but in different banks. This is enforced in pokecrystal.link.


SECTION "Pic Pointers", ROMX

INCLUDE "data/pokemon/pic_pointers.asm"


SECTION "Unown Pic Pointers", ROMX

INCLUDE "data/pokemon/unown_pic_pointers.asm"


SECTION "Trainer Pic Pointers", ROMX

INCLUDE "data/trainers/pic_pointers.asm"


SECTION "Ho-Oh Front", ROMX

HoOhFrontpic:        INCBIN "gfx/pokemon/ho_oh/front.animated.2bpp.lz"

SECTION "Conkeldurr Front", ROMX

ConkeldurrFrontpic:     INCBIN "gfx/pokemon/conkeldurr/front.animated.2bpp.lz"

SECTION "Ninetales Front", ROMX

NinetalesFrontpic:   INCBIN "gfx/pokemon/ninetales/front.animated.2bpp.lz"

SECTION "Feraligatr Front", ROMX

FeraligatrFrontpic:  INCBIN "gfx/pokemon/feraligatr/front.animated.2bpp.lz"

SECTION "Runerigus Front", ROMX

RunerigusFrontpic:    INCBIN "gfx/pokemon/runerigus/front.animated.2bpp.lz"

SECTION "Fraxure Front", ROMX

FraxureFrontpic:     INCBIN "gfx/pokemon/fraxure/front.animated.2bpp.lz"

SECTION "Lugia Front", ROMX

LugiaFrontpic:       INCBIN "gfx/pokemon/lugia/front.animated.2bpp.lz"

SECTION "Articuno Front", ROMX

ArticunoFrontpic:    INCBIN "gfx/pokemon/articuno/front.animated.2bpp.lz"

SECTION "Tauros Front", ROMX

TaurosFrontpic:      INCBIN "gfx/pokemon/tauros/front.animated.2bpp.lz"

SECTION "Decidueye Front", ROMX

DecidueyeFrontpic:    INCBIN "gfx/pokemon/decidueye/front.animated.2bpp.lz"

SECTION "Axew Front", ROMX

AxewFrontpic:         INCBIN "gfx/pokemon/axew/front.animated.2bpp.lz"


SECTION "Swampert Front", ROMX

SwampertFrontpic:   INCBIN "gfx/pokemon/swampert/front.animated.2bpp.lz"

SECTION "Rapidash Front", ROMX

RapidashFrontpic:    INCBIN "gfx/pokemon/rapidash/front.animated.2bpp.lz"

SECTION "Meganium Front", ROMX

MeganiumFrontpic:    INCBIN "gfx/pokemon/meganium/front.animated.2bpp.lz"

SECTION "Leavanny Front", ROMX

LeavannyFrontpic:    INCBIN "gfx/pokemon/leavanny/front.animated.2bpp.lz"

SECTION "Scrafty Front", ROMX

ScraftyFrontpic:   INCBIN "gfx/pokemon/scrafty/front.animated.2bpp.lz"

SECTION "Scizor Front", ROMX

ScizorFrontpic:      INCBIN "gfx/pokemon/scizor/front.animated.2bpp.lz"

SECTION "Stoutland Front", ROMX

StoutlandFrontpic:    INCBIN "gfx/pokemon/stoutland/front.animated.2bpp.lz"

SECTION "Arcanine Front", ROMX

ArcanineFrontpic:    INCBIN "gfx/pokemon/arcanine/front.animated.2bpp.lz"

SECTION "Tyranitar Front", ROMX

TyranitarFrontpic:   INCBIN "gfx/pokemon/tyranitar/front.animated.2bpp.lz"

SECTION "Zapdos Front", ROMX

ZapdosFrontpic:      INCBIN "gfx/pokemon/zapdos/front.animated.2bpp.lz"

SECTION "Arbok Front", ROMX

ArbokFrontpic:       INCBIN "gfx/pokemon/arbok/front.animated.2bpp.lz"

SECTION "Mewtwo Front", ROMX

MewtwoFrontpic:      INCBIN "gfx/pokemon/mewtwo/front.animated.2bpp.lz"

SECTION "Fearow Front", ROMX

FearowFrontpic:      INCBIN "gfx/pokemon/fearow/front.animated.2bpp.lz"

SECTION "Emboar Front", ROMX

EmboarFrontpic:   INCBIN "gfx/pokemon/emboar/front.animated.2bpp.lz"

SECTION "Quilava Front", ROMX

QuilavaFrontpic:     INCBIN "gfx/pokemon/quilava/front.animated.2bpp.lz"


SECTION "Steelix Front", ROMX

SteelixFrontpic:     INCBIN "gfx/pokemon/steelix/front.animated.2bpp.lz"

SECTION "Reuniclus Front", ROMX

ReuniclusFrontpic:    INCBIN "gfx/pokemon/reuniclus/front.animated.2bpp.lz"

SECTION "Gyarados Front", ROMX

GyaradosFrontpic:    INCBIN "gfx/pokemon/gyarados/front.animated.2bpp.lz"

SECTION "Kangaskhan Front", ROMX

KangaskhanFrontpic:  INCBIN "gfx/pokemon/kangaskhan/front.animated.2bpp.lz"

SECTION "Rhydon Front", ROMX

RhydonFrontpic:      INCBIN "gfx/pokemon/rhydon/front.animated.2bpp.lz"

SECTION "Golduck Front", ROMX

GolduckFrontpic:     INCBIN "gfx/pokemon/golduck/front.animated.2bpp.lz"

SECTION "Rhyhorn Front", ROMX

RhyhornFrontpic:     INCBIN "gfx/pokemon/rhyhorn/front.animated.2bpp.lz"

SECTION "Scolipede Front", ROMX

ScolipedeFrontpic:     INCBIN "gfx/pokemon/scolipede/front.animated.2bpp.lz"

SECTION "Slowbro Front", ROMX

SlowbroFrontpic:     INCBIN "gfx/pokemon/slowbro/front.animated.2bpp.lz"

SECTION "Butterfree Front", ROMX

ToucannonFrontpic:  INCBIN "gfx/pokemon/toucannon/front.animated.2bpp.lz"

SECTION "Weezing Front", ROMX

WeezingFrontpic:     INCBIN "gfx/pokemon/weezing/front.animated.2bpp.lz"

SECTION "Toxapex Front", ROMX

ToxapexFrontpic:    INCBIN "gfx/pokemon/toxapex/front.animated.2bpp.lz"

SECTION "Skarmory Front", ROMX

SkarmoryFrontpic:    INCBIN "gfx/pokemon/skarmory/front.animated.2bpp.lz"

SECTION "Dewgong Front", ROMX

DewgongFrontpic:     INCBIN "gfx/pokemon/dewgong/front.animated.2bpp.lz"

SECTION "Victreebel Front", ROMX

VictreebelFrontpic:  INCBIN "gfx/pokemon/victreebel/front.animated.2bpp.lz"

SECTION "Raichu Front", ROMX

RaichuFrontpic:      INCBIN "gfx/pokemon/raichu/front.animated.2bpp.lz"

SECTION "Primeape Front", ROMX

PrimeapeFrontpic:    INCBIN "gfx/pokemon/primeape/front.animated.2bpp.lz"

SECTION "Carracosta Front", ROMX

CarracostaBackpic:      INCBIN "gfx/pokemon/carracosta/back.2bpp.lz"


SECTION "Dodrio Front", ROMX

DodrioFrontpic:      INCBIN "gfx/pokemon/dodrio/front.animated.2bpp.lz"

SECTION "Slowking Front", ROMX

SlowkingFrontpic:    INCBIN "gfx/pokemon/slowking/front.animated.2bpp.lz"

SECTION "Lucario Front", ROMX

LucarioFrontpic:   INCBIN "gfx/pokemon/lucario/front.animated.2bpp.lz"

SECTION "Onix Front", ROMX

OnixFrontpic:        INCBIN "gfx/pokemon/onix/front.animated.2bpp.lz"

SECTION "Blissey Front", ROMX

BlisseyFrontpic:     INCBIN "gfx/pokemon/blissey/front.animated.2bpp.lz"

SECTION "Gurdurr Front", ROMX

GurdurrFrontpic:     INCBIN "gfx/pokemon/gurdurr/front.animated.2bpp.lz"

SECTION "Dragonite Front", ROMX

DragoniteFrontpic:   INCBIN "gfx/pokemon/dragonite/front.animated.2bpp.lz"

SECTION "Poliwrath Front", ROMX

PoliwrathFrontpic:   INCBIN "gfx/pokemon/poliwrath/front.animated.2bpp.lz"

SECTION "Scyther Front", ROMX

ScytherFrontpic:     INCBIN "gfx/pokemon/scyther/front.animated.2bpp.lz"

SECTION "Aerodactyl Front", ROMX

AerodactylFrontpic:  INCBIN "gfx/pokemon/aerodactyl/front.animated.2bpp.lz"

SECTION "Golurk Front", ROMX

GolurkFrontpic:      INCBIN "gfx/pokemon/golurk/front.animated.2bpp.lz"

SECTION "Muk Front", ROMX

MukFrontpic:         INCBIN "gfx/pokemon/muk/front.animated.2bpp.lz"

SECTION "Croconaw Front", ROMX

CroconawFrontpic:    INCBIN "gfx/pokemon/croconaw/front.animated.2bpp.lz"

SECTION "Hypno Front", ROMX

HypnoFrontpic:       INCBIN "gfx/pokemon/hypno/front.animated.2bpp.lz"

SECTION "Cofagrigus Front", ROMX

CofagrigusFrontpic:    INCBIN "gfx/pokemon/cofagrigus/front.animated.2bpp.lz"

SECTION "Excadrill Front", ROMX

ExcadrillFrontpic:   INCBIN "gfx/pokemon/excadrill/front.animated.2bpp.lz"

SECTION "Jolteon Front", ROMX

JolteonFrontpic:     INCBIN "gfx/pokemon/jolteon/front.animated.2bpp.lz"

SECTION "Donphan Front", ROMX

DonphanFrontpic:     INCBIN "gfx/pokemon/donphan/front.animated.2bpp.lz"

SECTION "Pinsir Front", ROMX

PinsirFrontpic:      INCBIN "gfx/pokemon/pinsir/front.animated.2bpp.lz"


SECTION "Golbat Front", ROMX

GolbatFrontpic:      INCBIN "gfx/pokemon/golbat/front.animated.2bpp.lz"

SECTION "Crawdaunt Front", ROMX

CrawdauntFrontpic:     INCBIN "gfx/pokemon/crawdaunt/front.animated.2bpp.lz"

SECTION "Exeggcute Front", ROMX

ExeggcuteFrontpic:   INCBIN "gfx/pokemon/exeggcute/front.animated.2bpp.lz"

SECTION "Magcargo Front", ROMX

MagcargoFrontpic:    INCBIN "gfx/pokemon/magcargo/front.animated.2bpp.lz"

SECTION "Liepard Front", ROMX

LiepardFrontpic:     INCBIN "gfx/pokemon/liepard/front.animated.2bpp.lz"

SECTION "Stantler Front", ROMX

StantlerFrontpic:    INCBIN "gfx/pokemon/stantler/front.animated.2bpp.lz"

SECTION "Ribombee Front", ROMX

RibombeeFrontpic:    INCBIN "gfx/pokemon/ribombee/front.animated.2bpp.lz"

SECTION "Cinccino Front", ROMX

CinccinoFrontpic:    INCBIN "gfx/pokemon/cinccino/front.animated.2bpp.lz"

SECTION "Politoed Front", ROMX

PolitoedFrontpic:    INCBIN "gfx/pokemon/politoed/front.animated.2bpp.lz"

SECTION "Electabuzz Front", ROMX

ElectabuzzFrontpic:  INCBIN "gfx/pokemon/electabuzz/front.animated.2bpp.lz"

SECTION "Volcarona Front", ROMX

VolcaronaFrontpic:     INCBIN "gfx/pokemon/volcarona/front.animated.2bpp.lz"

SECTION "Lickitung Front", ROMX

LickitungFrontpic:   INCBIN "gfx/pokemon/lickitung/front.animated.2bpp.lz"

SECTION "Kingdra Front", ROMX

KingdraFrontpic:     INCBIN "gfx/pokemon/kingdra/front.animated.2bpp.lz"

SECTION "Pignite Front", ROMX

PigniteFrontpic:  INCBIN "gfx/pokemon/pignite/front.animated.2bpp.lz"

SECTION "Duosion Front", ROMX

DuosionFrontpic:     INCBIN "gfx/pokemon/duosion/front.animated.2bpp.lz"

SECTION "Exeggutor Front", ROMX

ExeggutorFrontpic:   INCBIN "gfx/pokemon/exeggutor/front.animated.2bpp.lz"

SECTION "Azumarill Front", ROMX

AzumarillFrontpic:   INCBIN "gfx/pokemon/azumarill/front.animated.2bpp.lz"

SECTION "Galvantula Front", ROMX

GalvantulaFrontpic:    INCBIN "gfx/pokemon/galvantula/front.animated.2bpp.lz"

SECTION "Mr Mime Front", ROMX

MrMimeFrontpic:      INCBIN "gfx/pokemon/mr__mime/front.animated.2bpp.lz"

SECTION "Heracross Front", ROMX

HeracrossFrontpic:   INCBIN "gfx/pokemon/heracross/front.animated.2bpp.lz"


SECTION "Accelgor Front", ROMX

AccelgorFrontpic:     INCBIN "gfx/pokemon/accelgor/front.animated.2bpp.lz"

SECTION "Noctowl Front", ROMX

NoctowlFrontpic:     INCBIN "gfx/pokemon/noctowl/front.animated.2bpp.lz"

SECTION "Marshtomp Front", ROMX

MarshtompFrontpic:   INCBIN "gfx/pokemon/marshtomp/front.animated.2bpp.lz"

SECTION "Lapras Front", ROMX

LaprasFrontpic:      INCBIN "gfx/pokemon/lapras/front.animated.2bpp.lz"

SECTION "Golem Front", ROMX

GolemFrontpic:       INCBIN "gfx/pokemon/golem/front.animated.2bpp.lz"

SECTION "Poliwhirl Front", ROMX

PoliwhirlFrontpic:   INCBIN "gfx/pokemon/poliwhirl/front.animated.2bpp.lz"

SECTION "Archeops Front", ROMX

ArcheopsFrontpic:    INCBIN "gfx/pokemon/archeops/front.animated.2bpp.lz"

SECTION "Ampharos Front", ROMX

AmpharosFrontpic:    INCBIN "gfx/pokemon/ampharos/front.animated.2bpp.lz"

SECTION "Swadloon Front", ROMX

SwadloonFrontpic:    INCBIN "gfx/pokemon/swadloon/front.animated.2bpp.lz"

SECTION "Flareon Front", ROMX

FlareonFrontpic:     INCBIN "gfx/pokemon/flareon/front.animated.2bpp.lz"

SECTION "Farfetch'd Front", ROMX

FarfetchDFrontpic:   INCBIN "gfx/pokemon/farfetch_d/front.animated.2bpp.lz"

SECTION "Petilil Front", ROMX

PetililFrontpic:   INCBIN "gfx/pokemon/petilil/front.animated.2bpp.lz"

SECTION "Bayleef Front", ROMX

BayleefFrontpic:     INCBIN "gfx/pokemon/bayleef/front.animated.2bpp.lz"

SECTION "Magmar Front", ROMX

MagmarFrontpic:      INCBIN "gfx/pokemon/magmar/front.animated.2bpp.lz"

SECTION "Tentacruel Front", ROMX

TentacruelFrontpic:  INCBIN "gfx/pokemon/tentacruel/front.animated.2bpp.lz"

SECTION "Elekid Front", ROMX

ElekidFrontpic:      INCBIN "gfx/pokemon/elekid/front.animated.2bpp.lz"

SECTION "Chandelure Front", ROMX

ChandelureFrontpic:    INCBIN "gfx/pokemon/chandelure/front.animated.2bpp.lz"

SECTION "Marowak Front", ROMX

MarowakFrontpic:     INCBIN "gfx/pokemon/marowak/front.animated.2bpp.lz"

SECTION "Vulpix Front", ROMX

VulpixFrontpic:      INCBIN "gfx/pokemon/vulpix/front.animated.2bpp.lz"

SECTION "Gligar Front", ROMX

GligarFrontpic:      INCBIN "gfx/pokemon/gligar/front.animated.2bpp.lz"

SECTION "Dunsparce Front", ROMX

DunsparceFrontpic:   INCBIN "gfx/pokemon/dunsparce/front.animated.2bpp.lz"

SECTION "Gastly Front", ROMX

GastlyFrontpic:      INCBIN "gfx/pokemon/gastly/front.animated.2bpp.lz"


SECTION "Pics 7", ROMX

VaporeonFrontpic:    INCBIN "gfx/pokemon/vaporeon/front.animated.2bpp.lz"
GirafarigFrontpic:   INCBIN "gfx/pokemon/girafarig/front.animated.2bpp.lz"
DrowzeeFrontpic:     INCBIN "gfx/pokemon/drowzee/front.animated.2bpp.lz"
SneaselFrontpic:     INCBIN "gfx/pokemon/sneasel/front.animated.2bpp.lz"
LilligantFrontpic:   INCBIN "gfx/pokemon/lilligant/front.animated.2bpp.lz"
SnorlaxFrontpic:     INCBIN "gfx/pokemon/snorlax/front.animated.2bpp.lz"
GigalithFrontpic:    INCBIN "gfx/pokemon/gigalith/front.animated.2bpp.lz"
YanmaFrontpic:       INCBIN "gfx/pokemon/yanma/front.animated.2bpp.lz"
BouffalantFrontpic:  INCBIN "gfx/pokemon/bouffalant/front.animated.2bpp.lz"
ClefableFrontpic:    INCBIN "gfx/pokemon/clefable/front.animated.2bpp.lz"
PonytaFrontpic:      INCBIN "gfx/pokemon/ponyta/front.animated.2bpp.lz"
MurkrowFrontpic:     INCBIN "gfx/pokemon/murkrow/front.animated.2bpp.lz"
GravelerFrontpic:    INCBIN "gfx/pokemon/graveler/front.animated.2bpp.lz"
KarrablastFrontpic:  INCBIN "gfx/pokemon/karrablast/front.animated.2bpp.lz"
GengarFrontpic:      INCBIN "gfx/pokemon/gengar/front.animated.2bpp.lz"
CarracostaFrontpic:  INCBIN "gfx/pokemon/carracosta/front.animated.2bpp.lz"
PiloswineFrontpic:   INCBIN "gfx/pokemon/piloswine/front.animated.2bpp.lz"
PalossandFrontpic:   INCBIN "gfx/pokemon/palossand/front.animated.2bpp.lz"
MagnetonFrontpic:    INCBIN "gfx/pokemon/magneton/front.animated.2bpp.lz"
DragonairFrontpic:   INCBIN "gfx/pokemon/dragonair/front.animated.2bpp.lz"
FerrothornFrontpic:  INCBIN "gfx/pokemon/ferrothorn/front.animated.2bpp.lz"
TogeticFrontpic:     INCBIN "gfx/pokemon/togetic/front.animated.2bpp.lz"
KangaskhanBackpic:   INCBIN "gfx/pokemon/kangaskhan/back.2bpp.lz"

SECTION "Whirliped Front Pic", ROMX

WhirlipedeFrontpic:  INCBIN "gfx/pokemon/whirlipede/front.animated.2bpp.lz"

SECTION "Pics 8", ROMX

SeelFrontpic:        INCBIN "gfx/pokemon/seel/front.animated.2bpp.lz"
CrobatFrontpic:      INCBIN "gfx/pokemon/crobat/front.animated.2bpp.lz"
ChanseyFrontpic:     INCBIN "gfx/pokemon/chansey/front.animated.2bpp.lz"
TangelaFrontpic:     INCBIN "gfx/pokemon/tangela/front.animated.2bpp.lz"
SnubbullFrontpic:    INCBIN "gfx/pokemon/snubbull/front.animated.2bpp.lz"
GranbullFrontpic:    INCBIN "gfx/pokemon/granbull/front.animated.2bpp.lz"
MiltankFrontpic:     INCBIN "gfx/pokemon/miltank/front.animated.2bpp.lz"
HaunterFrontpic:     INCBIN "gfx/pokemon/haunter/front.animated.2bpp.lz"
BeheeyemFrontpic:    INCBIN "gfx/pokemon/beheeyem/front.animated.2bpp.lz"
UmbreonFrontpic:     INCBIN "gfx/pokemon/umbreon/front.animated.2bpp.lz"
ChikoritaFrontpic:   INCBIN "gfx/pokemon/chikorita/front.animated.2bpp.lz"
GolettFrontpic:      INCBIN "gfx/pokemon/golett/front.animated.2bpp.lz"
EspeonFrontpic:      INCBIN "gfx/pokemon/espeon/front.animated.2bpp.lz"
XatuFrontpic:        INCBIN "gfx/pokemon/xatu/front.animated.2bpp.lz"
MewFrontpic:         INCBIN "gfx/pokemon/mew/front.animated.2bpp.lz"
OctilleryFrontpic:   INCBIN "gfx/pokemon/octillery/front.animated.2bpp.lz"
JynxFrontpic:        INCBIN "gfx/pokemon/jynx/front.animated.2bpp.lz"
DrapionFrontpic:     INCBIN "gfx/pokemon/drapion/front.animated.2bpp.lz"
OrthwormFrontpic:    INCBIN "gfx/pokemon/orthworm/front.animated.2bpp.lz"
EscavalierFrontpic:  INCBIN "gfx/pokemon/escavalier/front.animated.2bpp.lz"
WhimsicottFrontpic:  INCBIN "gfx/pokemon/whimsicott/front.animated.2bpp.lz"
FlaaffyFrontpic:     INCBIN "gfx/pokemon/flaaffy/front.animated.2bpp.lz"
DartrixFrontpic:     INCBIN "gfx/pokemon/dartrix/front.animated.2bpp.lz"
FurretFrontpic:      INCBIN "gfx/pokemon/furret/front.animated.2bpp.lz"


SECTION "Pics 9", ROMX

EkansFrontpic:       INCBIN "gfx/pokemon/ekans/front.animated.2bpp.lz"
SudowoodoFrontpic:   INCBIN "gfx/pokemon/sudowoodo/front.animated.2bpp.lz"
PikachuFrontpic:     INCBIN "gfx/pokemon/pikachu/front.animated.2bpp.lz"
SeadraFrontpic:      INCBIN "gfx/pokemon/seadra/front.animated.2bpp.lz"
MagbyFrontpic:       INCBIN "gfx/pokemon/magby/front.animated.2bpp.lz"
WeepinbellFrontpic:  INCBIN "gfx/pokemon/weepinbell/front.animated.2bpp.lz"
TotodileFrontpic:    INCBIN "gfx/pokemon/totodile/front.animated.2bpp.lz"
FirebreatherPic:     INCBIN "gfx/trainers/firebreather.2bpp.lz"
TimburrFrontpic:     INCBIN "gfx/pokemon/timburr/front.animated.2bpp.lz"
ChinchouFrontpic:    INCBIN "gfx/pokemon/chinchou/front.animated.2bpp.lz"
CutieflyFrontpic:    INCBIN "gfx/pokemon/cutiefly/front.animated.2bpp.lz"
ChampionDahliaPic:   INCBIN "gfx/trainers/championdahlia.2bpp.lz"
SpearowFrontpic:     INCBIN "gfx/pokemon/spearow/front.animated.2bpp.lz"
MagikarpFrontpic:    INCBIN "gfx/pokemon/magikarp/front.animated.2bpp.lz"
TepigFrontpic:       INCBIN "gfx/pokemon/tepig/front.animated.2bpp.lz"
CuboneFrontpic:      INCBIN "gfx/pokemon/cubone/front.animated.2bpp.lz"
BlackbeltTPic:       INCBIN "gfx/trainers/blackbelt_t.2bpp.lz"
BikerPic:            INCBIN "gfx/trainers/biker.2bpp.lz"
YamaskFrontpic:      INCBIN "gfx/pokemon/yamask/front.animated.2bpp.lz"
PorygonFrontpic:     INCBIN "gfx/pokemon/porygon/front.animated.2bpp.lz"
MarthaPic:           INCBIN "gfx/trainers/martha.2bpp.lz"
GrimerFrontpic:      INCBIN "gfx/pokemon/grimer/front.animated.2bpp.lz"
StaryuFrontpic:      INCBIN "gfx/pokemon/staryu/front.animated.2bpp.lz"
HikerPic:            INCBIN "gfx/trainers/hiker.2bpp.lz"
PurrloinFrontpic:    INCBIN "gfx/pokemon/purrloin/front.animated.2bpp.lz"
Porygon2Frontpic:    INCBIN "gfx/pokemon/porygon2/front.animated.2bpp.lz"
DrilburFrontpic:     INCBIN "gfx/pokemon/drilbur/front.animated.2bpp.lz"
SewaddleFrontpic:    INCBIN "gfx/pokemon/sewaddle/front.animated.2bpp.lz"
VenipedeFrontpic:    INCBIN "gfx/pokemon/venipede/front.animated.2bpp.lz"
GalvantulaBackpic:   INCBIN "gfx/pokemon/galvantula/back.2bpp.lz"
ClodsireFrontpic:    INCBIN "gfx/pokemon/clodsire/front.animated.2bpp.lz"


SECTION "Pics 10", ROMX

MisdreavusFrontpic:  INCBIN "gfx/pokemon/misdreavus/front.animated.2bpp.lz"
HoundourFrontpic:    INCBIN "gfx/pokemon/houndour/front.animated.2bpp.lz"
MankeyFrontpic:      INCBIN "gfx/pokemon/mankey/front.animated.2bpp.lz"
CelebiFrontpic:      INCBIN "gfx/pokemon/celebi/front.animated.2bpp.lz"
MediumPic:           INCBIN "gfx/trainers/medium.2bpp.lz"
FerroseedFrontpic:   INCBIN "gfx/pokemon/ferroseed/front.animated.2bpp.lz"
CorphishFrontpic:    INCBIN "gfx/pokemon/corphish/front.animated.2bpp.lz"
FisherPic:           INCBIN "gfx/trainers/fisher.2bpp.lz"
BoldoreFrontpic:     INCBIN "gfx/pokemon/boldore/front.animated.2bpp.lz"
JoltikFrontpic:      INCBIN "gfx/pokemon/joltik/front.animated.2bpp.lz"
RunerigusBackpic:    INCBIN "gfx/pokemon/runerigus/back.2bpp.lz"
PokefanmPic:         INCBIN "gfx/trainers/pokefan_m.2bpp.lz"
BoarderPic:          INCBIN "gfx/trainers/boarder.2bpp.lz"
PsyduckFrontpic:     INCBIN "gfx/pokemon/psyduck/front.animated.2bpp.lz"
MudkipFrontpic:      INCBIN "gfx/pokemon/mudkip/front.animated.2bpp.lz"
ConkeldurrBackpic:   INCBIN "gfx/pokemon/conkeldurr/back.2bpp.lz"
KoffingFrontpic:     INCBIN "gfx/pokemon/koffing/front.animated.2bpp.lz"
MinccinoFrontpic:    INCBIN "gfx/pokemon/minccino/front.animated.2bpp.lz"
ExeggutorBackpic:    INCBIN "gfx/pokemon/exeggutor/back.2bpp.lz"
LanturnFrontpic:     INCBIN "gfx/pokemon/lanturn/front.animated.2bpp.lz"
ScraggyFrontpic:     INCBIN "gfx/pokemon/scraggy/front.animated.2bpp.lz"
LampentFrontpic:     INCBIN "gfx/pokemon/lampent/front.animated.2bpp.lz"
MareepFrontpic:      INCBIN "gfx/pokemon/mareep/front.animated.2bpp.lz"
ChuckPic:            INCBIN "gfx/trainers/chuck.2bpp.lz"
EeveeFrontpic:       INCBIN "gfx/pokemon/eevee/front.animated.2bpp.lz"
ToucannonBackpic:    INCBIN "gfx/pokemon/toucannon/back.2bpp.lz"
ZubatFrontpic:       INCBIN "gfx/pokemon/zubat/front.animated.2bpp.lz"
KimonoGirlPic:       INCBIN "gfx/trainers/kimono_girl.2bpp.lz"
ReuniclusBackpic:    INCBIN "gfx/pokemon/reuniclus/back.2bpp.lz"
AipomFrontpic:       INCBIN "gfx/pokemon/aipom/front.animated.2bpp.lz"
SolosisFrontpic:     INCBIN "gfx/pokemon/solosis/front.animated.2bpp.lz"
LucarioBackpic:      INCBIN "gfx/pokemon/lucario/back.2bpp.lz"
ToxapexBackpic:      INCBIN "gfx/pokemon/toxapex/back.2bpp.lz"
HoothootFrontpic:    INCBIN "gfx/pokemon/hoothoot/front.animated.2bpp.lz"


SECTION "Pics 11", ROMX

DodrioBackpic:       INCBIN "gfx/pokemon/dodrio/back.2bpp.lz"
ClefairyFrontpic:    INCBIN "gfx/pokemon/clefairy/front.animated.2bpp.lz"
SlugmaFrontpic:      INCBIN "gfx/pokemon/slugma/front.animated.2bpp.lz"
GrowlitheFrontpic:   INCBIN "gfx/pokemon/growlithe/front.animated.2bpp.lz"
SlowpokeFrontpic:    INCBIN "gfx/pokemon/slowpoke/front.animated.2bpp.lz"
SmoochumFrontpic:    INCBIN "gfx/pokemon/smoochum/front.animated.2bpp.lz"
JugglerPic:          INCBIN "gfx/trainers/juggler.2bpp.lz"
MarillFrontpic:      INCBIN "gfx/pokemon/marill/front.animated.2bpp.lz"
GuitaristPic:        INCBIN "gfx/trainers/guitarist.2bpp.lz"
PokefanfPic:         INCBIN "gfx/trainers/pokefan_f.2bpp.lz"
CinccinoBackpic:     INCBIN "gfx/pokemon/cinccino/back.2bpp.lz"
ClairPic:            INCBIN "gfx/trainers/clair.2bpp.lz"
PokemaniacPic:       INCBIN "gfx/trainers/pokemaniac.2bpp.lz"
TirtougaFrontpic:    INCBIN "gfx/pokemon/tirtouga/front.animated.2bpp.lz"
SkierPic:            INCBIN "gfx/trainers/skier.2bpp.lz"
PupitarFrontpic:     INCBIN "gfx/pokemon/pupitar/front.animated.2bpp.lz"
BellsproutFrontpic:  INCBIN "gfx/pokemon/bellsprout/front.animated.2bpp.lz"
MareanieFrontpic:    INCBIN "gfx/pokemon/mareanie/front.animated.2bpp.lz"
TentacoolFrontpic:   INCBIN "gfx/pokemon/tentacool/front.animated.2bpp.lz"
CleffaFrontpic:      INCBIN "gfx/pokemon/cleffa/front.animated.2bpp.lz"
GyaradosBackpic:     INCBIN "gfx/pokemon/gyarados/back.2bpp.lz"
NinetalesBackpic:    INCBIN "gfx/pokemon/ninetales/back.2bpp.lz"
YanmaBackpic:        INCBIN "gfx/pokemon/yanma/back.2bpp.lz"
PinsirBackpic:       INCBIN "gfx/pokemon/pinsir/back.2bpp.lz"
LassPic:             INCBIN "gfx/trainers/lass.2bpp.lz"
ClefableBackpic:     INCBIN "gfx/pokemon/clefable/back.2bpp.lz"
DoduoFrontpic:       INCBIN "gfx/pokemon/doduo/front.animated.2bpp.lz"
FeraligatrBackpic:   INCBIN "gfx/pokemon/feraligatr/back.2bpp.lz"
DratiniFrontpic:     INCBIN "gfx/pokemon/dratini/front.animated.2bpp.lz"
MagnetonBackpic:     INCBIN "gfx/pokemon/magneton/back.2bpp.lz"
QwilfishFrontpic:    INCBIN "gfx/pokemon/qwilfish/front.animated.2bpp.lz"
HaxorusBackpic:      INCBIN "gfx/pokemon/haxorus/back.2bpp.lz"
SlowkingBackpic:     INCBIN "gfx/pokemon/slowking/back.2bpp.lz"
ElekidBackpic:       INCBIN "gfx/pokemon/elekid/back.2bpp.lz"
CelebiBackpic:       INCBIN "gfx/pokemon/celebi/back.2bpp.lz"
CorphishBackpic:     INCBIN "gfx/pokemon/corphish/back.2bpp.lz"
BugCatcherPic:       INCBIN "gfx/trainers/bug_catcher.2bpp.lz"
SnorlaxBackpic:      INCBIN "gfx/pokemon/snorlax/back.2bpp.lz"


SECTION "Pics 12", ROMX

DecidueyeBackpic:    INCBIN "gfx/pokemon/decidueye/back.2bpp.lz"
MoltresBackpic:      INCBIN "gfx/pokemon/moltres/back.2bpp.lz"
BeheeyemBackpic:     INCBIN "gfx/pokemon/beheeyem/back.2bpp.lz"
PhanpyFrontpic:      INCBIN "gfx/pokemon/phanpy/front.animated.2bpp.lz"
RhydonBackpic:       INCBIN "gfx/pokemon/rhydon/back.2bpp.lz"
LarvitarFrontpic:    INCBIN "gfx/pokemon/larvitar/front.animated.2bpp.lz"
TyranitarBackpic:    INCBIN "gfx/pokemon/tyranitar/back.2bpp.lz"
ExcadrillBackpic:    INCBIN "gfx/pokemon/excadrill/back.2bpp.lz"
SeadraBackpic:       INCBIN "gfx/pokemon/seadra/back.2bpp.lz"
TwinsPic:            INCBIN "gfx/trainers/twins.2bpp.lz"
FarfetchDBackpic:    INCBIN "gfx/pokemon/farfetch_d/back.2bpp.lz"
YamaskBackpic:       INCBIN "gfx/pokemon/yamask/back.2bpp.lz"
KarrablastBackpic:   INCBIN "gfx/pokemon/karrablast/back.2bpp.lz"
CyndaquilBackpic:    INCBIN "gfx/pokemon/cyndaquil/back.2bpp.lz"
BayleefBackpic:      INCBIN "gfx/pokemon/bayleef/back.2bpp.lz"
CottoneeFrontpic:    INCBIN "gfx/pokemon/cottonee/front.animated.2bpp.lz"
RapidashBackpic:     INCBIN "gfx/pokemon/rapidash/back.2bpp.lz"
DoduoBackpic:        INCBIN "gfx/pokemon/doduo/back.2bpp.lz"
LitwickFrontpic:     INCBIN "gfx/pokemon/litwick/front.animated.2bpp.lz"
MankeyBackpic:       INCBIN "gfx/pokemon/mankey/back.2bpp.lz"
MagmarBackpic:       INCBIN "gfx/pokemon/magmar/back.2bpp.lz"
HypnoBackpic:        INCBIN "gfx/pokemon/hypno/back.2bpp.lz"
QuilavaBackpic:      INCBIN "gfx/pokemon/quilava/back.2bpp.lz"
CroconawBackpic:     INCBIN "gfx/pokemon/croconaw/back.2bpp.lz"
DrilburBackpic:      INCBIN "gfx/pokemon/drilbur/back.2bpp.lz"
SailorPic:           INCBIN "gfx/trainers/sailor.2bpp.lz"
BeautyPic:           INCBIN "gfx/trainers/beauty.2bpp.lz"
MareanieBackpic:     INCBIN "gfx/pokemon/mareanie/back.2bpp.lz"
ZubatBackpic:        INCBIN "gfx/pokemon/zubat/back.2bpp.lz"
TeddiursaFrontpic:   INCBIN "gfx/pokemon/teddiursa/front.animated.2bpp.lz"
CuboneBackpic:       INCBIN "gfx/pokemon/cubone/back.2bpp.lz"
GruntmPic:           INCBIN "gfx/trainers/grunt_m.2bpp.lz"
WhimsicottBackpic:   INCBIN "gfx/pokemon/whimsicott/back.2bpp.lz"
MagcargoBackpic:     INCBIN "gfx/pokemon/magcargo/back.2bpp.lz"
ArcheopsBackpic:     INCBIN "gfx/pokemon/archeops/back.2bpp.lz"
StoutlandBackpic:    INCBIN "gfx/pokemon/stoutland/back.2bpp.lz"
ArcanineBackpic:     INCBIN "gfx/pokemon/arcanine/back.2bpp.lz"
FlareonBackpic:      INCBIN "gfx/pokemon/flareon/back.2bpp.lz"
GolettBackpic:       INCBIN "gfx/pokemon/golett/back.2bpp.lz"
RowletFrontpic:      INCBIN "gfx/pokemon/rowlet/front.animated.2bpp.lz"
StarmieBackpic:      INCBIN "gfx/pokemon/starmie/back.2bpp.lz"


SECTION "Pics 13", ROMX

TirtougaBackpic:     INCBIN "gfx/pokemon/tirtouga/back.2bpp.lz"
VenipedeBackpic:     INCBIN "gfx/pokemon/venipede/back.2bpp.lz"
ScientistPic:        INCBIN "gfx/trainers/scientist.2bpp.lz"
QwilfishBackpic:     INCBIN "gfx/pokemon/qwilfish/back.2bpp.lz"
GligarBackpic:       INCBIN "gfx/pokemon/gligar/back.2bpp.lz"
TyphlosionBackpic:   INCBIN "gfx/pokemon/typhlosion/back.2bpp.lz"
PigniteBackpic:      INCBIN "gfx/pokemon/pignite/back.2bpp.lz"
LeavannyBackpic:     INCBIN "gfx/pokemon/leavanny/back.2bpp.lz"
SirfetchDFrontpic:   INCBIN "gfx/pokemon/sirfetch_d/front.animated.2bpp.lz"
ElectabuzzBackpic:   INCBIN "gfx/pokemon/electabuzz/back.2bpp.lz"
EscavalierBackpic:   INCBIN "gfx/pokemon/escavalier/back.2bpp.lz"
PupitarBackpic:      INCBIN "gfx/pokemon/pupitar/back.2bpp.lz"
HeracrossBackpic:    INCBIN "gfx/pokemon/heracross/back.2bpp.lz"
MiltankBackpic:      INCBIN "gfx/pokemon/miltank/back.2bpp.lz"
SteelixBackpic:      INCBIN "gfx/pokemon/steelix/back.2bpp.lz"
LiepardBackpic:      INCBIN "gfx/pokemon/liepard/back.2bpp.lz"
LtSurgePic:          INCBIN "gfx/trainers/pvt_surge.2bpp.lz"
TeacherPic:          INCBIN "gfx/trainers/teacher.2bpp.lz"
EggPic:              INCBIN "gfx/pokemon/egg/front.animated.2bpp.lz"
EeveeBackpic:        INCBIN "gfx/pokemon/eevee/back.2bpp.lz"
OverqwilFrontpic:    INCBIN "gfx/pokemon/overqwil/front.animated.2bpp.lz"
PonytaBackpic:       INCBIN "gfx/pokemon/ponyta/back.2bpp.lz"
RemoraidFrontpic:    INCBIN "gfx/pokemon/remoraid/front.animated.2bpp.lz"
PoliwagFrontpic:     INCBIN "gfx/pokemon/poliwag/front.animated.2bpp.lz"
OnixBackpic:         INCBIN "gfx/pokemon/onix/back.2bpp.lz"
KoffingBackpic:      INCBIN "gfx/pokemon/koffing/back.2bpp.lz"
BirdKeeperPic:       INCBIN "gfx/trainers/bird_keeper.2bpp.lz"
WalkerPic:           INCBIN "gfx/trainers/walker.2bpp.lz"
AgathaPic:           INCBIN "gfx/trainers/agatha.2bpp.lz"
SwadloonBackpic:     INCBIN "gfx/pokemon/swadloon/back.2bpp.lz"
TentacruelBackpic:   INCBIN "gfx/pokemon/tentacruel/back.2bpp.lz"
GrowlitheBackpic:    INCBIN "gfx/pokemon/growlithe/back.2bpp.lz"
KogaPic:             INCBIN "gfx/trainers/koga.2bpp.lz"
GurdurrBackpic:      INCBIN "gfx/pokemon/gurdurr/back.2bpp.lz"
RaichuBackpic:       INCBIN "gfx/pokemon/raichu/back.2bpp.lz"
PoliwrathBackpic:    INCBIN "gfx/pokemon/poliwrath/back.2bpp.lz"
SwimmermPic:         INCBIN "gfx/trainers/swimmer_m.2bpp.lz"
ElgyemFrontpic:      INCBIN "gfx/pokemon/elgyem/front.animated.2bpp.lz"
CofagrigusBackpic:   INCBIN "gfx/pokemon/cofagrigus/back.2bpp.lz"
MysticalmanPic:      INCBIN "gfx/trainers/mysticalman.2bpp.lz"


SECTION "Pics 14", ROMX

SudowoodoBackpic:    INCBIN "gfx/pokemon/sudowoodo/back.2bpp.lz"
FlaaffyBackpic:      INCBIN "gfx/pokemon/flaaffy/back.2bpp.lz"
SentretFrontpic:     INCBIN "gfx/pokemon/sentret/front.animated.2bpp.lz"
TogeticBackpic:      INCBIN "gfx/pokemon/togetic/back.2bpp.lz"
KurtPic:             INCBIN "gfx/trainers/kurt.2bpp.lz"
MarowakBackpic:      INCBIN "gfx/pokemon/marowak/back.2bpp.lz"
GeodudeBackpic:      INCBIN "gfx/pokemon/geodude/back.2bpp.lz"
ScytherBackpic:      INCBIN "gfx/pokemon/scyther/back.2bpp.lz"
PetililBackpic:      INCBIN "gfx/pokemon/petilil/back.2bpp.lz"
RioluBackpic:        INCBIN "gfx/pokemon/riolu/back.2bpp.lz"
ChandelureBackpic:   INCBIN "gfx/pokemon/chandelure/back.2bpp.lz"
CooltrainermPic:     INCBIN "gfx/trainers/cooltrainer_m.2bpp.lz"
SwampertBackpic:     INCBIN "gfx/pokemon/swampert/back.2bpp.lz"
MisdreavusBackpic:   INCBIN "gfx/pokemon/misdreavus/back.2bpp.lz"
ScraggyBackpic:      INCBIN "gfx/pokemon/scraggy/back.2bpp.lz"
GeodudeFrontpic:     INCBIN "gfx/pokemon/geodude/front.animated.2bpp.lz"
ScizorBackpic:       INCBIN "gfx/pokemon/scizor/back.2bpp.lz"
GirafarigBackpic:    INCBIN "gfx/pokemon/girafarig/back.2bpp.lz"
StantlerBackpic:     INCBIN "gfx/pokemon/stantler/back.2bpp.lz"
BouffalantBackpic:   INCBIN "gfx/pokemon/bouffalant/back.2bpp.lz"
EmboarBackpic:       INCBIN "gfx/pokemon/emboar/back.2bpp.lz"
DuosionBackpic:      INCBIN "gfx/pokemon/duosion/back.2bpp.lz"
PrimeapeBackpic:     INCBIN "gfx/pokemon/primeape/back.2bpp.lz"
FurretBackpic:       INCBIN "gfx/pokemon/furret/back.2bpp.lz"
MarshtompBackpic:    INCBIN "gfx/pokemon/marshtomp/back.2bpp.lz"
ExeggcuteBackpic:    INCBIN "gfx/pokemon/exeggcute/back.2bpp.lz"
RoggenrolaFrontpic:  INCBIN "gfx/pokemon/roggenrola/front.animated.2bpp.lz"
RibombeeBackpic:     INCBIN "gfx/pokemon/ribombee/back.2bpp.lz"
VulpixBackpic:       INCBIN "gfx/pokemon/vulpix/back.2bpp.lz"
EkansBackpic:        INCBIN "gfx/pokemon/ekans/back.2bpp.lz"
GolurkBackpic:       INCBIN "gfx/pokemon/golurk/back.2bpp.lz"
BurglarPic:          INCBIN "gfx/trainers/burglar.2bpp.lz"
PsyduckBackpic:      INCBIN "gfx/pokemon/psyduck/back.2bpp.lz"
PikachuBackpic:      INCBIN "gfx/pokemon/pikachu/back.2bpp.lz"
ArchenFrontpic:      INCBIN "gfx/pokemon/archen/front.animated.2bpp.lz"
MareepBackpic:       INCBIN "gfx/pokemon/mareep/back.2bpp.lz"
RemoraidBackpic:     INCBIN "gfx/pokemon/remoraid/back.2bpp.lz"
DittoFrontpic:       INCBIN "gfx/pokemon/ditto/front.animated.2bpp.lz"
KingdraBackpic:      INCBIN "gfx/pokemon/kingdra/back.2bpp.lz"
CamperPic:           INCBIN "gfx/trainers/camper.2bpp.lz"
WooperFrontpic:      INCBIN "gfx/pokemon/wooper/front.animated.2bpp.lz"
ClefairyBackpic:     INCBIN "gfx/pokemon/clefairy/back.2bpp.lz"
MinccinoBackpic:     INCBIN "gfx/pokemon/minccino/back.2bpp.lz"
LilligantBackpic:    INCBIN "gfx/pokemon/lilligant/back.2bpp.lz"
Rival1Pic:           INCBIN "gfx/trainers/rival1.2bpp.lz"
SwinubBackpic:       INCBIN "gfx/pokemon/swinub/back.2bpp.lz"


SECTION "Pics 15", ROMX

MewtwoBackpic:       INCBIN "gfx/pokemon/mewtwo/back.2bpp.lz"
PokemonProfPic:      INCBIN "gfx/trainers/juniper.2bpp.lz"
CalPic:              INCBIN "gfx/trainers/cal.2bpp.lz"
SwimmerfPic:         INCBIN "gfx/trainers/swimmer_f.2bpp.lz"
SandygastFrontpic:   INCBIN "gfx/pokemon/sandygast/front.animated.2bpp.lz"
OfficerPic:          INCBIN "gfx/trainers/officer.2bpp.lz"
MukBackpic:          INCBIN "gfx/pokemon/muk/back.2bpp.lz"
OrthwormBackpic:     INCBIN "gfx/pokemon/orthworm/back.2bpp.lz"
SabrinaPic:          INCBIN "gfx/trainers/sabrina.2bpp.lz"
MagikarpBackpic:     INCBIN "gfx/pokemon/magikarp/back.2bpp.lz"
AccelgorBackpic:     INCBIN "gfx/pokemon/accelgor/back.2bpp.lz"
SneaselBackpic:      INCBIN "gfx/pokemon/sneasel/back.2bpp.lz"
UmbreonBackpic:      INCBIN "gfx/pokemon/umbreon/back.2bpp.lz"
MurkrowBackpic:      INCBIN "gfx/pokemon/murkrow/back.2bpp.lz"
DartrixBackpic:      INCBIN "gfx/pokemon/dartrix/back.2bpp.lz"
SlowbroBackpic:      INCBIN "gfx/pokemon/slowbro/back.2bpp.lz"
PsychicTPic:         INCBIN "gfx/trainers/psychic_t.2bpp.lz"
GolduckBackpic:      INCBIN "gfx/pokemon/golduck/back.2bpp.lz"
WeezingBackpic:      INCBIN "gfx/pokemon/weezing/back.2bpp.lz"
AxewBackpic:         INCBIN "gfx/pokemon/axew/back.2bpp.lz"
GruntfPic:           INCBIN "gfx/trainers/grunt_f.2bpp.lz"
HorseaFrontpic:      INCBIN "gfx/pokemon/horsea/front.animated.2bpp.lz"
ScolipedeBackpic:    INCBIN "gfx/pokemon/scolipede/back.2bpp.lz"
HoOhBackpic:         INCBIN "gfx/pokemon/ho_oh/back.2bpp.lz"
PoliwhirlBackpic:    INCBIN "gfx/pokemon/poliwhirl/back.2bpp.lz"
MewBackpic:          INCBIN "gfx/pokemon/mew/back.2bpp.lz"
TimburrBackpic:      INCBIN "gfx/pokemon/timburr/back.2bpp.lz"
SolosisBackpic:      INCBIN "gfx/pokemon/solosis/back.2bpp.lz"
AerodactylBackpic:   INCBIN "gfx/pokemon/aerodactyl/back.2bpp.lz"
HerdierFrontpic:     INCBIN "gfx/pokemon/herdier/front.animated.2bpp.lz"
PalossandBackpic:    INCBIN "gfx/pokemon/palossand/back.2bpp.lz"
WeepinbellBackpic:   INCBIN "gfx/pokemon/weepinbell/back.2bpp.lz"
SewaddleBackpic:     INCBIN "gfx/pokemon/sewaddle/back.2bpp.lz"
GravelerBackpic:     INCBIN "gfx/pokemon/graveler/back.2bpp.lz"
AipomBackpic:        INCBIN "gfx/pokemon/aipom/back.2bpp.lz"
EspeonBackpic:       INCBIN "gfx/pokemon/espeon/back.2bpp.lz"
LillipupFrontpic:    INCBIN "gfx/pokemon/lillipup/front.animated.2bpp.lz"
TotodileBackpic:     INCBIN "gfx/pokemon/totodile/back.2bpp.lz"
SnubbullBackpic:     INCBIN "gfx/pokemon/snubbull/back.2bpp.lz"
CrawdauntBackpic:    INCBIN "gfx/pokemon/crawdaunt/back.2bpp.lz"
GengarBackpic:       INCBIN "gfx/pokemon/gengar/back.2bpp.lz"
CutieflyBackpic:     INCBIN "gfx/pokemon/cutiefly/back.2bpp.lz"
YoungsterPic:        INCBIN "gfx/trainers/youngster.2bpp.lz"
FlorinaPic:          INCBIN "gfx/trainers/florina.2bpp.lz"
SchoolboyPic:        INCBIN "gfx/trainers/schoolboy.2bpp.lz"
MagnemiteFrontpic:   INCBIN "gfx/pokemon/magnemite/front.animated.2bpp.lz"
ErikaPic:            INCBIN "gfx/trainers/erika.2bpp.lz"
JaninePic:           INCBIN "gfx/trainers/janine.2bpp.lz"
MagnemiteBackpic:    INCBIN "gfx/pokemon/magnemite/back.2bpp.lz"


SECTION "Pics 16", ROMX

HoothootBackpic:     INCBIN "gfx/pokemon/hoothoot/back.2bpp.lz"
NoctowlBackpic:      INCBIN "gfx/pokemon/noctowl/back.2bpp.lz"
EnokiPic:            INCBIN "gfx/trainers/enoki.2bpp.lz"
SlugmaBackpic:       INCBIN "gfx/pokemon/slugma/back.2bpp.lz"
ArchenBackpic:       INCBIN "gfx/pokemon/archen/back.2bpp.lz"
VictreebelBackpic:   INCBIN "gfx/pokemon/victreebel/back.2bpp.lz"
PurrloinBackpic:     INCBIN "gfx/pokemon/purrloin/back.2bpp.lz"
MeganiumBackpic:     INCBIN "gfx/pokemon/meganium/back.2bpp.lz"
PicnickerPic:        INCBIN "gfx/trainers/picnicker.2bpp.lz"
LickitungBackpic:    INCBIN "gfx/pokemon/lickitung/back.2bpp.lz"
TogepiFrontpic:      INCBIN "gfx/pokemon/togepi/front.animated.2bpp.lz"
SuperNerdPic:        INCBIN "gfx/trainers/super_nerd.2bpp.lz"
HaunterBackpic:      INCBIN "gfx/pokemon/haunter/back.2bpp.lz"
XatuBackpic:         INCBIN "gfx/pokemon/xatu/back.2bpp.lz"
RedPic:              INCBIN "gfx/trainers/red.2bpp.lz"
Porygon2Backpic:     INCBIN "gfx/pokemon/porygon2/back.2bpp.lz"
ByronPic:            INCBIN "gfx/trainers/byron.2bpp.lz"
FerroseedBackpic:    INCBIN "gfx/pokemon/ferroseed/back.2bpp.lz"
TrumbeakFrontpic:    INCBIN "gfx/pokemon/trumbeak/front.animated.2bpp.lz"
SeelBackpic:         INCBIN "gfx/pokemon/seel/back.2bpp.lz"
ClodsireBackpic:     INCBIN "gfx/pokemon/clodsire/back.2bpp.lz"
MiltonPic:           INCBIN "gfx/trainers/milton.2bpp.lz"
JolteonBackpic:      INCBIN "gfx/pokemon/jolteon/back.2bpp.lz"
PikipekFrontpic:     INCBIN "gfx/pokemon/pikipek/front.animated.2bpp.lz"
LitwickBackpic:      INCBIN "gfx/pokemon/litwick/back.2bpp.lz"
GiovanniPic:         INCBIN "gfx/trainers/giovanni.2bpp.lz"
GranbullBackpic:     INCBIN "gfx/pokemon/granbull/back.2bpp.lz"
GentlemanPic:        INCBIN "gfx/trainers/gentleman.2bpp.lz"
ArcherPic:           INCBIN "gfx/trainers/archer.2bpp.lz"
SpearowBackpic:      INCBIN "gfx/pokemon/spearow/back.2bpp.lz"
ElgyemBackpic:       INCBIN "gfx/pokemon/elgyem/back.2bpp.lz"
LaprasBackpic:       INCBIN "gfx/pokemon/lapras/back.2bpp.lz"
MagbyBackpic:        INCBIN "gfx/pokemon/magby/back.2bpp.lz"
DragonairBackpic:    INCBIN "gfx/pokemon/dragonair/back.2bpp.lz"
ZapdosBackpic:       INCBIN "gfx/pokemon/zapdos/back.2bpp.lz"
ChikoritaBackpic:    INCBIN "gfx/pokemon/chikorita/back.2bpp.lz"
CorsolaBackpic:      INCBIN "gfx/pokemon/corsola/back.2bpp.lz"
ChinchouBackpic:     INCBIN "gfx/pokemon/chinchou/back.2bpp.lz"
ChanseyBackpic:      INCBIN "gfx/pokemon/chansey/back.2bpp.lz"
LampentBackpic:      INCBIN "gfx/pokemon/lampent/back.2bpp.lz"
ShelmetFrontpic:     INCBIN "gfx/pokemon/shelmet/front.animated.2bpp.lz"
Rival2Pic:           INCBIN "gfx/trainers/rival2.2bpp.lz"
TepigBackpic:        INCBIN "gfx/pokemon/tepig/back.2bpp.lz"
RhyhornBackpic:      INCBIN "gfx/pokemon/rhyhorn/back.2bpp.lz"
BasculinWFrontpic:   INCBIN "gfx/pokemon/basculin_w/front.animated.2bpp.lz"

SECTION "Newer Pics", ROMX

VioletPic:           INCBIN "gfx/trainers/violet.2bpp.lz"
BlainePic:           INCBIN "gfx/trainers/blaine.2bpp.lz"
SwinubFrontpic:      INCBIN "gfx/pokemon/swinub/front.animated.2bpp.lz"
LarvitarBackpic:     INCBIN "gfx/pokemon/larvitar/back.2bpp.lz"
PorygonBackpic:      INCBIN "gfx/pokemon/porygon/back.2bpp.lz"
ElectrodeBackpic:    INCBIN "gfx/pokemon/electrode/back.2bpp.lz"
SkarmoryBackpic:     INCBIN "gfx/pokemon/skarmory/back.2bpp.lz"
TrumbeakBackpic:     INCBIN "gfx/pokemon/trumbeak/back.2bpp.lz"
BoldoreBackpic:      INCBIN "gfx/pokemon/boldore/back.2bpp.lz"
CottoneeBackpic:     INCBIN "gfx/pokemon/cottonee/back.2bpp.lz"
BasclegionFrontpic:  INCBIN "gfx/pokemon/basclegion/front.animated.2bpp.lz"
BasclegionBackpic:   INCBIN "gfx/pokemon/basclegion/back.2bpp.lz"


SECTION "Pics 17", ROMX

JoltikBackpic:       INCBIN "gfx/pokemon/joltik/back.2bpp.lz"
VaporeonBackpic:     INCBIN "gfx/pokemon/vaporeon/back.2bpp.lz"
TentacoolBackpic:    INCBIN "gfx/pokemon/tentacool/back.2bpp.lz"
ArianaPic:           INCBIN "gfx/trainers/ariana.2bpp.lz"
RowletBackpic:       INCBIN "gfx/pokemon/rowlet/back.2bpp.lz"
SmoochumBackpic:     INCBIN "gfx/pokemon/smoochum/back.2bpp.lz"
SirfetchDBackpic:    INCBIN "gfx/pokemon/sirfetch_d/back.2bpp.lz"
HoundoomBackpic:     INCBIN "gfx/pokemon/houndoom/back.2bpp.lz"
BellsproutBackpic:   INCBIN "gfx/pokemon/bellsprout/back.2bpp.lz"
GrimerBackpic:       INCBIN "gfx/pokemon/grimer/back.2bpp.lz"
LanturnBackpic:      INCBIN "gfx/pokemon/lanturn/back.2bpp.lz"
WhirlipedeBackpic:   INCBIN "gfx/pokemon/whirlipede/back.2bpp.lz"
StaryuBackpic:       INCBIN "gfx/pokemon/staryu/back.2bpp.lz"
MrMimeBackpic:       INCBIN "gfx/pokemon/mr__mime/back.2bpp.lz"
PikipekBackpic:      INCBIN "gfx/pokemon/pikipek/back.2bpp.lz"
VoltorbFrontpic:     INCBIN "gfx/pokemon/voltorb/front.animated.2bpp.lz"
LugiaBackpic:        INCBIN "gfx/pokemon/lugia/back.2bpp.lz"
StevePic:            INCBIN "gfx/trainers/steve.2bpp.lz"
FlintPic:            INCBIN "gfx/trainers/flint.2bpp.lz"
ArbokBackpic:        INCBIN "gfx/pokemon/arbok/back.2bpp.lz"
PolitoedBackpic:     INCBIN "gfx/pokemon/politoed/back.2bpp.lz"
DragoniteBackpic:    INCBIN "gfx/pokemon/dragonite/back.2bpp.lz"
ScraftyBackpic:      INCBIN "gfx/pokemon/scrafty/back.2bpp.lz"
NatuFrontpic:        INCBIN "gfx/pokemon/natu/front.animated.2bpp.lz"
UrsaringBackpic:     INCBIN "gfx/pokemon/ursaring/back.2bpp.lz"
SagePic:             INCBIN "gfx/trainers/sage.2bpp.lz"
TeddiursaBackpic:    INCBIN "gfx/pokemon/teddiursa/back.2bpp.lz"
PhanpyBackpic:       INCBIN "gfx/pokemon/phanpy/back.2bpp.lz"
HerdierBackpic:      INCBIN "gfx/pokemon/herdier/back.2bpp.lz"
DrapionBackpic:      INCBIN "gfx/pokemon/drapion/back.2bpp.lz"
TogepiBackpic:       INCBIN "gfx/pokemon/togepi/back.2bpp.lz"
CrobatBackpic:       INCBIN "gfx/pokemon/crobat/back.2bpp.lz"
BlisseyBackpic:      INCBIN "gfx/pokemon/blissey/back.2bpp.lz"
AmpharosBackpic:     INCBIN "gfx/pokemon/ampharos/back.2bpp.lz"
RoggenrolaBackpic:   INCBIN "gfx/pokemon/roggenrola/back.2bpp.lz"
AzumarillBackpic:    INCBIN "gfx/pokemon/azumarill/back.2bpp.lz"
OctilleryBackpic:    INCBIN "gfx/pokemon/octillery/back.2bpp.lz"
HorseaBackpic:       INCBIN "gfx/pokemon/horsea/back.2bpp.lz"
SentretBackpic:      INCBIN "gfx/pokemon/sentret/back.2bpp.lz"
GigalithBackpic:     INCBIN "gfx/pokemon/gigalith/back.2bpp.lz"
ArticunoBackpic:     INCBIN "gfx/pokemon/articuno/back.2bpp.lz"
DittoBackpic:        INCBIN "gfx/pokemon/ditto/back.2bpp.lz"
LillipupBackpic:     INCBIN "gfx/pokemon/lillipup/back.2bpp.lz"
CleffaBackpic:       INCBIN "gfx/pokemon/cleffa/back.2bpp.lz"
DrowzeeBackpic:      INCBIN "gfx/pokemon/drowzee/back.2bpp.lz"
GastlyBackpic:       INCBIN "gfx/pokemon/gastly/back.2bpp.lz"
FearowBackpic:       INCBIN "gfx/pokemon/fearow/back.2bpp.lz"
MarillBackpic:       INCBIN "gfx/pokemon/marill/back.2bpp.lz"
DratiniBackpic:      INCBIN "gfx/pokemon/dratini/back.2bpp.lz"


SECTION "Pics 18", ROMX

ShelmetBackpic:      INCBIN "gfx/pokemon/shelmet/back.2bpp.lz"
FraxureBackpic:      INCBIN "gfx/pokemon/fraxure/back.2bpp.lz"
HoundourBackpic:     INCBIN "gfx/pokemon/houndour/back.2bpp.lz"
PoliwagBackpic:      INCBIN "gfx/pokemon/poliwag/back.2bpp.lz"
MudkipBackpic:       INCBIN "gfx/pokemon/mudkip/back.2bpp.lz"
OverqwilBackpic:     INCBIN "gfx/pokemon/overqwil/back.2bpp.lz"
DewgongBackpic:      INCBIN "gfx/pokemon/dewgong/back.2bpp.lz"
BasculinBFrontpic:   INCBIN "gfx/pokemon/basculin_b/front.animated.2bpp.lz"
SlowpokeBackpic:     INCBIN "gfx/pokemon/slowpoke/back.2bpp.lz"
DunsparceBackpic:    INCBIN "gfx/pokemon/dunsparce/back.2bpp.lz"
DonphanBackpic:      INCBIN "gfx/pokemon/donphan/back.2bpp.lz"
WooperBackpic:       INCBIN "gfx/pokemon/wooper/back.2bpp.lz"
TaurosBackpic:       INCBIN "gfx/pokemon/tauros/back.2bpp.lz"
TangelaBackpic:      INCBIN "gfx/pokemon/tangela/back.2bpp.lz"
VoltorbBackpic:      INCBIN "gfx/pokemon/voltorb/back.2bpp.lz"
VolcaronaBackpic:    INCBIN "gfx/pokemon/volcarona/back.2bpp.lz"
PiloswineBackpic:    INCBIN "gfx/pokemon/piloswine/back.2bpp.lz"
NatuBackpic:         INCBIN "gfx/pokemon/natu/back.2bpp.lz"
BasculinRFrontpic:   INCBIN "gfx/pokemon/basculin_r/front.animated.2bpp.lz"
GolemBackpic:        INCBIN "gfx/pokemon/golem/back.2bpp.lz"
SandygastBackpic:    INCBIN "gfx/pokemon/sandygast/back.2bpp.lz"
BasculinWBackpic:    INCBIN "gfx/pokemon/basculin_w/back.2bpp.lz"
JynxBackpic:         INCBIN "gfx/pokemon/jynx/back.2bpp.lz"
GolbatBackpic:       INCBIN "gfx/pokemon/golbat/back.2bpp.lz"
FerrothornBackpic:   INCBIN "gfx/pokemon/ferrothorn/back.2bpp.lz"
SkorupiFrontpic:     INCBIN "gfx/pokemon/skorupi/front.animated.2bpp.lz"


SECTION "Pics 19", ROMX

MasterPic:           INCBIN "gfx/trainers/master.2bpp.lz"
SkarminiFrontpic:    INCBIN "gfx/pokemon/skarmini/front.animated.2bpp.lz"
SkarminiBackpic:     INCBIN "gfx/pokemon/skarmini/back.2bpp.lz"
MismagiusFrontpic:   INCBIN "gfx/pokemon/mismagius/front.animated.2bpp.lz"
MismagiusBackpic:    INCBIN "gfx/pokemon/mismagius/back.2bpp.lz"
HonchkrowFrontpic:   INCBIN "gfx/pokemon/honchkrow/front.animated.2bpp.lz"
HonchkrowBackpic:    INCBIN "gfx/pokemon/honchkrow/back.2bpp.lz"
CursolaFrontpic:     INCBIN "gfx/pokemon/cursola/front.animated.2bpp.lz"
CursolaBackpic:      INCBIN "gfx/pokemon/cursola/back.2bpp.lz"
LeafeonFrontpic:     INCBIN "gfx/pokemon/leafeon/front.animated.2bpp.lz"
LeafeonBackpic:      INCBIN "gfx/pokemon/leafeon/back.2bpp.lz"
CorsolaFrontpic:     INCBIN "gfx/pokemon/corsola/front.animated.2bpp.lz"
GlaceonFrontpic:     INCBIN "gfx/pokemon/glaceon/front.animated.2bpp.lz"
GlaceonBackpic:      INCBIN "gfx/pokemon/glaceon/back.2bpp.lz"
SylveonFrontpic:     INCBIN "gfx/pokemon/sylveon/front.animated.2bpp.lz"
SylveonBackpic:      INCBIN "gfx/pokemon/sylveon/back.2bpp.lz"
AmbipomFrontpic:     INCBIN "gfx/pokemon/ambipom/front.animated.2bpp.lz"
AmbipomBackpic:      INCBIN "gfx/pokemon/ambipom/back.2bpp.lz"
LickilickyFrontpic:  INCBIN "gfx/pokemon/lickilicky/front.animated.2bpp.lz"
LickilickyBackpic:   INCBIN "gfx/pokemon/lickilicky/back.2bpp.lz"


SECTION "Pics 25", ROMX

MamoswineFrontpic:   INCBIN "gfx/pokemon/mamoswine/front.animated.2bpp.lz"
MamoswineBackpic:    INCBIN "gfx/pokemon/mamoswine/back.2bpp.lz"
TangrowthFrontpic:   INCBIN "gfx/pokemon/tangrowth/front.animated.2bpp.lz"
TangrowthBackpic:    INCBIN "gfx/pokemon/tangrowth/back.2bpp.lz"
MagnezoneFrontpic:   INCBIN "gfx/pokemon/magnezone/front.animated.2bpp.lz"
MagnezoneBackpic:    INCBIN "gfx/pokemon/magnezone/back.2bpp.lz"
PorygonZFrontpic:    INCBIN "gfx/pokemon/porygon_z/front.animated.2bpp.lz"
PorygonZBackpic:     INCBIN "gfx/pokemon/porygon_z/back.2bpp.lz"
GliscorFrontpic:     INCBIN "gfx/pokemon/gliscor/front.animated.2bpp.lz"
GliscorBackpic:      INCBIN "gfx/pokemon/gliscor/back.2bpp.lz"
WeavileFrontpic:     INCBIN "gfx/pokemon/weavile/front.animated.2bpp.lz"
WeavileBackpic:      INCBIN "gfx/pokemon/weavile/back.2bpp.lz"
TogekissBackpic:     INCBIN "gfx/pokemon/togekiss/back.2bpp.lz"
MagmortarFrontpic:   INCBIN "gfx/pokemon/magmortar/front.animated.2bpp.lz"
MagmortarBackpic:    INCBIN "gfx/pokemon/magmortar/back.2bpp.lz"
RhyperiorFrontpic:   INCBIN "gfx/pokemon/rhyperior/front.animated.2bpp.lz"
RhyperiorBackpic:    INCBIN "gfx/pokemon/rhyperior/back.2bpp.lz"
DeinoFrontpic:       INCBIN "gfx/pokemon/deino/front.animated.2bpp.lz"
DeinoBackpic:        INCBIN "gfx/pokemon/deino/back.2bpp.lz"
ZweilousFrontpic:    INCBIN "gfx/pokemon/zweilous/front.animated.2bpp.lz"
ZweilousBackpic:     INCBIN "gfx/pokemon/zweilous/back.2bpp.lz"
HydreigonFrontpic:   INCBIN "gfx/pokemon/hydreigon/front.animated.2bpp.lz"
HydreigonBackpic:    INCBIN "gfx/pokemon/hydreigon/back.2bpp.lz"


SECTION "Pics 26", ROMX

MissingnoFrontpic:   INCBIN "gfx/pokemon/missingno/front.animated.2bpp.lz"
MissingnoBackpic:    INCBIN "gfx/pokemon/missingno/back.2bpp.lz"
SkorupiBackpic:      INCBIN "gfx/pokemon/skorupi/back.2bpp.lz"
AbsolFrontpic:       INCBIN "gfx/pokemon/absol/front.animated.2bpp.lz"
AbsolBackpic:        INCBIN "gfx/pokemon/absol/back.2bpp.lz"
Rival3Pic:           INCBIN "gfx/trainers/kris.2bpp.lz"
Rival4Pic:           INCBIN "gfx/trainers/chris.2bpp.lz"
BreederPic:          INCBIN "gfx/trainers/breeder.2bpp.lz"
MunchlaxFrontpic:    INCBIN "gfx/pokemon/munchlax/front.animated.2bpp.lz"
MunchlaxBackpic:     INCBIN "gfx/pokemon/munchlax/back.2bpp.lz"
BonslyFrontpic:      INCBIN "gfx/pokemon/bonsly/front.animated.2bpp.lz"
BonslyBackpic:       INCBIN "gfx/pokemon/bonsly/back.2bpp.lz"
MimeJrFrontpic:      INCBIN "gfx/pokemon/mimejr/front.animated.2bpp.lz"
MimeJrBackpic:       INCBIN "gfx/pokemon/mimejr/back.2bpp.lz"
LarvestaFrontpic:    INCBIN "gfx/pokemon/larvesta/front.animated.2bpp.lz"
LarvestaBackpic:     INCBIN "gfx/pokemon/larvesta/back.2bpp.lz"
HappinyFrontpic:     INCBIN "gfx/pokemon/happiny/front.animated.2bpp.lz"
HappinyBackpic:      INCBIN "gfx/pokemon/happiny/back.2bpp.lz"
HexManiacPic:        INCBIN "gfx/trainers/hex_maniac.2bpp.lz"
ChigusaPic:          INCBIN "gfx/trainers/chigusa.2bpp.lz"
ElectivireFrontpic:  INCBIN "gfx/pokemon/electivire/front.animated.2bpp.lz"
ElectivireBackpic:   INCBIN "gfx/pokemon/electivire/back.2bpp.lz"
GenSurgePic:         INCBIN "gfx/trainers/gen_surge.2bpp.lz"
UrsaringFrontpic:    INCBIN "gfx/pokemon/ursaring/front.animated.2bpp.lz"
MoltresFrontpic:     INCBIN "gfx/pokemon/moltres/front.animated.2bpp.lz"
HoundoomFrontpic:    INCBIN "gfx/pokemon/houndoom/front.animated.2bpp.lz"


SECTION "Pics 27", ROMX

DuskullFrontpic:     INCBIN "gfx/pokemon/duskull/front.animated.2bpp.lz"
DuskullBackpic:      INCBIN "gfx/pokemon/duskull/back.2bpp.lz"
DusclopsFrontpic:    INCBIN "gfx/pokemon/dusclops/front.animated.2bpp.lz"
DusclopsBackpic:     INCBIN "gfx/pokemon/dusclops/back.2bpp.lz"
DusknoirFrontpic:    INCBIN "gfx/pokemon/dusknoir/front.animated.2bpp.lz"
DusknoirBackpic:     INCBIN "gfx/pokemon/dusknoir/back.2bpp.lz"
BronzorFrontpic:     INCBIN "gfx/pokemon/bronzor/front.animated.2bpp.lz"
BronzorBackpic:      INCBIN "gfx/pokemon/bronzor/back.2bpp.lz"
BronzongFrontpic:    INCBIN "gfx/pokemon/bronzong/front.animated.2bpp.lz"
BronzongBackpic:     INCBIN "gfx/pokemon/bronzong/back.2bpp.lz"
RaltsFrontpic:       INCBIN "gfx/pokemon/ralts/front.animated.2bpp.lz"
RaltsBackpic:        INCBIN "gfx/pokemon/ralts/back.2bpp.lz"
KirliaFrontpic:      INCBIN "gfx/pokemon/kirlia/front.animated.2bpp.lz"
KirliaBackpic:       INCBIN "gfx/pokemon/kirlia/back.2bpp.lz"
GardevoirFrontpic:   INCBIN "gfx/pokemon/gardevoir/front.animated.2bpp.lz"
GardevoirBackpic:    INCBIN "gfx/pokemon/gardevoir/back.2bpp.lz"
GalladeFrontpic:     INCBIN "gfx/pokemon/gallade/front.animated.2bpp.lz"
GalladeBackpic:      INCBIN "gfx/pokemon/gallade/back.2bpp.lz"
BudewFrontpic:       INCBIN "gfx/pokemon/budew/front.animated.2bpp.lz"
BudewBackpic:        INCBIN "gfx/pokemon/budew/back.2bpp.lz"
RoseliaFrontpic:     INCBIN "gfx/pokemon/roselia/front.animated.2bpp.lz"
RoseliaBackpic:      INCBIN "gfx/pokemon/roselia/back.2bpp.lz"
RoseradeFrontpic:    INCBIN "gfx/pokemon/roserade/front.animated.2bpp.lz"
RoseradeBackpic:     INCBIN "gfx/pokemon/roserade/back.2bpp.lz"
ElectrikeFrontpic:   INCBIN "gfx/pokemon/electrike/front.animated.2bpp.lz"
ElectrikeBackpic:    INCBIN "gfx/pokemon/electrike/back.2bpp.lz"

SECTION "Pics 28", ROMX

ManectricFrontpic:   INCBIN "gfx/pokemon/manectric/front.animated.2bpp.lz"
ManectricBackpic:    INCBIN "gfx/pokemon/manectric/back.2bpp.lz"
CacneaFrontpic:      INCBIN "gfx/pokemon/cacnea/front.animated.2bpp.lz"
CacneaBackpic:       INCBIN "gfx/pokemon/cacnea/back.2bpp.lz"
CacturneFrontpic:    INCBIN "gfx/pokemon/cacturne/front.animated.2bpp.lz"
CacturneBackpic:     INCBIN "gfx/pokemon/cacturne/back.2bpp.lz"
CroagunkFrontpic:    INCBIN "gfx/pokemon/croagunk/front.animated.2bpp.lz"
CroagunkBackpic:     INCBIN "gfx/pokemon/croagunk/back.2bpp.lz"
ToxicroakFrontpic:   INCBIN "gfx/pokemon/toxicroak/front.animated.2bpp.lz"
ToxicroakBackpic:    INCBIN "gfx/pokemon/toxicroak/back.2bpp.lz"
SnoruntFrontpic:     INCBIN "gfx/pokemon/snorunt/front.animated.2bpp.lz"
SnoruntBackpic:      INCBIN "gfx/pokemon/snorunt/back.2bpp.lz"
GlalieFrontpic:      INCBIN "gfx/pokemon/glalie/front.animated.2bpp.lz"
GlalieBackpic:       INCBIN "gfx/pokemon/glalie/back.2bpp.lz"
HaxorusFrontpic:     INCBIN "gfx/pokemon/haxorus/front.animated.2bpp.lz"
TyphlosionFrontpic:  INCBIN "gfx/pokemon/typhlosion/front.animated.2bpp.lz"
FroslassFrontpic:    INCBIN "gfx/pokemon/froslass/front.animated.2bpp.lz"
FroslassBackpic:     INCBIN "gfx/pokemon/froslass/back.2bpp.lz"
MahoganyNinjaMPic:   INCBIN "gfx/trainers/ninja_m.2bpp.lz"
MahoganyNinjaFPic:   INCBIN "gfx/trainers/ninja_f.2bpp.lz"
DepressedDahliaPic:  INCBIN "gfx/trainers/dahliadepressed.2bpp.lz"
DepressedDracoPic:   INCBIN "gfx/trainers/dracodepressed.2bpp.lz"
AronFrontpic:        INCBIN "gfx/pokemon/aron/front.animated.2bpp.lz"
AronBackpic:         INCBIN "gfx/pokemon/aron/back.2bpp.lz"
LaironFrontpic:      INCBIN "gfx/pokemon/lairon/front.animated.2bpp.lz"
LaironBackpic:       INCBIN "gfx/pokemon/lairon/back.2bpp.lz"
AggronFrontpic:      INCBIN "gfx/pokemon/aggron/front.animated.2bpp.lz"
AggronBackpic:       INCBIN "gfx/pokemon/aggron/back.2bpp.lz"
EinPic:              INCBIN "gfx/trainers/ein.2bpp.lz"

SECTION "Pics 29", ROMX

DragonTamerFPic:	 INCBIN "gfx/trainers/dragon_tamer_f.2bpp.lz"
DragonTamerMPic:     INCBIN "gfx/trainers/dragon_tamer_m.2bpp.lz"
MadameBossPic:		 INCBIN "gfx/trainers/madame_boss.2bpp.lz"
TouristPic:          INCBIN "gfx/trainers/cynthia.2bpp.lz"
CynthiaPic:          INCBIN "gfx/trainers/cynthia.2bpp.lz"
GibleFrontpic:       INCBIN "gfx/pokemon/gible/front.animated.2bpp.lz"
GibleBackpic:        INCBIN "gfx/pokemon/gible/back.2bpp.lz"
GabiteFrontpic:      INCBIN "gfx/pokemon/gabite/front.animated.2bpp.lz"
GabiteBackpic:       INCBIN "gfx/pokemon/gabite/back.2bpp.lz"
GarchompFrontpic:    INCBIN "gfx/pokemon/garchomp/front.animated.2bpp.lz"
GarchompBackpic:     INCBIN "gfx/pokemon/garchomp/back.2bpp.lz"
StarmieFrontpic:     INCBIN "gfx/pokemon/starmie/front.animated.2bpp.lz"
SwabluFrontpic:      INCBIN "gfx/pokemon/swablu/front.animated.2bpp.lz"
SwabluBackpic:       INCBIN "gfx/pokemon/swablu/back.2bpp.lz"
BikerBossPic:        INCBIN "gfx/trainers/biker_boss.2bpp.lz"
TogekissFrontpic:    INCBIN "gfx/pokemon/togekiss/front.animated.2bpp.lz"
AltariaFrontpic:     INCBIN "gfx/pokemon/altaria/front.animated.2bpp.lz"
AltariaBackpic:      INCBIN "gfx/pokemon/altaria/back.2bpp.lz"
KotoraFrontpic:      INCBIN "gfx/pokemon/kotora/front.animated.2bpp.lz"
KotoraBackpic:       INCBIN "gfx/pokemon/kotora/back.2bpp.lz"
RaitoraFrontpic:     INCBIN "gfx/pokemon/raitora/front.animated.2bpp.lz"
RaitoraBackpic:      INCBIN "gfx/pokemon/raitora/back.2bpp.lz"
GorotoraFrontpic:    INCBIN "gfx/pokemon/gorotora/front.animated.2bpp.lz"
GorotoraBackpic:     INCBIN "gfx/pokemon/gorotora/back.2bpp.lz"
LotadFrontpic:       INCBIN "gfx/pokemon/lotad/front.animated.2bpp.lz"
LotadBackpic:        INCBIN "gfx/pokemon/lotad/back.2bpp.lz"
LombreFrontpic:      INCBIN "gfx/pokemon/lombre/front.animated.2bpp.lz"
LombreBackpic:       INCBIN "gfx/pokemon/lombre/back.2bpp.lz"


SECTION "Pics 30", ROMX

LudicoloFrontpic:    INCBIN "gfx/pokemon/ludicolo/front.animated.2bpp.lz"
LudicoloBackpic:     INCBIN "gfx/pokemon/ludicolo/back.2bpp.lz"
FarigirafFrontpic:   INCBIN "gfx/pokemon/farigiraf/front.animated.2bpp.lz"
FarigirafBackpic:    INCBIN "gfx/pokemon/farigiraf/back.2bpp.lz"
WyrdeerFrontpic:     INCBIN "gfx/pokemon/wyrdeer/front.animated.2bpp.lz"
WyrdeerBackpic:      INCBIN "gfx/pokemon/wyrdeer/back.2bpp.lz"
UrsalunaFrontpic:    INCBIN "gfx/pokemon/ursaluna/front.animated.2bpp.lz"
UrsalunaBackpic:     INCBIN "gfx/pokemon/ursaluna/back.2bpp.lz"
DudunsparsFrontpic:  INCBIN "gfx/pokemon/dudunspars/front.animated.2bpp.lz"
DudunsparsBackpic:   INCBIN "gfx/pokemon/dudunspars/back.2bpp.lz"
AnnihilapeFrontpic:  INCBIN "gfx/pokemon/annihilape/front.animated.2bpp.lz"
AnnihilapeBackpic:   INCBIN "gfx/pokemon/annihilape/back.2bpp.lz"
NownFrontpic:        INCBIN "gfx/pokemon/nown/front.animated.2bpp.lz"
NownBackpic:         INCBIN "gfx/pokemon/nown/back.2bpp.lz"
ChampionDracoPic:    INCBIN "gfx/trainers/champion_draco.2bpp.lz"
LancePic:            INCBIN "gfx/trainers/lance.2bpp.lz"
KnightPic:           INCBIN "gfx/trainers/knight.2bpp.lz"
EngineerPic:         INCBIN "gfx/trainers/engineer.2bpp.lz"
DelinquentPic:       INCBIN "gfx/trainers/delinquent.2bpp.lz"
DaisyPic:            INCBIN "gfx/trainers/daisy.2bpp.lz"
LilyPic:             INCBIN "gfx/trainers/lily.2bpp.lz"
RoughneckPic:        INCBIN "gfx/trainers/roughneck.2bpp.lz"
SoldierPic:          INCBIN "gfx/trainers/soldier.2bpp.lz"
KarateKingPic:       INCBIN "gfx/trainers/karate_king.2bpp.lz"
FerropexolaPic:      INCBIN "gfx/trainers/ferropexola.2bpp.lz"
SchoolgirlPic:       INCBIN "gfx/trainers/schoolgirl.2bpp.lz"
CyndaquilFrontpic:   INCBIN "gfx/pokemon/cyndaquil/front.animated.2bpp.lz"
RioluFrontpic:       INCBIN "gfx/pokemon/riolu/front.animated.2bpp.lz"

SECTION "Unown Pics 2", ROMX

BasculinBBackpic:    INCBIN "gfx/pokemon/basculin_b/back.2bpp.lz"
BasculinRBackpic:    INCBIN "gfx/pokemon/basculin_r/back.2bpp.lz"
YanmegaFrontpic:     INCBIN "gfx/pokemon/yanmega/front.animated.2bpp.lz"
YanmegaBackpic:      INCBIN "gfx/pokemon/yanmega/back.2bpp.lz"
CooltrainerfPic:     INCBIN "gfx/trainers/cooltrainer_f.2bpp.lz"
ElectrodeFrontpic:   INCBIN "gfx/pokemon/electrode/front.animated.2bpp.lz"
DreepyFrontpic:      INCBIN "gfx/pokemon/dreepy/front.animated.2bpp.lz"
DreepyBackpic:       INCBIN "gfx/pokemon/dreepy/back.2bpp.lz"
DrakloakFrontpic:    INCBIN "gfx/pokemon/drakloak/front.animated.2bpp.lz"
DrakloakBackpic:     INCBIN "gfx/pokemon/drakloak/back.2bpp.lz"
DragapultFrontpic:   INCBIN "gfx/pokemon/dragapult/front.animated.2bpp.lz"
DragapultBackpic:    INCBIN "gfx/pokemon/dragapult/back.2bpp.lz"
