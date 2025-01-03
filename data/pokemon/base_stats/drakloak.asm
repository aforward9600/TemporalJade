	db 0 ; species ID placeholder

	db  68,  80,  50, 102,  60,  50
	evs  0,   0,   0,   2,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 45 ; catch rate
	db 144 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 45 ; step cycles to hatch
	INCBIN "gfx/pokemon/drakloak/front.dimensions"
	db CLEAR_BODY, INFILTRATOR, CURSED_BODY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, LIGHT_SCREEN, PROTECT, SAFEGUARD, THUNDERBOLT, THUNDER, RETURN, SHADOW_BALL, DOUBLE_TEAM, REFLECT, ACROBATICS, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, FLY, SURF, SLEEP_TALK, DRAGON_DANCE, DARK_PULSE, DRAGON_PULSE, WILL_O_WISP, U_TURN
	; end
