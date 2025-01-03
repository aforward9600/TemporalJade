	db 0 ; species ID placeholder

	db  28,  60,  30,  82,  40,  30
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 45 ; catch rate
	db 54 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 45 ; step cycles to hatch
	INCBIN "gfx/pokemon/dreepy/front.dimensions"
	db CLEAR_BODY, INFILTRATOR, CURSED_BODY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm CURSE, HEX, TOXIC, HIDDEN_POWER, PROTECT, SHADOW_BALL, DOUBLE_TEAM, SUBSTITUTE, REST, ATTRACT, THIEF, SLEEP_TALK, DRAGON_PULSE, WILL_O_WISP
	; end
