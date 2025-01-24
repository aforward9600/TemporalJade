; Multiplier ratios for accuracy from modifier -6 to +6
; (for other stats, see data/battle/stat_multipliers.asm).

AccuracyLevelMultipliers:
	db  33, 100 ; -6 =  33%
	db  36, 100 ; -5 =  36%
	db  43, 100 ; -4 =  43%
	db  50, 100 ; -3 =  50%
	db  60, 100 ; -2 =  60%
	db  75, 100 ; -1 =  75%
	db   1,   1 ;  0 = 100%
	db 133, 100 ; +1 = 133%
	db 166, 100 ; +2 = 166%
	db   2,   1 ; +3 = 200%
	db 233, 100 ; +4 = 233%
	db 133,  50 ; +5 = 266%
	db   3,   1 ; +6 = 300%

AccuracyHustleLevelMultipliers:
	db  13, 100 ; -6 =  13%
	db  16, 100 ; -5 =  16%
	db  23, 100 ; -4 =  23%
	db  30, 100 ; -3 =  30%
	db  40, 100 ; -2 =  40%
	db  55, 100 ; -1 =  55%
	db  80, 100 ;  0 =  80%
	db 113, 100 ; +1 = 113%
	db 146, 100 ; +2 = 146%
	db 180, 100 ; +3 = 180%
	db 213, 100 ; +4 = 213%
	db 246, 100 ; +5 = 246%
	db 140,  50 ; +6 = 280%

AccuracyCompoundEyesLevelMultipliers:
	db  63, 100 ; -6 =  63%
	db  66, 100 ; -5 =  66%
	db  73, 100 ; -4 =  73%
	db  80, 100 ; -3 =  80%
	db  90, 100 ; -2 =  90%
	db 105, 100 ; -1 = 105%
	db 130, 100 ;  0 = 130%
	db 163, 100 ; +1 = 163%
	db 196, 100 ; +2 = 196%
	db 230, 100 ; +3 = 230%
	db 132,  50 ; +4 = 264%
	db 148,  50 ; +5 = 296%
	db 165,  50 ; +6 = 330%
