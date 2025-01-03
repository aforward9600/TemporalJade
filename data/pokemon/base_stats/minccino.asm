	db 0 ; species ID placeholder

	db  55,  50,  40,  75,  40,  40
	evs  0,   0,   0,   1,   0,   0
	;   hp  atk  def  spd  sat  sdf

	db NORMAL, NORMAL ; type
	db 255 ; catch rate
	db 60 ; base exp
	db CHESTO_BERRY, CHESTO_BERRY ; items
	db GENDER_F75 ; gender ratio
	db 15 ; step cycles to hatch
	INCBIN "gfx/pokemon/minccino/front.dimensions"
	db CUTE_CHARM, TECHNICIAN, SKILL_LINK ; wBaseAbility1, wBaseAbility2
	db 0 ; Padding left-over from the unused back pic
	db GROWTH_FAST ; growth rate
	dn EGG_GROUND, EGG_GROUND ; egg groups

	; tm/hm learnset
	tmhm CURSE, TOXIC, HAIL, HIDDEN_POWER, SUNNY_DAY, DAZZLINGLEAM, PROTECT, RAIN_DANCE, IRON_TAIL, THUNDERBOLT, RETURN, DIG, DOUBLE_TEAM, SUBSTITUTE, REST, ATTRACT, THIEF, SLEEP_TALK, U_TURN, GRASS_KNOT
	; end
