	db 0 ; species ID placeholder

	db  88, 120,  75, 142, 100,  75
	evs  0,   0,   0,   3,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db DRAGON, GHOST ; type
	db 45 ; catch rate
	db 205 ; base exp
	db NO_ITEM, NO_ITEM ; items
	db GENDER_F50 ; gender ratio
	db 45 ; step cycles to hatch
	INCBIN "gfx/pokemon/dragapult/front.dimensions"
	db CLEAR_BODY, INFILTRATOR, CURSED_BODY ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_SLOW ; growth rate
	dn EGG_INDETERMINATE, EGG_DRAGON ; egg groups

	; tm/hm learnset
	tmhm DRAGON_CLAW, CURSE, HEX, TOXIC, HIDDEN_POWER, SUNNY_DAY, HYPER_BEAM, LIGHT_SCREEN, PROTECT, SAFEGUARD, SOLARBEAM, THUNDERBOLT, THUNDER, EARTHQUAKE, RETURN, SHADOW_BALL, DOUBLE_TEAM, REFLECT, ACROBATICS, FLAMETHROWER, SLUDGE_BOMB, FIRE_BLAST, AERIAL_ACE, SUBSTITUTE, REST, ATTRACT, THIEF, FLY, SURF, SLEEP_TALK, DRAGON_DANCE, DARK_PULSE, DRAGON_PULSE, WILL_O_WISP, GIGA_IMPACT, U_TURN
	; end
