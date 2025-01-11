AbilityDescriptions:
	dw NoAbilityDesc
	dw OvergrowDesc
	dw LongReachDesc
	dw BlazeDesc
	dw ThickFatDesc
	dw RecklessDesc
	dw TorrentDesc
	dw DampDesc
	dw SwiftSwimDesc
	dw KeenEyeDesc
	dw SkillLinkDesc
	dw SheerForceDesc
	dw VitalSpiritDesc
	dw RunAwayDesc
	dw IntimidateDesc
	dw ScrappyDesc
	dw LimberDesc
	dw UnburdenDesc
	dw PranksterDesc
	dw SturdyDesc
	dw WeakArmorDesc
	dw SandForceDesc
	dw SandRushDesc
	dw MoldBreakerDesc
	dw GutsDesc
	dw IronFistDesc
	dw SwarmDesc
	dw ChlorophyllDesc
	dw OvercoatDesc
	dw PoisonPointDesc
	dw SpeedBoostDesc
	dw InfiltratorDesc
	dw TintedLensDesc
	dw AdaptabilityDesc
	dw RockHeadDesc
	dw RattledDesc
	dw MoxieDesc
	dw WaterAbsorbDesc
	dw MummyDesc
	dw WanderSpiritDesc
	dw SolidRockDesc
	dw DefeatistDesc
	dw TruantDesc
	dw SlowStartDesc
	dw CuteCharmDesc
	dw TechnicianDesc
	dw MagicGuardDesc
	dw RegeneratorDesc
	dw LevitateDesc
	dw IceBodyDesc
	dw SnowWarningDesc
	dw DrizzleDesc
	dw DroughtDesc
	dw SandstreamDesc
	dw ShellArmorDesc
	dw NoGuardDesc
	dw EffectSporeDesc
	dw CursedBodyDesc
	dw IronBarbsDesc
	dw CompoundEyesDesc
	dw ClearBodyDesc
	dw SynchronizeDesc
	dw AnalyticDesc
	dw FlashFireDesc
	dw FlameBodyDesc
	dw RivalryDesc
	dw HydrationDesc
	dw StickyHoldDesc
	dw StaticDesc
	dw InnerFocusDesc
	dw KlutzDesc
	dw PressureDesc
	dw DefiantDesc
	dw HustleDesc
	dw JustifiedDesc
	dw VoltAbsorbDesc
	dw MagnetPullDesc
	dw ObliviousDesc
	dw OwnTempoDesc
	dw SteadfastDesc
	dw EarlyBirdDesc
	dw TangledFeetDesc
	dw GluttonyDesc
	dw AlchemyDesc
	dw PoisonTouchDesc
	dw HyperCutterDesc
	dw VitalSpiritDesc
	dw SoundproofDesc
	dw LightningRodDesc
	dw ShellArmorDesc
	dw CloudNineDesc
	dw NeutralGasDesc
	dw StenchDesc
	dw SereneGraceDesc
	dw NaturalCureDesc
	dw SniperDesc
	dw FilterDesc
	dw ScreenCleanDesc
	dw SharpnessDesc
	dw MotorDriveDesc
	dw AngerPointDesc
	dw QuickFeetDesc
	dw SnowCloakDesc
	dw LeafGuardDesc
	dw TraceDesc
	dw DownloadDesc
	dw ShedSkinDesc
	dw RainDishDesc
	dw MagicBounceDesc
	dw SuperLuckDesc
	dw UnnerveDesc
	dw PickUpDesc
	dw PixilateDesc
	dw SapSipperDesc
	dw HugePowerDesc
	dw SandVeilDesc
	dw HeatProofDesc
	dw UnawareDesc
	dw DrySkinDesc
	dw ShieldDustDesc
	dw FriskDesc
	dw AftermathDesc
	dw RefrigerateDesc
	dw GalvanizeDesc
	dw ImmunityDesc
	dw PoisonHealDesc
	dw RoughSkinDesc
	dw SuctionCupsDesc
	dw EarthEaterDesc
	dw MarvelScaleDesc
	dw WaterVeilDesc
	dw DisguiseDesc
	dw GooeyDesc
	dw PerishBodyDesc
	dw SlushRushDesc

NoAbilityDesc:
	db    "No ability."
	next1 "@"

OvergrowDesc:
	db    "Powers up Grass"
	next1 "moves in a pinch.@"

LongReachDesc:
	db    "Ignores contact"
	next1 "when attacking.@"

BlazeDesc:
	db    "Powers up Fire"
	next1 "moves in a pinch.@"

ThickFatDesc:
	db    "Reduces Fire and"
	next1 "Ice move damage.@"

RecklessDesc:
	db    "Powers up recoil"
	next1 "damage moves.@"

TorrentDesc:
	db    "Powers up Water"
	next1 "moves in a pinch.@"

DampDesc:
	db    "Prevents self-"
	next1 "destruction moves.@"

SwiftSwimDesc:
	db    "Increases Speed"
	next1 "in rain.@"

KeenEyeDesc:
	db    "Prevents loss of"
	next1 "accuracy.@"

SkillLinkDesc:
	db    "Multistrike moves"
	next1 "hit 5 times.@"

SheerForceDesc:
	db    "Remove move effect"
	next1 "for stronger move.@"

VitalSpiritDesc:
	db    "Prevents #mon"
	next1 "from sleeping.@"

RunAwayDesc:
	db    "Easier to run"
	next1 "away from battles.@"

IntimidateDesc:
	db    "Lowers foe's"
	next1 "Attack stat.@"

ScrappyDesc:
	db    "Ignores immunity"
	next1 "of Ghost types.@"

LimberDesc:
	db    "Prevents"
	next1 "paralysis.@"

UnburdenDesc:
	db    "Increases Speed if"
	next1 "held item is used.@"

PranksterDesc:
	db    "Increases priority"
	next1 "of status moves.@"

SturdyDesc:
	db    "Prevents 1-hit"
	next1 "KO moves.@"

WeakArmorDesc:
	db    "Attacks lower Def"
	next1 "and raise Speed.@"

SandForceDesc:
	db    "Certain moves"
	next1 "power up in sand.@"

SandRushDesc:
	db    "Speed is raised"
	next1 "in sand.@"

MoldBreakerDesc:
	db    "Ignores opponent's"
	next1 "ability.@"

GutsDesc:
	db    "Status problems"
	next1 "increase Attack.@"

IronFistDesc:
	db    "Increase power of"
	next1 "punching moves.@"

SwarmDesc:
	db    "Powers up Bug"
	next1 "moves in a pinch.@"

ChlorophyllDesc:
	db    "Raises Speed in"
	next1 "sunlight.@"

OvercoatDesc:
	db    "Protects from sand"
	next1 "and powders.@"

PoisonPointDesc:
	db    "Contact moves can"
	next1 "poison the user.@"

SpeedBoostDesc:
	db    "Speed is increased"
	next1 "each turn.@"

InfiltratorDesc:
	db    "Ignores foe's"
	next1 "barriers.@"

TintedLensDesc:
	db    "Powers up not-very"
	next1 "effective moves.@"

AdaptabilityDesc:
	db    "Powers up moves of"
	next1 "the same type.@"

RockHeadDesc:
	db    "Prevents recoil"
	next1 "damage.@"

RattledDesc:
	db    "Dark, Bug, & Ghost"
	next1 "moves raise Speed.@"

MoxieDesc:
	db    "Raises Attack with"
	next1 "each fainted for.@"

WaterAbsorbDesc:
	db    "Water type moves"
	next1 "restore HP.@"

MummyDesc:
	db    "Contact changes"
	next1 "foe's ability.@"

WanderSpiritDesc:
	db    "Contacting foe"
	next1 "changes ability.@"

SolidRockDesc:
	db    "Reduces super-"
	next1 "effective damage.@"

DefeatistDesc:
	db    "Stats fall after"
	next1 "enough damage.@"

TruantDesc:
	db    "Only attacks every"
	next1 "other turn.@"

SlowStartDesc:
	db    "Lower stats for"
	next1 "first 5 turns.@"

CuteCharmDesc:
	db    "Infatuates upon"
	next1 "contact.@"

TechnicianDesc:
	db    "Weaker moves are"
	next1 "powered up.@"

MagicGuardDesc:
	db    "Only takes damage"
	next1 "from attacks.@"

RegeneratorDesc:
	db    "Restores 33% HP"
	next1 "upon retreating.@"

LevitateDesc:
	db    "Cannot be hit by"
	next1 "Ground type moves.@"

IceBodyDesc:
	db    "Restores HP during"
	next1 "Hail.@"

SnowWarningDesc:
	db    "Sets up Hail when"
	next1 "entering battle.@"

DrizzleDesc:
	db    "Sets up rain when"
	next1 "entering battle.@"

DroughtDesc:
	db    "Sets up Sun when"
	next1 "entering battle.@"

SandstreamDesc:
	db    "Sets up Sand when"
	next1 "entering battle.@"

ShellArmorDesc:
	db    "Blocks critical"
	next1 "hits.@"

NoGuardDesc:
	db    "Moves can't miss,"
	next1 "for or against.@"

EffectSporeDesc:
	db    "Contact causes"
	next1 "status conditions.@"

CursedBodyDesc:
	db    "Contact disables"
	next1 "last move used.@"

IronBarbsDesc:
	db    "Contact moves will"
	next1 "damage the user.@"

CompoundEyesDesc:
	db    "Increases the"
	next1 "accuracy of moves.@"

ClearBodyDesc:
	db    "Prevents stats"
	next1 "from lowering.@"

SynchronizeDesc:
	db    "Passes on status"
	next1 "conditions.@"

AnalyticDesc:
	db    "Boosts power if"
	next1 "user moves last.@"

FlashFireDesc:
	db    "Fire moves boost"
	next1 "Special Attack.@"

FlameBodyDesc:
	db    "Contact moves"
	next1 "cause burns.@"

RivalryDesc:
	db    "Raises Attack with"
	next1 "same gender foe.@"

HydrationDesc:
	db    "Rain heals status"
	next1 "problems.@"

StickyHoldDesc:
	db    "Prevents theft of"
	next1 "items.@"

StaticDesc:
	db    "Contact move"
	next1 "cause paralysis.@"

InnerFocusDesc:
	db    "Prevents"
	next1 "flinching.@"

KlutzDesc:
	db    "Can't use held"
	next1 "items.@"

PressureDesc:
	db    "Foe's moves use"
	next1 "2 PP.@"

DefiantDesc:
	db    "Attack rises when"
	next1 "stats are lowered.@"

HustleDesc:
	db    "Attack raise while"
	next1 "accuracy lowers.@"

JustifiedDesc:
	db    "Raises Attack when"
	next1 "hit by Dark moves.@"

VoltAbsorbDesc:
	db    "Electric type"
	next1 "moves restore HP.@"

MagnetPullDesc:
	db    "Steel type #mon"
	next1 "can't switch.@"

ObliviousDesc:
	db    "Can't be"
	next1 "infatuated.@"

OwnTempoDesc:
	db    "Can't be confused."
	next1 "@"

SteadfastDesc:
	db    "Flinching raises"
	next1 "Speed.@"

EarlyBirdDesc:
	db    "Wakes up early"
	next1 "from sleeping.@"

TangledFeetDesc:
	db    "Raises evasion"
	next1 "when confused.@"

GluttonyDesc:
	db    "Eats Berries"
	next1 "earlier.@"

AlchemyDesc:
	db    "Steals ability"
	next1 "upon KO.@"

PoisonTouchDesc:
	db    "Contacting foe"
	next1 "can poison.@"

HyperCutterDesc:
	db    "Prevents Attack"
	next1 "from lowering.@"

SoundproofDesc:
	db    "Ignores sound-"
	next1 "based moves.@"

LightningRodDesc:
	db    "Electric moves"
	next1 "increase Sp.Atk.@"

CloudNineDesc:
	db    "Eliminates weather"
	next1 "effects.@"

NeutralGasDesc:
	db    "Neutralizes"
	next1 "abilities.@"

StenchDesc:
	db    "May cause foe to"
	next1 "flinch.@"

SereneGraceDesc:
	db    "Promotes moves'"
	next1 "added effects.@"

NaturalCureDesc:
	db    "Switching heals"
	next1 "status conditions.@"

SniperDesc:
	db    "Increases chance"
	next1 "of critical hits.@"

FilterDesc:
	db    "Reduces super-"
	next1 "effective damage.@"

ScreenCleanDesc:
	db    "Removes screens"
	next1 "upon entering.@"

SharpnessDesc:
	db    "Powers up slashing"
	next1 "moves.@"

MotorDriveDesc:
	db    "Electric moves"
	next1 "raise Speed.@"

AngerPointDesc:
	db    "Critical hits"
	next1 "raise Attack.@"

QuickFeetDesc:
	db    "Status conditions"
	next1 "raise Speed.@"

SnowCloakDesc:
	db    "Raises evasion in"
	next1 "Hail.@"

LeafGuardDesc:
	db    "Prevents status in"
	next1 "Sunlight.@"

TraceDesc:
	db    "Copies foe's"
	next1 "ability.@"

DownloadDesc:
	db    "Adjusts power"
	next1 "according to foe.@"

ShedSkinDesc:
	db    "Status conditions"
	next1 "heal as turn ends.@"

RainDishDesc:
	db    "Heals HP in rain."
	next1 "@"

MagicBounceDesc:
	db    "Status moves are"
	next1 "reflected.@"

SuperLuckDesc:
	db    "Increases chances"
	next1 "of a critical hit.@"

UnnerveDesc:
	db    "Foe cannot eat"
	next1 "berries.@"

PickUpDesc:
	db    "#mon can pick"
	next1 "up items.@"

PixilateDesc:
	db    "Normal type moves"
	next1 "become Fairy type.@"

SapSipperDesc:
	db    "Grass type moves"
	next1 "will boost Attack.@"

HugePowerDesc:
	db    "Doubles user's"
	next1 "Attack stat.@"

SandVeilDesc:
	db    "Raises evasion in"
	next1 "sand.@"

HeatProofDesc:
	db    "Reduces damage"
	next1 "from Fire moves.@"

UnawareDesc:
	db    "#mon ignores"
	next1 "foe's stat changes.@"

DrySkinDesc:
	db    "Sun deals damage."
	next1 "Rain heals HP.@"

ShieldDustDesc:
	db    "Stops additional"
	next1 "effects.@"

FriskDesc:
	db    "Shows the foe's"
	next1 "held item.@"

AftermathDesc:
	db    "Foe is damaged as"
	next1 "the user faints.@"

RefrigerateDesc:
	db    "Normal type moves"
	next1 "become Ice moves.@"

GalvanizeDesc:
	db    "Normal moves bec-"
	next1 "ome Electric type.@"

ImmunityDesc:
	db    "Immune to being"
	next1 "poisoned.@"

PoisonHealDesc:
	db    "Poison restores HP"
	next1 "instead of damage.@"

RoughSkinDesc:
	db    "Contact moves deal"
	next1 "damage.@"

SuctionCupsDesc:
	db    "Cannot be forced"
	next1 "from battle.@"

EarthEaterDesc:
	db    "Ground type moves"
	next1 "restore HP.@"

MarvelScaleDesc:
	db    "Status problems"
	next1 "increase Defense.@"

WaterVeilDesc:
	db    "Prevents the burn"
	next1 "status.@"

DisguiseDesc:
	db    "Prevents one"
	next1 "attack.@"

GooeyDesc:
	db    "Contact will lower"
	next1 "the foe's Speed.@"

PerishBodyDesc:
	db    "Perish count for"
	next1 "both #mon.@"

SlushRushDesc:
	db    "Raises Speed in"
	next1 "Hail.@"
