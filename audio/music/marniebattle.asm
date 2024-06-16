;MIDI made by ryanisthebomb203
;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_MarnieBattle:
	channel_count 4
	channel 1, Music_MarnieBattle_Ch1
	channel 2, Music_MarnieBattle_Ch2
	channel 3, Music_MarnieBattle_Ch3
	channel 4, Music_MarnieBattle_Ch4

Music_MarnieBattle_Ch1:
	volume 7, 7
	duty_cycle $2
	note_type 12, 10, 7
	tempo 119
;Bar 1
	octave 3
	volume_envelope 7, 7
	note G_, 2
	note D_, 2
	note A_, 16
	note A_, 11
;Bar 2
	rest 1
;Bar 3
	note G_, 2
	note D_, 2
	note A_, 16
	note A_, 11
;Bar 4
	rest 1
;Bar 5
Music_MarnieBattle_Ch1Loop:
	note D_, 2
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	note A_, 4
	note D_, 4
;Bar 6
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
;Bar 7
	rest 2
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	note G_, 2
;Bar 8
	note F_, 2
	note C_, 2
	note G_, 2
	note F_, 10
;Bar 9
	note D_, 2
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note A_, 2
	note G_, 2
	note A_, 4
	note D_, 4
;Bar 10
	octave 4
	note D_, 2
	note C_, 2
	octave 3
	note G_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
;Bar 11
	rest 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 4
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note C#, 0 | WARNING: Rounded down to 0
	note A_, 16
	note A_, 3
;Bar 12
	rest 5
;Bar 13
	octave 4
	note D_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A#, 4
	octave 4
	note F_, 4
;Bar 14
	note E_, 2
	note F_, 4
	octave 3
	note A#, 2
	octave 4
	note C_, 2
	note D_, 2
	note F_, 2
;Bar 15
	note G_, 6
	note E_, 16
	note E_, 9
;Bar 16
	rest 5
;Bar 17
	note D_, 2
	note C_, 2
	note D_, 2
	octave 3
	note A#, 4
	octave 4
	note F_, 4
;Bar 18
	note E_, 2
	note F_, 4
	octave 3
	note A#, 4
	octave 4
	note A_, 4
;Bar 19
	note G_, 6
	octave 5
	note C_, 4
	octave 4
	note E_, 4
	note G_, 4
;Bar 20
	note A_, 2
	note G_, 11
	rest 5
;Bar 21
	note D_, 2
	note E_, 2
	note F_, 2
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note A_, 2
;Bar 22
	note G_, 6
	octave 5
	note C_, 6
	octave 4
	note E_, 4
;Bar 23
	note E_, 2
	note F_, 13
	rest 16
	rest 5
;Bar 25
	note D_, 2
	note E_, 2
	note F_, 2
	octave 3
	note A#, 2
	octave 4
	note D_, 2
	note A_, 2
;Bar 26
	note G_, 6
	octave 5
	note C_, 6
	note E_, 4
;Bar 27
	note E_, 6
	note F_, 9
	rest 9
;Bar 28
	octave 4
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 29
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 30
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 31
	note G_, 4
	note A_, 2
	note D_, 9
	rest 9
;Bar 32
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 33
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 34
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 35
	note G_, 6
	note A_, 9
	rest 9
;Bar 36
	note A_, 2
	note F_, 2
	octave 5
	note C_, 2
	octave 4
	note A#, 2
;Bar 37
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 38
	octave 5
	note C_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 1
	octave 4
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 39
	note G_, 4
	note A_, 2
	note D_, 16
	note D_, 2
;Bar 40
	note D_, 2
	octave 3
	note A#, 2
	octave 4
	note F_, 2
	note E_, 2
;Bar 41
	note D_, 6
	note A_, 6
	octave 5
	note C_, 6
;Bar 42
	octave 4
	note E_, 6
	note C_, 4
	octave 3
	note A_, 4
;Bar 43
	octave 4
	note C_, 2
	note D_, 4
	note D_, 9
	rest 16
	rest 1
;Bar 45
	octave 3
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 2
	note C_, 4
;Bar 46
	note D_, 4
	note G_, 2
	note F_, 4
	note C_, 4
;Bar 47
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 6
;Bar 48
	note C_, 4
	octave 2
	note B_, 10
;Bar 49
	octave 3
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 2
	note C_, 4
;Bar 50
	note D_, 4
	note G_, 2
	note F_, 4
	note C_, 4
;Bar 51
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 6
;Bar 52
	note C_, 4
	octave 2
	note B_, 10
	sound_loop 0, Music_MarnieBattle_Ch1Loop

; ============================================================================================================

Music_MarnieBattle_Ch2:
	duty_cycle $1
	note_type 12, 10, 7
;Bar 1
	octave 2
	volume_envelope 9, 7
	note D_, 16
;Bar 2
	note D_, 16
;Bar 3
	note D_, 16
;Bar 4
	note D_, 16
;Bar 5
Music_MarnieBattle_Ch2Loop:
	octave 1
	note A#, 16
;Bar 6
	octave 2
	note C_, 16
;Bar 7
	note D_, 16
;Bar 8
	note D_, 16
;Bar 9
	octave 1
	note A#, 16
;Bar 10
	octave 2
	note C_, 16
;Bar 11
	note D_, 12
	octave 1
	note A_, 16
	note A_, 3
;Bar 12
	rest 1
;Bar 13
	note A#, 16
;Bar 14
	note A#, 16
;Bar 15
	octave 2
	note C_, 16
;Bar 16
	note C_, 16
;Bar 17
	octave 1
	note A#, 16
;Bar 18
	note A#, 16
;Bar 19
	octave 2
	note C_, 16
;Bar 20
	note C_, 16
;Bar 21
	octave 1
	note A#, 16
;Bar 22
	octave 2
	note C_, 16
;Bar 23
	note D_, 16
;Bar 24
	note D_, 16
;Bar 25
	octave 1
	note A#, 16
;Bar 26
	octave 2
	note C_, 16
;Bar 27
	note D_, 16
;Bar 28
	note D_, 16
;Bar 29
	note D_, 16
;Bar 30
	note C_, 16
;Bar 31
	octave 1
	note B_, 16
;Bar 32
	note A#, 16
;Bar 33
	octave 2
	note D_, 16
;Bar 34
	note C_, 16
;Bar 35
	note D_, 16
;Bar 36
	note D_, 16
;Bar 37
	note D_, 16
;Bar 38
	note C_, 16
;Bar 39
	octave 1
	note B_, 16
;Bar 40
	note A#, 16
;Bar 41
	note A#, 16
;Bar 42
	octave 2
	note C_, 16
;Bar 43
	note D_, 15
	rest 16
	rest 1
;Bar 45
	note D_, 16
;Bar 46
	note D_, 16
;Bar 47
	note D_, 15
	rest 3
;Bar 48
	note C_, 4
	octave 1
	note B_, 10
;Bar 49
	octave 2
	note D_, 16
;Bar 50
	note D_, 16
;Bar 51
	note D_, 15
	rest 3
;Bar 52
	note C_, 4
	octave 1
	note B_, 10
	sound_loop 0, Music_MarnieBattle_Ch2Loop

; ============================================================================================================

Music_MarnieBattle_Ch3:
	note_type 12, 1, 0
;Bar 1
	octave 4
	volume_envelope 2, 0
	note G_, 2
	note D_, 2
	note A_, 16
	note A_, 11
;Bar 2
	rest 1
;Bar 3
	note G_, 2
	note D_, 2
	note A_, 16
	note A_, 11
;Bar 4
	rest 1
;Bar 5
Music_MarnieBattle_Ch3Loop:
	note D_, 2
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note A_, 2
	note G_, 2
	note A_, 4
	note D_, 4
;Bar 6
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note G_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
;Bar 7
	rest 2
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	note G_, 2
;Bar 8
	note F_, 2
	note C_, 2
	note G_, 2
	note F_, 10
;Bar 9
	note D_, 2
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note A_, 2
	note G_, 2
	note A_, 4
	note D_, 4
;Bar 10
	octave 5
	note D_, 2
	note C_, 2
	octave 4
	note G_, 2
	note A_, 2
	note G_, 2
	note E_, 2
	note F_, 2
;Bar 11
	rest 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 4
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note D_, 0 | WARNING: Rounded down to 0
	note A_, 2
	;note C#, 0 | WARNING: Rounded down to 0
	note A_, 16
	note A_, 3
;Bar 12
	rest 5
;Bar 13
	octave 5
	note D_, 2
	note C_, 2
	note D_, 2
	octave 4
	note A#, 4
	octave 5
	note F_, 4
;Bar 14
	note E_, 2
	note F_, 4
	octave 4
	note A#, 2
	octave 5
	note C_, 2
	note D_, 2
	note F_, 2
;Bar 15
	note G_, 6
	note E_, 16
	note E_, 9
;Bar 16
	rest 5
;Bar 17
	note D_, 2
	note C_, 2
	note D_, 2
	octave 4
	note A#, 4
	octave 5
	note F_, 4
;Bar 18
	note E_, 2
	note F_, 4
	octave 4
	note A#, 4
	octave 5
	note A_, 4
;Bar 19
	note G_, 6
	octave 6
	note C_, 4
	octave 5
	note E_, 4
	note G_, 4
;Bar 20
	note A_, 2
	note G_, 11
	rest 5
;Bar 21
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note A#, 2
	octave 5
	note D_, 2
	note A_, 2
;Bar 22
	note G_, 6
	octave 6
	note C_, 6
	octave 5
	note E_, 4
;Bar 23
	note E_, 2
	note F_, 13
	rest 16
	rest 5
;Bar 25
	note D_, 2
	note E_, 2
	note F_, 2
	octave 4
	note A#, 2
	octave 5
	note D_, 2
	note A_, 2
;Bar 26
	note G_, 6
	octave 6
	note C_, 6
	note E_, 4
;Bar 27
	note E_, 6
	note F_, 9
	rest 9
;Bar 28
	octave 5
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 29
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 30
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 31
	note G_, 4
	note A_, 2
	note D_, 9
	rest 9
;Bar 32
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 33
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 34
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 35
	note G_, 6
	note A_, 9
	rest 9
;Bar 36
	note A_, 2
	note F_, 2
	octave 6
	note C_, 2
	octave 5
	note A#, 2
;Bar 37
	note A_, 8
	note D_, 2
	note E_, 2
	note F_, 2
	note A_, 2
;Bar 38
	octave 6
	note C_, 4
	octave 5
	note A#, 2
	octave 6
	note C_, 1
	octave 5
	note A#, 1
	note A_, 4
	note G_, 4
;Bar 39
	note G_, 4
	note A_, 2
	note D_, 16
	note D_, 2
;Bar 40
	note D_, 2
	octave 4
	note A#, 2
	octave 5
	note F_, 2
	note E_, 2
;Bar 41
	note D_, 6
	note A_, 6
	octave 6
	note C_, 6
;Bar 42
	octave 5
	note E_, 6
	note C_, 4
	octave 4
	note A_, 4
;Bar 43
	octave 5
	note C_, 2
	note D_, 4
	note D_, 9
	rest 16
	rest 1
;Bar 45
	octave 4
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 2
	note C_, 4
;Bar 46
	note D_, 4
	note G_, 2
	note F_, 4
	note C_, 4
;Bar 47
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 6
;Bar 48
	note C_, 4
	octave 3
	note B_, 10
;Bar 49
	octave 4
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 2
	note C_, 4
;Bar 50
	note D_, 4
	note G_, 2
	note F_, 4
	note C_, 4
;Bar 51
	note C_, 2
	note D_, 4
	note C_, 2
	note D_, 4
	rest 6
;Bar 52
	note C_, 4
	octave 3
	note B_, 10
	sound_loop 0, Music_MarnieBattle_Ch3Loop

; ============================================================================================================
Music_MarnieBattle_Ch4:
	toggle_noise $3
	drum_speed 12
;Bar 1
	octave 4
	volume_envelope 2, 0
	drum_note 8, 2
	drum_note 3, 2
	drum_note 10, 16
	drum_note 10, 11
;Bar 2
	rest 1
;Bar 3
	drum_note 8, 2
	drum_note 3, 2
	drum_note 10, 16
	drum_note 10, 11
;Bar 4
	rest 1
;Bar 5
Music_MarnieBattle_Ch4Loop:
	drum_note 3, 2
	octave 5
	drum_note 3, 2
	drum_note 1, 2
	octave 4
	drum_note 10, 2
	drum_note 8, 2
	drum_note 10, 4
	drum_note 3, 4
;Bar 6
	octave 5
	drum_note 3, 2
	drum_note 1, 2
	octave 4
	drum_note 8, 2
	drum_note 10, 2
	drum_note 8, 2
	drum_note 5, 2
	drum_note 6, 2
;Bar 7
	rest 2
	drum_note 1, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 3, 4
	drum_note 8, 2
;Bar 8
	drum_note 6, 2
	drum_note 1, 2
	drum_note 8, 2
	drum_note 6, 10
;Bar 9
	drum_note 3, 2
	octave 5
	drum_note 3, 2
	drum_note 1, 2
	octave 4
	drum_note 10, 2
	drum_note 8, 2
	drum_note 10, 4
	drum_note 3, 4
;Bar 10
	octave 5
	drum_note 3, 2
	drum_note 1, 2
	octave 4
	drum_note 8, 2
	drum_note 10, 2
	drum_note 8, 2
	drum_note 5, 2
	drum_note 6, 2
;Bar 11
	rest 2
	;note D_, 0 | WARNING: Rounded down to 0
	drum_note 10, 2
	;note D_, 0 | WARNING: Rounded down to 0
	drum_note 10, 4
	;note D_, 0 | WARNING: Rounded down to 0
	drum_note 10, 2
	;note D_, 0 | WARNING: Rounded down to 0
	drum_note 10, 2
	;note C#, 0 | WARNING: Rounded down to 0
	drum_note 10, 16
	drum_note 10, 3
;Bar 12
	rest 5
;Bar 13
	octave 5
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	octave 4
	drum_note 11, 4
	octave 5
	drum_note 6, 4
;Bar 14
	drum_note 5, 2
	drum_note 6, 4
	octave 4
	drum_note 11, 2
	octave 5
	drum_note 1, 2
	drum_note 3, 2
	drum_note 6, 2
;Bar 15
	drum_note 8, 6
	drum_note 5, 16
	drum_note 5, 9
;Bar 16
	rest 5
;Bar 17
	drum_note 3, 2
	drum_note 1, 2
	drum_note 3, 2
	octave 4
	drum_note 11, 4
	octave 5
	drum_note 6, 4
;Bar 18
	drum_note 5, 2
	drum_note 6, 4
	octave 4
	drum_note 11, 4
	octave 5
	drum_note 10, 4
;Bar 19
	drum_note 8, 6
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 5, 4
	drum_note 8, 4
;Bar 20
	drum_note 10, 2
	drum_note 8, 11
	rest 5
;Bar 21
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	octave 4
	drum_note 11, 2
	octave 5
	drum_note 3, 2
	drum_note 10, 2
;Bar 22
	drum_note 8, 6
	octave 6
	drum_note 1, 6
	octave 5
	drum_note 5, 4
;Bar 23
	drum_note 5, 2
	drum_note 6, 13
	rest 16
	rest 5
;Bar 25
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	octave 4
	drum_note 11, 2
	octave 5
	drum_note 3, 2
	drum_note 10, 2
;Bar 26
	drum_note 8, 6
	octave 6
	drum_note 1, 6
	drum_note 5, 4
;Bar 27
	drum_note 5, 6
	drum_note 6, 9
	rest 9
;Bar 28
	octave 5
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 29
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 30
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 31
	drum_note 8, 4
	drum_note 10, 2
	drum_note 3, 9
	rest 9
;Bar 32
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 33
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 34
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 35
	drum_note 8, 6
	drum_note 10, 9
	rest 9
;Bar 36
	drum_note 10, 2
	drum_note 6, 2
	octave 6
	drum_note 1, 2
	octave 5
	drum_note 11, 2
;Bar 37
	drum_note 10, 8
	drum_note 3, 2
	drum_note 5, 2
	drum_note 6, 2
	drum_note 10, 2
;Bar 38
	octave 6
	drum_note 1, 4
	octave 5
	drum_note 11, 2
	octave 6
	drum_note 1, 1
	octave 5
	drum_note 11, 1
	drum_note 10, 4
	drum_note 8, 4
;Bar 39
	drum_note 8, 4
	drum_note 10, 2
	drum_note 3, 16
	drum_note 3, 2
;Bar 40
	drum_note 3, 2
	octave 4
	drum_note 11, 2
	octave 5
	drum_note 6, 2
	drum_note 5, 2
;Bar 41
	drum_note 3, 6
	drum_note 10, 6
	octave 6
	drum_note 1, 6
;Bar 42
	octave 5
	drum_note 5, 6
	drum_note 1, 4
	octave 4
	drum_note 10, 4
;Bar 43
	octave 5
	drum_note 1, 2
	drum_note 3, 4
	drum_note 3, 9
	rest 16
	rest 1
;Bar 45
	octave 4
	drum_note 1, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 3, 4
	rest 2
	drum_note 1, 4
;Bar 46
	drum_note 3, 4
	drum_note 8, 2
	drum_note 6, 4
	drum_note 1, 4
;Bar 47
	drum_note 1, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 3, 4
	rest 6
;Bar 48
	drum_note 1, 4
	octave 3
	drum_note 12, 10
;Bar 49
	octave 4
	drum_note 1, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 3, 4
	rest 2
	drum_note 1, 4
;Bar 50
	drum_note 3, 4
	drum_note 8, 2
	drum_note 6, 4
	drum_note 1, 4
;Bar 51
	drum_note 1, 2
	drum_note 3, 4
	drum_note 1, 2
	drum_note 3, 4
	rest 6
;Bar 52
	drum_note 1, 4
	octave 3
	drum_note 12, 10
	sound_loop 0, Music_MarnieBattle_Ch4Loop
