MomPhoneCalleeScript:
;	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
;	iftrue .bcec5
;	checkevent EVENT_DUDE_TALKED_TO_YOU
;	iftrue MomPhoneLectureScript
;	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
;	iftrue MomPhoneNoGymQuestScript
	checkevent EVENT_GOT_A_POKEMON_FROM_JUNIPER
	iftrue .bcec5
	sjump MomPhoneNoPokemonScript

.bcec5
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_8
	iftrue MomPhoneHangUpScript
	farwritetext MomPhoneGreetingText
	buttonsound
	getcurlandmarkname STRING_BUFFER_3
	readvar VAR_ROOFPALETTE
	ifequal 1, MomPhonePalette1
	ifequal 2, MomPhonePalette2
	sjump MomPhoneOther

MomPhoneLandmark:
	farwritetext MomPhoneLandmarkText
	buttonsound
	sjump MomPhoneHangUpScript

MomPhonePalette1:
	readvar VAR_MAPGROUP
	ifequal GROUP_MURKROW_VALLEY, .newbark
	ifequal GROUP_CHERRYGROVE_CITY, .cherrygrove
	ifequal GROUP_VIOLET_CITY, .violet
	ifequal GROUP_ZACONIA_CITY, .azalea
	ifequal GROUP_GOLDENROD_CITY, .goldenrod
	farwritetext MomPhoneGenericAreaText
	buttonsound
	sjump MomPhoneHangUpScript

.newbark
	farwritetext MomPhoneNewBarkText
	buttonsound
	sjump MomPhoneHangUpScript

.cherrygrove
	farwritetext MomPhoneCherrygroveText
	buttonsound
	sjump MomPhoneHangUpScript

.violet
	getlandmarkname STRING_BUFFER_4, VIOLET_CITY
	sjump MomPhoneLandmark
.azalea
	getlandmarkname STRING_BUFFER_4, SLOWPOKE_WELL
	sjump MomPhoneLandmark
.goldenrod
	getlandmarkname STRING_BUFFER_4, RADIO_TOWER
	sjump MomPhoneLandmark

MomPhonePalette2:
	farwritetext MomOtherAreaText
	buttonsound
	sjump MomPhoneHangUpScript

MomPhoneOther:
	farwritetext MomDeterminedText
	buttonsound
	sjump MomPhoneHangUpScript

MomSavingMoney:
	checkflag ENGINE_MOM_SAVING_MONEY
	iffalse .NotSaving
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .SavingHasMoney
	sjump .SavingNoMoney

.NotSaving:
	checkmoney MOMS_MONEY, 0
	ifequal HAVE_MORE, .HasMoney
	sjump .NoMoney

.SavingHasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomCheckBalanceText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.SavingNoMoney:
	farwritetext MomImportantToSaveText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.NoMoney:
	farwritetext MomYoureNotSavingText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

.HasMoney:
	getmoney STRING_BUFFER_3, MOMS_MONEY
	farwritetext MomYouveSavedText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript

MomPhoneSaveMoneyScript:
	setflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomOKIllSaveText
	buttonsound
	sjump MomPhoneHangUpScript

MomPhoneWontSaveMoneyScript:
	clearflag ENGINE_MOM_SAVING_MONEY
	farwritetext MomPhoneWontSaveMoneyText
	buttonsound
	sjump MomPhoneHangUpScript

MomPhoneHangUpScript:
	farwritetext MomPhoneHangUpText
	end

MomPhoneNoPokemonScript:
	farwritetext MomPhoneNoPokemonText
	end

MomPhoneNoPokedexScript:
	farwritetext MomPhoneNoPokedexText
	end

MomPhoneNoGymQuestScript:
	farwritetext MomPhoneNoGymQuestText
	end

MomPhoneLectureScript:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	setflag ENGINE_MOM_ACTIVE
	specialphonecall SPECIALCALL_NONE
	farwritetext MomPhoneLectureText
	yesorno
	iftrue MomPhoneSaveMoneyScript
	sjump MomPhoneWontSaveMoneyScript
