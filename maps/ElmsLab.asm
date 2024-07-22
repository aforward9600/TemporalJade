	object_const_def ; object_event constants
	const JUNIPERSLAB_JUNIPER
	const JUNIPERSLAB_BIANCA
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const JUNIPERSLAB_RIVAL

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	db 0 ; callbacks

.MeetElm:
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

ProfJuniperScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue .JuniperFirstText
	writetext ProfJuniperPickText
	waitbutton
	closetext
	end

.JuniperFirstText:
	writetext FirstElmText
	waitbutton
	closetext
	end

BiancaGivesPokeBalls1:
	applymovement JUNIPERSLAB_BIANCA, BiancaWalksRight1
	turnobject PLAYER, DOWN
	scall BiancaGivesYouPokeBalls
	applymovement JUNIPERSLAB_BIANCA, BiancaWalksLeft1
	end

BiancaGivesPokeBalls2:
	applymovement JUNIPERSLAB_BIANCA, BiancaWalksRight2
	turnobject PLAYER, DOWN
	scall BiancaGivesYouPokeBalls
	applymovement JUNIPERSLAB_BIANCA, BiancaWalksLeft2
	end

BiancaGivesYouPokeBalls:
	opentext
	writetext HereAreYourPokeBallsText
	buttonsound
	getitemname STRING_BUFFER_4, POKE_BALL
	scall BiancaGivesPokeBalls3
	giveitem POKE_BALL, 10
	writetext BiancaGoodLuckText
	buttonsound
	itemnotify
	closetext
	setscene SCENE_JUNIPERSLAB_NOTHING
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	end

BiancaGivesPokeBalls3:
	jumpstd receiveitem
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

TepigPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue LookAtElmPokeBallScript
	turnobject JUNIPERSLAB_JUNIPER, DOWN
	refreshscreen
	pokepic TEPIG
	cry TEPIG
	waitbutton
	closepokepic
	opentext
	writetext TakeTepigText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_TEPIG_FROM_JUNIPER
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, TEPIG
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke MINCCINO, 5, ORAN_BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, .turnplayer
	applymovement PLAYER, AfterTepigMovement
.turnplayer
	turnobject PLAYER, UP
	pause 10
	applymovement JUNIPERSLAB_RIVAL, RivalGetsMudkipMovement
	opentext
	writetext IllTakeThisOneText
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL2
	opentext
	getmonname STRING_BUFFER_3, MUDKIP
	writetext RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	applymovement JUNIPERSLAB_RIVAL, AfterRowletMovement
	sjump JuniperAfterStarter

MudkipPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue LookAtElmPokeBallScript
	turnobject JUNIPERSLAB_JUNIPER, DOWN
	refreshscreen
	pokepic MUDKIP
	cry MUDKIP
	waitbutton
	closepokepic
	opentext
	writetext TakeMudkipText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, MUDKIP
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke CINCCINO, 5, ORAN_BERRY
	closetext
	applymovement PLAYER, AfterRivalTepigMovement
	pause 10
	applymovement JUNIPERSLAB_RIVAL, RivalGetsRowletMovement
	opentext
	writetext IllTakeThisOneText
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL3
	opentext
	getmonname STRING_BUFFER_3, ROWLET
	writetext RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	applymovement JUNIPERSLAB_RIVAL, AfterRivalRowletMovement
	sjump JuniperAfterStarter

RowletPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue LookAtElmPokeBallScript
	turnobject JUNIPERSLAB_JUNIPER, DOWN
	refreshscreen
	pokepic ROWLET
	cry ROWLET
	waitbutton
	closepokepic
	opentext
	writetext TakeRowletText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_ROWLET_FROM_JUNIPER
	writetext ChoseStarterText
	buttonsound
	waitsfx
	getmonname STRING_BUFFER_3, ROWLET
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	givepoke ROWLET, 5, ORAN_BERRY
	closetext
	applymovement PLAYER, AfterRowletMovement
	pause 10
	applymovement JUNIPERSLAB_RIVAL, RivalGetsTepigMovement
	opentext
	writetext IllTakeThisOneText
	waitbutton
	closetext
	disappear ELMSLAB_POKE_BALL1
	opentext
	getmonname STRING_BUFFER_3, TEPIG
	writetext RivalReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	buttonsound
	closetext
	applymovement JUNIPERSLAB_RIVAL, AfterRivalTepigMovement
	sjump JuniperAfterStarter

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

JuniperAfterStarter:
	setevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	setmapscene MURKROW_VALLEY, SCENE_FINISHED
	opentext
	writetext HereIsYourPokedexText
	buttonsound
	waitsfx
	writetext GotPokedexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext StartYourJourneyText
	waitbutton
	closetext
	pause 10
	turnobject JUNIPERSLAB_RIVAL, RIGHT
	turnobject PLAYER, LEFT
	opentext
	writetext JuniperLabBattleText
	waitbutton
	closetext
	checkflag ENGINE_PLAYER_IS_FEMALE
	iftrue .PlayerIsFemale
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .JuniperLabRowletBattle
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .JuniperLabMudkipBattle
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer RIVAL3, RIVAL3_A_TEPIG
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.JuniperLabMudkipBattle:
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer RIVAL3, RIVAL3_A_MUDKIP
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.JuniperLabRowletBattle:
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer RIVAL3, RIVAL3_A_ROWLET
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.PlayerIsFemale:
	checkevent EVENT_GOT_MUDKIP_FROM_JUNIPER
	iftrue .JuniperLabRowletBattleFemale
	checkevent EVENT_GOT_TEPIG_FROM_JUNIPER
	iftrue .JuniperLabMudkipBattleFemale
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer STEVE, STEVE_ROWLET
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.JuniperLabMudkipBattleFemale:
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer RIVAL4, RIVAL4_A_MUDKIP
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.JuniperLabRowletBattleFemale:
	winlosstext JuniperLabRivalWinText, JuniperLabRivalLoseText
	setlasttalked JUNIPERSLAB_RIVAL
	loadtrainer RIVAL4, RIVAL4_A_ROWLET
	loadvar VAR_BATTLETYPE, BATTLETYPE_CANLOSE
	startbattle
	reloadmap
	iftrue .AfterVictorious
	sjump .AfterYourDefeat

.AfterVictorious:
	opentext
	writetext JuniperLabBetterLuckNextTimeText
	waitbutton
	closetext
	sjump .FinishRival

.AfterYourDefeat:
	opentext
	writetext JuniperLabRivalWonText
	waitbutton
	closetext
.FinishRival:
	special HealParty
	pause 10
	applymovement JUNIPERSLAB_RIVAL, OfficerLeavesMovement
	disappear JUNIPERSLAB_RIVAL
	setevent EVENT_BEAT_LAB_RIVAL
	setscene SCENE_JUNIPERSLAB_AIDE_GIVES_POTION
	turnobject PLAYER, UP
	opentext
	writetext JuniperGivesPhoneNumber
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotJunipersNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

JunipersLabBiancaScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue .JunipersLabBianca2
	writetext JunipersLabBiancaText1
	waitbutton
	closetext
	end

.JunipersLabBianca2:
	writetext JunipersLabBiancaText2
	waitbutton
	closetext
	end

JunipersLabRivalScript:
	jumptextfaceplayer JunipersLabRivalText3

MeetJuniperScript:
	applymovement PLAYER, MeetJuniperScript_WalkRight

MeetJuniperScript2:
	applymovement PLAYER, MeetJuniperScript_WalkUp
	turnobject JUNIPERSLAB_RIVAL, RIGHT
	opentext
	writetext JunipersLabRivalText1
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, UP
	turnobject JUNIPERSLAB_RIVAL, UP
	pause 10
	opentext
	writetext JunipersLabGreetingsText
	waitbutton
	closetext
	pause 10
	turnobject PLAYER, LEFT
	turnobject JUNIPERSLAB_RIVAL, RIGHT
	opentext
	writetext JunipersLabRivalText2
	waitbutton
	closetext
	setscene SCENE_JUNIPERSLAB_CANT_LEAVE
	end

ElmsLabWindow:
	opentext
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

JunipersLabCantLeaveScript:
	opentext
	writetext JunipersLabCantLeaveText
	waitbutton
	closetext
	applymovement PLAYER, JunipersLab_CantLeaveMovement
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2:
; unused
	jumpstd trashcan

ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

JunipersLab_CantLeaveMovement:
	step UP
	step_end

MeetJuniperScript_WalkRight:
	step RIGHT
	step_end

MeetJuniperScript_WalkUp:
	step UP
	step UP
	turn_head LEFT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

BiancaWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

BiancaWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

BiancaWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

RivalGetsMudkipMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

BiancaWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterTepigMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterRivalTepigMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterRowletMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

RivalGetsTepigMovement:
	step DOWN
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

RivalGetsRowletMovement:
	step DOWN
	step RIGHT
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AfterRivalRowletMovement:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

FirstElmText:
	text "Juniper: Good luck"
	line "on your journey!"

	para "Be sure to call me"
	line "any time you want!"
	done

JunipersLabRivalText1:
	text "<RIVAL>: Took ya"
	line "long enough!"

	para "I was afraid I'd"
	line "have to start"
	cont "without you!"
	done

JunipersLabGreetingsText:
	text "Juniper: Hello,"
	line "<PLAYER>!"

	para "It looks like"
	line "today's the day,"
	cont "huh?"

	para "You've both been"
	line "waiting a while"
	cont "to start your"
	cont "journeys, haven't"
	cont "you?"

	para "Looking to take on"
	line "the #mon"
	cont "League…"

	para "You remind me of a"
	line "group of kids from"
	cont "a few years ago."

	para "My assistant"
	line "Bianca happens to"
	cont "be one of them!"

	para "But enough getting"
	line "lost in the past."

	para "It's time to look"
	line "to the future!"

	para "I have three"
	line "#mon here from"
	cont "around the world."

	para "Pick which one"
	line "shall be your"
	cont "partner!"
	done

JunipersLabRivalText2:
	text "<RIVAL>: Go ahead!"

	para "You make the first"
	line "move!"

	para "It'll give me an"
	line "advantage!"

	para "Heh heh!"
	done

JunipersLabCantLeaveText:
	text "Juniper: Are you"
	line "going to leave"
	cont "without a"
	cont "#mon?"
	done

JunipersLabRivalText3:
	text "<RIVAL>: You still"
	line "haven't picked"
	cont "yet?"
	done

SecondElmText:
	text "Have my notes been"
	line "helpful?"

	para "I look forward to"
	line "learning more"
	cont "about #mon!"
	done

ElmPokeBallText:
	text "It contains a"
	line "#mon caught by"
	cont "Prof.Elm."
	done

TakeRowletText:
	text "Juniper: You'll"
	line "take Rowlet, the"
	cont "grass #mon?"
	done

TakeTepigText:
	text "Juniper: You'll"
	line "take Tepig, the"
	cont "fire #mon?"
	done

TakeMudkipText:
	text "Juniper: You'll"
	line "take Mudkip, the"
	cont "water #mon?"
	done

DidntChooseStarterText:
	text "Think carefully"
	line "before you"
	cont "choose."
	done

ChoseStarterText:
	text "A perfect choice!"
	done

ReceivedStarterText:
	text "<PLAYER> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

IllTakeThisOneText:
	text "<RIVAL>: This one"
	line "is mine!"
	done

RivalReceivedStarterText:
	text "<RIVAL> received"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmsLabHealingMachineText2:
	text "Would you like to"
	line "heal your #mon?"
	done

JunipersLabBiancaText1:
	text "Bianca: Hey,"
	line "<PLAYER>!"

	para "Can you believe"
	line "it's only been"
	cont "2 years since the"
	cont "lab was built?"

	para "This area was"
	line "perfect for our"
	cont "research!"

	para "It's strange to"
	line "think how little"
	cont "technology there"
	cont "was out here."

	para "You guys didn't"
	line "even have internet"
	cont "until we got here!"

	para "You guys adapt"
	line "really well to new"
	cont "technology!"
	done

JunipersLabBiancaText2:
	text "Bianca: I tend to"
	line "travel for the"
	cont "Professor every"
	cont "now and then,"

	para "So you may see me"
	line "elsewhere!"

	para "Good luck on your"
	line "journey!"

	para "Be seein' ya!"
	done

ElmsLabWindowText1:
	text "The window's open."

	para "A pleasant breeze"
	line "is blowing in."
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> opened a"
	line "book."

	para "Eevee is"
	line "incredible!"

	para "It can evolve into"
	line "8 different"
	cont "#mon!"

	para "Water Stone:"
	line "Vaporeon."
	
	para "Thunderstone:"
	line "Jolteon."

	para "Fire Stone:"
	line "Flareon."

	para "Sun Stone:"
	line "Espeon."

	para "Moon Stone:"
	line "Umbreon."

	para "Leaf Stone:"
	line "Leafeon."

	para "Ice Stone:"
	line "Glaceon."

	para "Shiny Stone:"
	line "Sylveon."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> opened a"
	line "book."

	para "Dusk Stone can be"
	line "used to evolve"
	cont "Murkrow, Dusclops"
	cont "and Misdreavus!"

	para "Astounding!"

	para "Shiny Stone can"
	line "be used to evolve"
	cont "Togetic and Eevee!"

	para "Remarkable!"

	para "Dawn Stone can be"
	line "used to evolve"
	cont "Kirlia and"
	cont "Snorunt!"
	
	para "Note: Only male"
	line "Kirlia and female"
	cont "Snorunt evolve by"
	cont "this manner."

	para "Need to research"
	line "further."

	para "Ice Stone can be"
	line "used to evolve"
	cont "Piloswine and"
	cont "Eevee!"

	para "Stupendous!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> opened a"
	line "book."

	para "Link Cable:"

	para "In the past,"
	line "certain #mon"
	cont "required trading"
	cont "between two people"
	cont "to evolve."

	para "In recent years,"
	line "Silph Co. created"
	cont "an artificial"
	cont "device to induce"
	cont "evolution called"
	cont "the Link Cable!"

	para "Kadabra, Machoke,"
	line "Graveler, and"
	cont "Haunter are"
	cont "compatible."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> opened a"
	line "book."

	para "Sneasel and Gligar"
	line "evolve through"
	cont "the use of Razor"
	cont "items, Claw and"
	cont "Fang respectively."

	para "Electabuzz and"
	line "Magmar evolve with"
	cont "Electrizer and"
	cont "Magmarizer"
	cont "respectively."

	para "These items are"
	line "not manufactured"
	cont "in Johto, and are"
	cont "often trafficked"
	cont "from Sinnoh."

	para "So I've heard."
	done

ElmsLabTrashcanText:
	text "The wrapper from"
	line "the snack Prof.Elm"
	cont "ate is in there…"
	done

ElmsLabPCText:
	text "Dear Aurea,"

	para "Your mother and I"
	line "miss you so much."

	para "Perhaps one of"
	line "these days I'll"
	cont "have Skyla take us"
	cont "up there in a"
	cont "private plane!"

	para "Your father,"
	line "Cedric Juniper"
	done

ProfJuniperPickText:
	text "Juniper: Go on and"
	line "pick your partner!"

	para "The choice is all"
	line "yours!"
	done

JuniperLabBattleText:
	text "<RIVAL>: So, which"
	line "of our #mon do"
	cont "you think is"
	cont "stronger?"

	para "Wanna have our"
	line "first battle and"
	cont "find out?"
	done

JuniperLabRivalWinText:
	text "<RIVAL>: Wow, yours"
	line "was definitely"
	cont "stronger!"
	done

JuniperLabRivalLoseText:
	text "<RIVAL>: Looks like"
	line "I was stronger!"
	done

JuniperLabBetterLuckNextTimeText:
	text "<RIVAL>: Better"
	line "luck next time!"

	para "I'm heading to"
	line "the Trainer School"
	cont "for that first"
	cont "Badge."

	para "You might want to"
	line "get some studying"
	cont "in while you're"
	cont "there!"

	para "See ya!"
	done

JuniperLabRivalWonText:
	text "<RIVAL>: I need to"
	line "get stronger, so"
	cont "I'm heading to the"
	cont "Trainer School."

	para "That's where we'll"
	line "get our first"
	cont "Badge!"

	para "See ya there!"
	done

GotPokedexText:
	text "You both received"
	line "a #dex!"
	done

HereIsYourPokedexText:
	text "Juniper: Now that"
	line "that's settled, I"
	cont "have a favor to"
	cont "ask of you two."

	para "While you are on"
	line "your journey,"
	cont "please use this"
	cont "#dex to record"
	cont "data on #mon."

	para "My good friend and"
	line "colleague Prof.Oak"
	cont "developed these!"

	para "They will record"
	line "data on any"
	cont "#mon you find!"

	para "You could call it"
	line "a high-tech"
	cont "encyclopedia!"
	done

StartYourJourneyText:
	text "Since you're just"
	line "getting started,"

	para "might I suggest"
	line "heading to the"
	cont "Moravil Trainer"
	cont "School?"

	para "Just head west on"
	line "Route 24 and you'll"
	cont "end up in Antiquo"
	cont "Town."

	para "It's west from"
	line "there."

	para "Not only will you"
	line "gain #mon"
	cont "knowledge, but"
	cont "there's also a"
	cont "Gym there!"

	para "Bet you didn't"
	line "expect that?"

	para "Well, that's all"
	line "I have to say for"
	cont "now."

	para "Good luck you two!"
	done

HereAreYourPokeBallsText:
	text "Bianca: Oh, silly"
	line "me!"

	para "I almost forgot"
	line "to give you these!"
	done

BiancaGoodLuckText:
	text "You can catch"
	line "#mon with"
	cont "those!"

	para "Weaken the wild"
	line "#mon, and then"
	cont "throw it!"

	para "Good luck!"
	done

JuniperGivesPhoneNumber:
	text "Juniper: Oh,"
	line "before I forget,"
	cont "let me register"
	cont "my number to your"
	cont "#gear."

	para "You can keep in"
	line "touch with me"
	cont "any time!"
	done

GotJunipersNumberText:
	text "<PLAYER> got"
	line "Juniper's number!"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, MURKROW_VALLEY, 1
	warp_event  5, 11, MURKROW_VALLEY, 1

	db 6 ; coord events
	coord_event  4,  5, SCENE_DEFAULT, MeetJuniperScript
	coord_event  5,  5, SCENE_DEFAULT, MeetJuniperScript2
	coord_event  4,  6, SCENE_JUNIPERSLAB_CANT_LEAVE, JunipersLabCantLeaveScript
	coord_event  5,  6, SCENE_JUNIPERSLAB_CANT_LEAVE, JunipersLabCantLeaveScript
	coord_event  4,  8, SCENE_JUNIPERSLAB_AIDE_GIVES_POTION, BiancaGivesPokeBalls1
	coord_event  5,  8, SCENE_JUNIPERSLAB_AIDE_GIVES_POTION, BiancaGivesPokeBalls2

	db 16 ; bg events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	db 6 ; object events
	object_event  5,  2, SPRITE_JUNIPER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfJuniperScript, -1
	object_event  2,  9, SPRITE_BIANCA, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, JunipersLabBiancaScript, EVENT_JUNIPERS_LAB_BIANCA
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TepigPokeBallScript, EVENT_TEPIG_POKEBALL_IN_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, MudkipPokeBallScript, EVENT_MUDKIP_POKEBALL_IN_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, RowletPokeBallScript, EVENT_ROWLET_POKEBALL_IN_LAB
	object_event  4,  3, SPRITE_RIVAL, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, JunipersLabRivalScript, EVENT_JUNIPERS_LAB_RIVAL
