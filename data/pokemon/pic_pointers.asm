; Pics are defined in gfx/pics.asm

	dba EggPic ; EGG is now -3, so it must go *above* the label
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
PokemonPicPointers::
; entries correspond to Pokémon species, two apiece (first index is 0)
	dbw -1, -1 ; unused
	dbw -1, -1 ; unused
	dba RowletFrontpic
	dba RowletBackpic
	dba DartrixFrontpic
	dba DartrixBackpic
	dba DecidueyeFrontpic
	dba DecidueyeBackpic
	dba TepigFrontpic
	dba TepigBackpic
	dba PigniteFrontpic
	dba PigniteBackpic
	dba EmboarFrontpic
	dba EmboarBackpic
	dba MudkipFrontpic
	dba MudkipBackpic
	dba MarshtompFrontpic
	dba MarshtompBackpic
	dba SwampertFrontpic
	dba SwampertBackpic
	dba PikipekFrontpic
	dba PikipekBackpic
	dba TrumbeakFrontpic
	dba TrumbeakBackpic
	dba ToucannonFrontpic
	dba ToucannonBackpic
	dba LillipupFrontpic
	dba LillipupBackpic
	dba HerdierFrontpic
	dba HerdierBackpic
	dba StoutlandFrontpic
	dba StoutlandBackpic
	dba VenipedeFrontpic
	dba VenipedeBackpic
	dba WhirlipedeFrontpic
	dba WhirlipedeBackpic
	dba ScolipedeFrontpic
	dba ScolipedeBackpic
	dba CutieflyFrontpic
	dba CutieflyBackpic
	dba RibombeeFrontpic
	dba RibombeeBackpic
	dba SpearowFrontpic
	dba SpearowBackpic
	dba FearowFrontpic
	dba FearowBackpic
	dba EkansFrontpic
	dba EkansBackpic
	dba ArbokFrontpic
	dba ArbokBackpic
	dba PikachuFrontpic
	dba PikachuBackpic
	dba RaichuFrontpic
	dba RaichuBackpic
	dba DrilburFrontpic
	dba DrilburBackpic
	dba ExcadrillFrontpic
	dba ExcadrillBackpic
	dba NidoranFFrontpic
	dba NidoranFBackpic
	dba NidorinaFrontpic
	dba NidorinaBackpic
	dba NidoqueenFrontpic
	dba NidoqueenBackpic
	dba NidoranMFrontpic
	dba NidoranMBackpic
	dba NidorinoFrontpic
	dba NidorinoBackpic
	dba NidokingFrontpic
	dba NidokingBackpic
	dba CleffaFrontpic
	dba CleffaBackpic
	dba ClefairyFrontpic
	dba ClefairyBackpic
	dba ClefableFrontpic
	dba ClefableBackpic
	dba VulpixFrontpic
	dba VulpixBackpic
	dba NinetalesFrontpic
	dba NinetalesBackpic
	dba IgglybuffFrontpic
	dba IgglybuffBackpic
	dba JigglypuffFrontpic
	dba JigglypuffBackpic
	dba WigglytuffFrontpic
	dba WigglytuffBackpic
	dba ZubatFrontpic
	dba ZubatBackpic
	dba GolbatFrontpic
	dba GolbatBackpic
	dba CrobatFrontpic
	dba CrobatBackpic
	dba CottoneeFrontpic
	dba CottoneeBackpic
	dba WhimsicottFrontpic
	dba WhimsicottBackpic
	dba PetililFrontpic
	dba PetililBackpic
	dba LilligantFrontpic
	dba LilligantBackpic
	dba ParasFrontpic
	dba ParasBackpic
	dba ParasectFrontpic
	dba ParasectBackpic
	dba VenonatFrontpic
	dba VenonatBackpic
	dba VenomothFrontpic
	dba VenomothBackpic
	dba SandygastFrontpic
	dba SandygastBackpic
	dba PalossandFrontpic
	dba PalossandBackpic
	dba MeowthFrontpic
	dba MeowthBackpic
	dba PersianFrontpic
	dba PersianBackpic
	dba PsyduckFrontpic
	dba PsyduckBackpic
	dba GolduckFrontpic
	dba GolduckBackpic
	dba MankeyFrontpic
	dba MankeyBackpic
	dba PrimeapeFrontpic
	dba PrimeapeBackpic
	dba AnnihilapeFrontpic
	dba AnnihilapeBackpic
	dba GrowlitheFrontpic
	dba GrowlitheBackpic
	dba ArcanineFrontpic
	dba ArcanineBackpic
	dba PoliwagFrontpic
	dba PoliwagBackpic
	dba PoliwhirlFrontpic
	dba PoliwhirlBackpic
	dba PoliwrathFrontpic
	dba PoliwrathBackpic
	dba PolitoedFrontpic
	dba PolitoedBackpic
	dba SolosisFrontpic
	dba SolosisBackpic
	dba DuosionFrontpic
	dba DuosionBackpic
	dba ReuniclusFrontpic
	dba ReuniclusBackpic
	dba TimburrFrontpic
	dba TimburrBackpic
	dba GurdurrFrontpic
	dba GurdurrBackpic
	dba ConkeldurrFrontpic
	dba ConkeldurrBackpic
	dba BellsproutFrontpic
	dba BellsproutBackpic
	dba WeepinbellFrontpic
	dba WeepinbellBackpic
	dba VictreebelFrontpic
	dba VictreebelBackpic
	dba TentacoolFrontpic
	dba TentacoolBackpic
	dba TentacruelFrontpic
	dba TentacruelBackpic
	dba GeodudeFrontpic
	dba GeodudeBackpic
	dba GravelerFrontpic
	dba GravelerBackpic
	dba GolemFrontpic
	dba GolemBackpic
	dba PonytaFrontpic
	dba PonytaBackpic
	dba RapidashFrontpic
	dba RapidashBackpic
	dba SlowpokeFrontpic
	dba SlowpokeBackpic
	dba SlowbroFrontpic
	dba SlowbroBackpic
	dba SlowkingFrontpic
	dba SlowkingBackpic
	dba MagnemiteFrontpic
	dba MagnemiteBackpic
	dba MagnetonFrontpic
	dba MagnetonBackpic
	dba MagnezoneFrontpic
	dba MagnezoneBackpic
	dba FarfetchDFrontpic
	dba FarfetchDBackpic
	dba SirfetchDFrontpic
	dba SirfetchDBackpic
	dba DoduoFrontpic
	dba DoduoBackpic
	dba DodrioFrontpic
	dba DodrioBackpic
	dba SeelFrontpic
	dba SeelBackpic
	dba DewgongFrontpic
	dba DewgongBackpic
	dba GrimerFrontpic
	dba GrimerBackpic
	dba MukFrontpic
	dba MukBackpic
	dba MareanieFrontpic
	dba MareanieBackpic
	dba ToxapexFrontpic
	dba ToxapexBackpic
	dba GastlyFrontpic
	dba GastlyBackpic
	dba HaunterFrontpic
	dba HaunterBackpic
	dba GengarFrontpic
	dba GengarBackpic
	dba OnixFrontpic
	dba OnixBackpic
	dba SteelixFrontpic
	dba SteelixBackpic
	dba DrowzeeFrontpic
	dba DrowzeeBackpic
	dba HypnoFrontpic
	dba HypnoBackpic
	dba CorphishFrontpic
	dba CorphishBackpic
	dba CrawdauntFrontpic
	dba CrawdauntBackpic
	dba VoltorbFrontpic
	dba VoltorbBackpic
	dba ElectrodeFrontpic
	dba ElectrodeBackpic
	dba ExeggcuteFrontpic
	dba ExeggcuteBackpic
	dba ExeggutorFrontpic
	dba ExeggutorBackpic
	dba CuboneFrontpic
	dba CuboneBackpic
	dba MarowakFrontpic
	dba MarowakBackpic
	dba ScraggyFrontpic
	dba ScraggyBackpic
	dba ScraftyFrontpic
	dba ScraftyBackpic
	dba RioluFrontpic
	dba RioluBackpic
	dba LucarioFrontpic
	dba LucarioBackpic
	dba LickitungFrontpic
	dba LickitungBackpic
	dba LickilickyFrontpic
	dba LickilickyBackpic
	dba KoffingFrontpic
	dba KoffingBackpic
	dba WeezingFrontpic
	dba WeezingBackpic
	dba RhyhornFrontpic
	dba RhyhornBackpic
	dba RhydonFrontpic
	dba RhydonBackpic
	dba RhyperiorFrontpic
	dba RhyperiorBackpic
	dba HappinyFrontpic
	dba HappinyBackpic
	dba ChanseyFrontpic
	dba ChanseyBackpic
	dba BlisseyFrontpic
	dba BlisseyBackpic
	dba TangelaFrontpic
	dba TangelaBackpic
	dba TangrowthFrontpic
	dba TangrowthBackpic
	dba KangaskhanFrontpic
	dba KangaskhanBackpic
	dba HorseaFrontpic
	dba HorseaBackpic
	dba SeadraFrontpic
	dba SeadraBackpic
	dba KingdraFrontpic
	dba KingdraBackpic
	dba GoldeenFrontpic
	dba GoldeenBackpic
	dba SeakingFrontpic
	dba SeakingBackpic
	dba StaryuFrontpic
	dba StaryuBackpic
	dba StarmieFrontpic
	dba StarmieBackpic
	dba MimeJrFrontpic
	dba MimeJrBackpic
	dba MrMimeFrontpic
	dba MrMimeBackpic
	dba ScytherFrontpic
	dba ScytherBackpic
	dba ScizorFrontpic
	dba ScizorBackpic
	dba SmoochumFrontpic
	dba SmoochumBackpic
	dba JynxFrontpic
	dba JynxBackpic
	dba ElekidFrontpic
	dba ElekidBackpic
	dba ElectabuzzFrontpic
	dba ElectabuzzBackpic
	dba ElectivireFrontpic
	dba ElectivireBackpic
	dba MagbyFrontpic
	dba MagbyBackpic
	dba MagmarFrontpic
	dba MagmarBackpic
	dba MagmortarFrontpic
	dba MagmortarBackpic
	dba PinsirFrontpic
	dba PinsirBackpic
	dba TaurosFrontpic
	dba TaurosBackpic
	dba MagikarpFrontpic
	dba MagikarpBackpic
	dba GyaradosFrontpic
	dba GyaradosBackpic
	dba LaprasFrontpic
	dba LaprasBackpic
	dba DittoFrontpic
	dba DittoBackpic
	dba EeveeFrontpic
	dba EeveeBackpic
	dba VaporeonFrontpic
	dba VaporeonBackpic
	dba JolteonFrontpic
	dba JolteonBackpic
	dba FlareonFrontpic
	dba FlareonBackpic
	dba EspeonFrontpic
	dba EspeonBackpic
	dba UmbreonFrontpic
	dba UmbreonBackpic
	dba LeafeonFrontpic
	dba LeafeonBackpic
	dba GlaceonFrontpic
	dba GlaceonBackpic
	dba SylveonFrontpic
	dba SylveonBackpic
	dba PorygonFrontpic
	dba PorygonBackpic
	dba Porygon2Frontpic
	dba Porygon2Backpic
	dba PorygonZFrontpic
	dba PorygonZBackpic
	dba TirtougaFrontpic
	dba TirtougaBackpic
	dba CarracostaFrontpic
	dba CarracostaBackpic
	dba ArchenFrontpic
	dba ArchenBackpic
	dba ArcheopsFrontpic
	dba ArcheopsBackpic
	dba AerodactylFrontpic
	dba AerodactylBackpic
	dba MunchlaxFrontpic
	dba MunchlaxBackpic
	dba SnorlaxFrontpic
	dba SnorlaxBackpic
	dba ArticunoFrontpic
	dba ArticunoBackpic
	dba ZapdosFrontpic
	dba ZapdosBackpic
	dba MoltresFrontpic
	dba MoltresBackpic
	dba DratiniFrontpic
	dba DratiniBackpic
	dba DragonairFrontpic
	dba DragonairBackpic
	dba DragoniteFrontpic
	dba DragoniteBackpic
	dba MewtwoFrontpic
	dba MewtwoBackpic
	dba MewFrontpic
	dba MewBackpic
	dba ChikoritaFrontpic
	dba ChikoritaBackpic
	dba BayleefFrontpic
	dba BayleefBackpic
	dba MeganiumFrontpic
	dba MeganiumBackpic
	dba CyndaquilFrontpic
	dba CyndaquilBackpic
	dba QuilavaFrontpic
	dba QuilavaBackpic
	dba TyphlosionFrontpic
	dba TyphlosionBackpic
	dba TotodileFrontpic
	dba TotodileBackpic
	dba CroconawFrontpic
	dba CroconawBackpic
	dba FeraligatrFrontpic
	dba FeraligatrBackpic
	dba SentretFrontpic
	dba SentretBackpic
	dba FurretFrontpic
	dba FurretBackpic
	dba HoothootFrontpic
	dba HoothootBackpic
	dba NoctowlFrontpic
	dba NoctowlBackpic
	dba KarrablastFrontpic
	dba KarrablastBackpic
	dba EscavalierFrontpic
	dba EscavalierBackpic
	dba ShelmetFrontpic
	dba ShelmetBackpic
	dba AccelgorFrontpic
	dba AccelgorBackpic
	dba ChinchouFrontpic
	dba ChinchouBackpic
	dba LanturnFrontpic
	dba LanturnBackpic
	dba TogepiFrontpic
	dba TogepiBackpic
	dba TogeticFrontpic
	dba TogeticBackpic
	dba TogekissFrontpic
	dba TogekissBackpic
	dba NatuFrontpic
	dba NatuBackpic
	dba XatuFrontpic
	dba XatuBackpic
	dba MareepFrontpic
	dba MareepBackpic
	dba FlaaffyFrontpic
	dba FlaaffyBackpic
	dba AmpharosFrontpic
	dba AmpharosBackpic
	dba AbsolFrontpic
	dba AbsolBackpic
	dba MarillFrontpic
	dba MarillBackpic
	dba AzumarillFrontpic
	dba AzumarillBackpic
	dba BonslyFrontpic
	dba BonslyBackpic
	dba SudowoodoFrontpic
	dba SudowoodoBackpic
	dba LitwickFrontpic
	dba LitwickBackpic
	dba LampentFrontpic
	dba LampentBackpic
	dba ChandelureFrontpic
	dba ChandelureBackpic
	dba AipomFrontpic
	dba AipomBackpic
	dba AmbipomFrontpic
	dba AmbipomBackpic
	dba SunkernFrontpic
	dba SunkernBackpic
	dba SunfloraFrontpic
	dba SunfloraBackpic
	dba YanmaFrontpic
	dba YanmaBackpic
	dba YanmegaFrontpic
	dba YanmegaBackpic
	dba WooperFrontpic
	dba WooperBackpic
	dba QuagsireFrontpic
	dba QuagsireBackpic
	dba MurkrowFrontpic
	dba MurkrowBackpic
	dba HonchkrowFrontpic
	dba HonchkrowBackpic
	dba MisdreavusFrontpic
	dba MisdreavusBackpic
	dba MismagiusFrontpic
	dba MismagiusBackpic

	; Unown pics have their own table. See UnownPicPointers
	dbw -1, -1
	dbw -1, -1

	dba BasclegionFrontpic
	dba BasclegionBackpic
	dba SkorupiFrontpic
	dba SkorupiBackpic
	dba DrapionFrontpic
	dba DrapionBackpic
	dba GirafarigFrontpic
	dba GirafarigBackpic
	dba FarigirafFrontpic
	dba FarigirafBackpic
	dba PinecoFrontpic
	dba PinecoBackpic
	dba ForretressFrontpic
	dba ForretressBackpic
	dba DunsparceFrontpic
	dba DunsparceBackpic
	dba DudunsparsFrontpic
	dba DudunsparsBackpic
	dba GligarFrontpic
	dba GligarBackpic
	dba GliscorFrontpic
	dba GliscorBackpic
	dba SnubbullFrontpic
	dba SnubbullBackpic
	dba GranbullFrontpic
	dba GranbullBackpic
	dba QwilfishFrontpic
	dba QwilfishBackpic
	dba OverqwilFrontpic
	dba OverqwilBackpic
	dba HeracrossFrontpic
	dba HeracrossBackpic
	dba SneaselFrontpic
	dba SneaselBackpic
	dba WeavileFrontpic
	dba WeavileBackpic
	dba TeddiursaFrontpic
	dba TeddiursaBackpic
	dba UrsaringFrontpic
	dba UrsaringBackpic
	dba UrsalunaFrontpic
	dba UrsalunaBackpic
	dba SlugmaFrontpic
	dba SlugmaBackpic
	dba MagcargoFrontpic
	dba MagcargoBackpic
	dba SwinubFrontpic
	dba SwinubBackpic
	dba PiloswineFrontpic
	dba PiloswineBackpic
	dba MamoswineFrontpic
	dba MamoswineBackpic
	dba CorsolaFrontpic
	dba CorsolaBackpic
	dba CursolaFrontpic
	dba CursolaBackpic
	dba RemoraidFrontpic
	dba RemoraidBackpic
	dba OctilleryFrontpic
	dba OctilleryBackpic
	dba OrthwormFrontpic
	dba OrthwormBackpic
	dba LarvestaFrontpic
	dba LarvestaBackpic
	dba VolcaronaFrontpic
	dba VolcaronaBackpic
	dba SkarminiFrontpic
	dba SkarminiBackpic
	dba SkarmoryFrontpic
	dba SkarmoryBackpic
	dba HoundourFrontpic
	dba HoundourBackpic
	dba HoundoomFrontpic
	dba HoundoomBackpic
	dba PhanpyFrontpic
	dba PhanpyBackpic
	dba DonphanFrontpic
	dba DonphanBackpic
	dba StantlerFrontpic
	dba StantlerBackpic
	dba WyrdeerFrontpic
	dba WyrdeerBackpic
	dba SmeargleFrontpic
	dba SmeargleBackpic
	dba MiltankFrontpic
	dba MiltankBackpic
	dba KotoraFrontpic
	dba KotoraBackpic
	dba RaitoraFrontpic
	dba RaitoraBackpic
	dba GorotoraFrontpic
	dba GorotoraBackpic
	dba BudewFrontpic
	dba BudewBackpic
	dba RoseliaFrontpic
	dba RoseliaBackpic
	dba RoseradeFrontpic
	dba RoseradeBackpic
	dba ElectrikeFrontpic
	dba ElectrikeBackpic
	dba ManectricFrontpic
	dba ManectricBackpic
	dba CroagunkFrontpic
	dba CroagunkBackpic
	dba ToxicroakFrontpic
	dba ToxicroakBackpic
	dba SwabluFrontpic
	dba SwabluBackpic
	dba AltariaFrontpic
	dba AltariaBackpic
	dba DuskullFrontpic
	dba DuskullBackpic
	dba DusclopsFrontpic
	dba DusclopsBackpic
	dba DusknoirFrontpic
	dba DusknoirBackpic
	dba LotadFrontpic
	dba LotadBackpic
	dba LombreFrontpic
	dba LombreBackpic
	dba LudicoloFrontpic
	dba LudicoloBackpic
	dba SnoruntFrontpic
	dba SnoruntBackpic
	dba GlalieFrontpic
	dba GlalieBackpic
	dba FroslassFrontpic
	dba FroslassBackpic
	dba BronzorFrontpic
	dba BronzorBackpic
	dba BronzongFrontpic
	dba BronzongBackpic
	dba CacneaFrontpic
	dba CacneaBackpic
	dba CacturneFrontpic
	dba CacturneBackpic
	dba RaltsFrontpic
	dba RaltsBackpic
	dba KirliaFrontpic
	dba KirliaBackpic
	dba GardevoirFrontpic
	dba GardevoirBackpic
	dba GalladeFrontpic
	dba GalladeBackpic
	dba AronFrontpic
	dba AronBackpic
	dba LaironFrontpic
	dba LaironBackpic
	dba AggronFrontpic
	dba AggronBackpic
	dba RaikouFrontpic
	dba RaikouBackpic
	dba EnteiFrontpic
	dba EnteiBackpic
	dba SuicuneFrontpic
	dba SuicuneBackpic
	dba LarvitarFrontpic
	dba LarvitarBackpic
	dba PupitarFrontpic
	dba PupitarBackpic
	dba TyranitarFrontpic
	dba TyranitarBackpic
	dba GibleFrontpic
	dba GibleBackpic
	dba GabiteFrontpic
	dba GabiteBackpic
	dba GarchompFrontpic
	dba GarchompBackpic
	dba DeinoFrontpic
	dba DeinoBackpic
	dba ZweilousFrontpic
	dba ZweilousBackpic
	dba HydreigonFrontpic
	dba HydreigonBackpic
	dba LugiaFrontpic
	dba LugiaBackpic
	dba HoOhFrontpic
	dba HoOhBackpic
	dba CelebiFrontpic
	dba CelebiBackpic
	dba NownFrontpic
	dba NownBackpic
	dba MissingnoFrontpic
	dba MissingnoBackpic
