;Coverted using MIDI2ASM
;Version 3.1 (2020-4-13)
;Code by TriteHexagon
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_PyriteTown:
	channel_count 4
	channel 1, Music_PyriteTown_Ch1
	channel 2, Music_PyriteTown_Ch2
	channel 3, Music_PyriteTown_Ch3
	channel 4, Music_PyriteTown_Ch4

Music_PyriteTown_Ch1:
	volume 7, 7
	tempo 154
	duty_cycle $1
	note_type 12, 10, 7
	pitch_offset $0002
;Bar 1
Music_PyriteTown_Ch1_loop:
	duty_cycle $3
	note_type 12, 10, 7
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 8
	octave 3
	sound_call Music_PyriteTown_Ch1_Slow_Descent
;Bar 9
	volume_envelope 8, 5
	rest 2
	octave 5
	note C_, 2
	rest 16
	rest 16
	rest 14
;Bar 12
	note C_, 2
	rest 16
	rest 4
;Bar 13
	duty_cycle $1
	volume_envelope 4, 8
	octave 3
	note G_, 16
	note G_, 16
;Bar 15
	note G_, 16
	note G_, 12
	note_type 6, 6, 7
	duty_cycle $1
	octave 5
	note G_, 1
	note C_, 1
	octave 4
	note A_, 1
	note F_, 1
	note D_, 1
	octave 3
	note A#, 1
	note G_, 1
	note D#, 1
	duty_cycle $1
	note_type 12, 9, 7
;Bar 18
	octave 3
	sound_call Music_PyriteTown_Ch1_Slow_Descent
;Bar 19
	rest 16
	rest 16
	rest 4
;Bar 21
	note_type 4, 9, 7
	octave 4
	note C_, 4
	note D#, 4
	note C_, 4
	note F_, 4
;Bar 22
	note F#, 4
	note F_, 4
	note D#, 4
	note D_, 4
	note C_, 4
	note_type 12, 10, 7
	rest 12
;Bar 23
	vibrato 18, 1, 10
	note_type 4, 8, 8
	octave 3
	note G_, 4
	note F#, 4
	note F_, 8
	rest 4
	octave 4
	duty_cycle $2
	note D#, 16
;Bar 24
	duty_cycle $3
	note_type 12, 9, 8
	octave 2
	note C_, 16
;Bar 25
	volume_envelope 9, 7
	note C_, 4
	note_type 4, 9, 8
	octave 3
	note C_, 8
	octave 2
	note A#, 4
	note_type 12, 9, 8
	rest 3 
	note G_, 2
	rest 2
	volume_envelope 9, 8
	note F_, 9
;Bar 26
	volume_envelope 9, 7
	note F_, 4
	note_type 4, 9, 8
	octave 1
	note A#, 8
	octave 2
	note C_, 6
;Bar 27
	rest 6
	note D#, 6
	rest 6
	note_type 12, 9, 8
	note F_, 13
;Bar 28
	note_type 4, 9, 7
	rest 1
	note G#, 8
	note G#, 6
	rest 6
	note G#, 6
	rest 6
	volume_envelope 9, 8
	note A#, 12
;Bar 29
	note F_, 12
	octave 1
	note A#, 12
	octave 2
	note D#, 12
;Bar 31
	note_type 12, 9, 7
	transpose 3, 9
	sound_call Music_PyriteTown_Ch1_Slow_Descent_2
	transpose 0, 0
	rest 14
	note_type 4, 10, 7
	rest 4
	sound_loop 0, Music_PyriteTown_Ch1_loop

Music_PyriteTown_Ch1_Slow_Descent:
	volume_envelope 6, 8
	note D#, 4
	volume_envelope 5, 8
	note D#, 4
	volume_envelope 4, 8
	note D#, 4
	volume_envelope 3, 8
	note D#, 4
	volume_envelope 2, 8
	note D#, 4
	volume_envelope 1, 8
	note D#, 4
	sound_ret

; ============================================================================================================

Music_PyriteTown_Ch2:
	note_type 12, 10, 7
	vibrato 18, 2, 10
	
;Bar 1
Music_PyriteTown_Ch2_loop:
	note_type 12, 10, 7
	duty_cycle $1
	rest 16
	rest 16
	rest 16
	rest 16
;Bar 8
	octave 4
	volume_envelope 6, 7
	transpose 1, 9
	sound_call Music_PyriteTown_Ch1_Slow_Descent
	transpose 0, 0
;Bar 9
	rest 2
	octave 4
	note_type 4, 8, 5
	note G_, 6
	volume_envelope 11, 7
	note C_, 4
	note D#, 4
	note C_, 4
;Bar 10
	note_type 12, 11, 7
	note F#, 6
	note F_, 4
	note D#, 4
	note_type 4, 11, 7
	note C_, 5
;Bar 11
	octave 3
	note A#, 7
	note_type 12, 11, 7
	octave 4
	note C_, 10
	note_type 4, 11, 7
	octave 3
	note G_, 4
	note A#, 4
	note G_, 4
;Bar 12
	note_type 12, 11, 7
	octave 4
	note C_, 10
	volume_envelope 8, 5
	note G_, 2
	rest 4
;Bar 13
	rest 16
;Bar 14
	volume_envelope 11, 7
	sound_call Music_PyriteTown_Ch2_Bar14
;Bar 15
	sound_call Music_PyriteTown_Ch2_Bar15
;Bar 16
	sound_call Music_PyriteTown_Ch2_Bar14
;Bar 17
	sound_call Music_PyriteTown_Ch2_Bar15
;Bar 18
	octave 4
	note_type 12, 6, 8
	transpose 1, 9
	sound_call Music_PyriteTown_Ch1_Slow_Descent
	transpose 0, 0
;Bar 19
	rest 8
;Bar 20 -48
	duty_cycle $2
	note_type 4, 11, 7
	octave 4
	note C_, 8
	note D#, 4
	note C_, 6
	note F_, 1
	note F#, 13
	note F_, 4
	note D#, 8
	note C_, 4
;Bar 21 -48
	note D#, 8
	note F_, 8
	rest 2
	note G_, 12
	octave 5
	note_type 12, 11, 7
	note C_, 7
	note_type 4, 11, 7
;Bar 22 -48
	rest 7
	note D_, 2
	note_type 4, 11, 7
	note D#, 8
	note C_, 4
	rest 8
	octave 4
	note A#, 12
	note_type 4, 11, 7
	note G_, 4
;Bar 23 -48
	note A#, 6
	rest 2
	note G_, 4
	note G_, 4
	note F#, 4
	note F_, 8
	rest 8
	duty_cycle $0
	octave 4
	note G_, 4
	octave 5
	note C_, 4
	note D#, 4
;Bar 24 -48
	note F#, 12
	note F_, 8
	note D#, 6
	rest 6
	note C_, 12
	octave 4
	note A#, 4
;Bar 25
	note_type 12, 11, 7
	octave 5
	note C_, 8
	rest 4
	note D#, 3 ;simplification
	note C_, 9
;Bar 26
	rest 4
	octave 4
	note A#, 3
;Bar 27
	octave 5
	note C_, 9
	rest 4
	note_type 4, 11, 7
	octave 4
	note G_, 4
	octave 5
	note C_, 4
	note F_, 4
;Bar 28
	note_type 4, 11, 7
	note D#, 12
	note C_, 8
	note D#, 6
	rest 6
	note F_, 12
;Bar 29
	note D_, 12
	octave 4
	note A#, 12
	note F_, 12
	note A#, 12
;Bar 30
	note_type 12, 11, 7
	volume_envelope 11, 8
	note G_, 2
	volume_envelope 10, 8
	note G_, 2
	sound_call Music_PyriteTown_Ch1_Slow_Descent_2
	rest 10
	note_type 4, 11, 7
	rest 4
	sound_loop 0, Music_PyriteTown_Ch2_loop

Music_PyriteTown_Ch2_Bar14:
	octave 4
	note C_, 2
	rest 6
	note C_, 2
	rest 6
	sound_ret

Music_PyriteTown_Ch2_Bar15:
	octave 4
	note_type 4, 11, 7
	note D#, 8
	note C_, 4
	note D#, 4
	rest 4
	note F_, 5
	rest 7
	note G_, 16
	note_type 12, 11, 7
	sound_ret

Music_PyriteTown_Ch1_Slow_Descent_2:
	volume_envelope 9, 8
	note G_, 2
	volume_envelope 8, 8
	note G_, 2
	volume_envelope 7, 8
	note G_, 2
	volume_envelope 6, 8
	note G_, 2
	volume_envelope 5, 8
	note G_, 2
	volume_envelope 4, 8
	note G_, 2
	volume_envelope 3, 8
	note G_, 2
	volume_envelope 2, 8
	note G_, 2
	volume_envelope 1, 8
	note G_, 2
	sound_ret

; ============================================================================================================

Music_PyriteTown_Ch3:
	note_type 12, 1, 2
;Bar 4
Music_PyriteTown_Ch3_loop:
	note_type 4, 1, 2
	octave 2
	sound_call Music_PyriteTown_Ch3_Type1
;Bar 5
	sound_call Music_PyriteTown_Ch3_Type2
;Bar 6
	sound_call Music_PyriteTown_Ch3_Type1
;Bar 7
	sound_call Music_PyriteTown_Ch3_Type2
;Bar 8
	sound_call Music_PyriteTown_Ch3_Type1
;Bar 9
	sound_call Music_PyriteTown_Ch3_Type2
;Bar 10
	sound_call Music_PyriteTown_Ch3_Type1
;Bar 11
	sound_call Music_PyriteTown_Ch3_Type2
;Bar 12
	sound_call Music_PyriteTown_Ch3_Type1
;Bar 13
	sound_call Music_PyriteTown_Ch3_Type2
;Bar 14
Music_PyriteTown_Ch3_Bar14_15:
	note_type 12, 1, 2
	note C_, 2
	rest 6
	note C_, 2
	rest 6
;Bar 15
	note_type 4, 1, 2
	note D#, 8
	note C_, 4
	note D#, 8
	note F_, 3
	rest 9
	note G_, 16
	sound_loop 2, Music_PyriteTown_Ch3_Bar14_15
;Bar 18 -48
	rest 12
	note G_, 12
	note A#, 12
	note A_, 8
;Bar 19 -48
	note F_, 12
	note G_, 4
	note_type 12, 1, 2
	note C_, 8
	note_type 4, 1, 2
	octave 1
	note A#, 8
	note B_, 4
;Bar 20
Music_PyriteTown_Ch3_Bar20_21:
	octave 2
	note C_, 6
	rest 16
	rest 2
	note C_, 6
	rest 16
	rest 2
;Bar 21
	rest 6
	note C_, 6
	rest 6
	note_type 12, 1, 2
	note C_, 8
	note_type 4, 1, 2
	rest 6
	sound_loop 2, Music_PyriteTown_Ch3_Bar20_21
;Bar 24
	note C_, 12
	note G_, 12
	octave 3
	note C_, 12
	octave 2
	note G_, 8
	note C_, 16
;Bar 25
	note G_, 12
	octave 3
	note C_, 12
	octave 2
	note G_, 8
	note F_, 12
;Bar 26
	rest 4
	octave 1
	note A#, 12
	octave 2
	note C_, 12
	note G_, 8
	note F_, 12
;Bar 27
	rest 4
	octave 1
	note A#, 12
	octave 2
	note C_, 12
	note F_, 12
;Bar 28
	note G#, 12
	note D#, 12
	note G#, 12
	note D#, 8
	note A#, 16
;Bar 29
	note F_, 12
	note A#, 12
	note F_, 8
	note G_, 16
;Bar 30
	note G_, 12
	octave 3
	note C_, 12
	octave 2
	note G_, 8
	octave 3
	note C_, 12
;Bar 31
	note C_, 4
	octave 2
	note G_, 12
	note C_, 12
	octave 1
	note A#, 8
	note B_, 4
;Bar 32
	sound_loop 0, Music_PyriteTown_Ch3_loop

Music_PyriteTown_Ch3_Type1:
	octave 2
	note C_, 4
	rest 4
	note C_, 4
	note D#, 8
	note C_, 3
	rest 9
	octave 1
	note A#, 12
	note G_, 4
	sound_ret

Music_PyriteTown_Ch3_Type2:
	octave 2
	note C_, 4
	rest 4
	note C_, 4
	note D#, 8
	note C_, 3
	rest 9
	note D#, 4
	note F_, 8
	note G_, 4
	sound_ret


; ============================================================================================================

Music_PyriteTown_Ch4:
	toggle_noise 1
	drum_speed 6
;Bar 2
Music_PyriteTown_Ch4_loop:
	rest 8
Music_PyriteTown_Ch4_Bar2:
	drum_note 10, 16
	sound_loop 7, Music_PyriteTown_Ch4_Bar2
	drum_note 10, 8
;Bar 8
Music_PyriteTown_Ch4_Bar8:
	drum_note 1, 8
	drum_note 10, 8
	sound_loop 12, Music_PyriteTown_Ch4_Bar8
;Bar 14 -x
	sound_call Music_PyriteTown_Ch4_Type1
;Bar 15
	rest 8
	drum_note 2, 8
;Bar 16
	sound_call Music_PyriteTown_Ch4_Type1
;Bar 17
	rest 8
	drum_note 2, 8
;Bar 18
	sound_call Music_PyriteTown_Ch4_Bar18
;Bar 19
	sound_call Music_PyriteTown_Ch4_Bar18
;Bar 20
Music_PyriteTown_Ch4_Bar20:
	drum_note 1, 8
	drum_note 10, 8
	sound_loop 8, Music_PyriteTown_Ch4_Bar20
;Bar 24
Music_PyriteTown_Ch4_Bar24:
	sound_call Music_PyriteTown_Ch4_Bar18
	sound_loop 7, Music_PyriteTown_Ch4_Bar24
;Bar 31
	drum_note 5, 8
	drum_note 10, 5
	drum_note 5, 3
	drum_note 5, 8
	drum_note 10, 8
	sound_loop 0, Music_PyriteTown_Ch4_loop

Music_PyriteTown_Ch4_Bar18:
	drum_note 5, 8
	drum_note 10, 5
	drum_note 5, 3
	drum_note 5, 8
	drum_note 10, 5
	drum_note 5, 3
	sound_ret

Music_PyriteTown_Ch4_Type1:
	drum_speed 8
	drum_note 5, 2
	drum_note 5, 2 
	drum_note 5, 2
	drum_speed 6
	drum_note 2, 8
	sound_loop 3, Music_PyriteTown_Ch4_Type1
	sound_ret
