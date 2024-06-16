;MIDI made by LyricWulf
;Coverted using MIDI2ASM
;Code by TriteHexagon
;Version 5.0.1 (7-Feb-2021)
;Visit github.com/TriteHexagon/Midi2ASM-Converter for up-to-date versions.

; ============================================================================================================

Music_UnwaveringHeart:
	channel_count 4
	channel 1, Music_UnwaveringHeart_Ch1
	channel 2, Music_UnwaveringHeart_Ch2
	channel 3, Music_UnwaveringHeart_Ch3
	channel 4, Music_UnwaveringHeart_Ch4

; ============================================================================================================

Music_UnwaveringHeart_Ch1:
	tempo 222
	volume 7, 7
	duty_cycle $1
	note_type 3, 10, 7
;Bar 1, 64
UnwaveringHeartLoop1:
	octave 4
	volume_envelope 5, 7
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 2, 64
	octave 4
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 3, 64
	octave 4
	note F#, 16
	rest 16
	octave 5
	note E_, 16
	note F#, 16
;Bar 4, 64
	note C#, 16
	rest 15
	note C#, 8
	octave 4
	note B_, 8
	note A_, 8
	note G#, 7
	rest 2
;Bar 5, 64
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1 ; WARNING: Auto-Sync says: Rounded down!
;Bar 6, 64
	octave 4
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 7, 64
	octave 4
	note F#, 16
	rest 16
	rest 8
	note B_, 8
	note A_, 8
	note G#, 8
;Bar 8, 64
	note E_, 16
	rest 16
	volume_envelope 8, 7
	note C#, 8
	octave 3
	note B_, 8
	note A_, 8
	note G#, 8
;Bar 9, 72
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note D_, 8
	octave 4
	volume_envelope 9, 7
	note C#, 8
	note E_, 16
	octave 3
	volume_envelope 7, 7
	note A_, 16
	octave 1
	volume_envelope 9, 7
	note A_, 8
;Bar 10, 64
	octave 3
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 3
	volume_envelope 6, 7
	note E_, 8
	octave 4
	volume_envelope 9, 7
	note C#, 8
	note E_, 16
	octave 3
	volume_envelope 6, 7
	note E_, 8
	rest 8
;Bar 11, 64
	volume_envelope 9, 7
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note G#, 8
	volume_envelope 6, 7
	note B_, 8
	octave 3
	note C#, 8
	octave 4
	volume_envelope 8, 7
	note E_, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 4
	volume_envelope 8, 7
	note F#, 8
	octave 1
	volume_envelope 7, 7
	note B_, 8
;Bar 12, 64
	octave 4
	volume_envelope 9, 7
	note C#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note C#, 8
	note E_, 8
	octave 4
	volume_envelope 8, 7
	note C#, 8
	octave 3
	note B_, 8
	note A_, 8
	volume_envelope 7, 7
	note G#, 8
;Bar 13, 64
	volume_envelope 8, 7
	note F#, 8
	octave 2
	volume_envelope 4, 7
	note F#, 8
	volume_envelope 5, 7
	note B_, 8
	octave 3
	note D_, 8
	volume_envelope 7, 7
	note F#, 8
	octave 2
	volume_envelope 6, 7
	note A_, 8 ; WARNING: Auto-Sync says: Rounded down!
	octave 3
	volume_envelope 7, 7
	note A_, 8
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	volume_envelope 9, 7
	note F#, 8
;Bar 14, 64
	octave 3
	note G#, 8
	octave 2
	volume_envelope 4, 7
	note G#, 8
	volume_envelope 5, 7
	note B_, 8
	octave 3
	note E_, 8
	volume_envelope 7, 7
	note G#, 8
	octave 2
	volume_envelope 6, 7
	note B_, 8
	octave 3
	volume_envelope 7, 7
	note B_, 8
	octave 1
	volume_envelope 6, 7
	note C#, 8
;Bar 15, 64
	octave 3
	volume_envelope 9, 7
	note A_, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note D_, 8
	note E_, 8
	volume_envelope 8, 7
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 8, 7
	note A_, 16
;Bar 16, 64
	note A_, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 3
	volume_envelope 6, 7
	note E_, 8
	volume_envelope 7, 7
	note A_, 8
	volume_envelope 6, 7
	note G#, 16
	octave 4
	volume_envelope 7, 7
	note G#, 8
	note A_, 8
;Bar 17, 64
	volume_envelope 6, 7
	note A_, 16
	note A_, 16
	volume_envelope 5, 7
	note G#, 16
	volume_envelope 3, 7
	note E_, 16
;Bar 18, 48, 1144
	note F#, 16
	rest 16
	rest 16
	sound_loop 0, Music_UnwaveringHeart_Ch1
	sound_ret

; ============================================================================================================

Music_UnwaveringHeart_Ch2:
	duty_cycle $1
	note_type 3, 10, 7
;Bar 1, 64
UnwaveringHeartLoop2:
	octave 4
	volume_envelope 5, 7
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 2, 64
	octave 4
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 3, 64
	octave 4
	note F#, 16
	rest 16
	octave 5
	note E_, 16
	note F#, 16
;Bar 4, 64
	note C#, 16
	rest 15
	note C#, 8
	octave 4
	note B_, 8
	note A_, 8
	note G#, 7
	rest 2
;Bar 5, 64
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1 ; WARNING: Auto-Sync says: Rounded down!
;Bar 6, 64
	octave 4
	note F#, 16
	rest 7
	octave 5
	note C#, 8
	note E_, 16
	rest 16
	rest 1
;Bar 7, 64
	octave 4
	note F#, 16
	rest 16
	rest 8
	note B_, 8
	note A_, 8
	note G#, 8
;Bar 8, 64
	note E_, 16
	rest 16
	volume_envelope 8, 7
	note C#, 8
	octave 3
	note B_, 8
	note A_, 8
	note G#, 8
;Bar 9, 72
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note D_, 8
	octave 4
	volume_envelope 9, 7
	note C#, 8
	note E_, 16
	octave 3
	volume_envelope 7, 7
	note A_, 16
	octave 1
	volume_envelope 9, 7
	note A_, 8
;Bar 10, 64
	octave 3
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 3
	volume_envelope 6, 7
	note E_, 8
	octave 4
	volume_envelope 9, 7
	note C#, 8
	note E_, 16
	octave 3
	volume_envelope 6, 7
	note E_, 8
	rest 8
;Bar 11, 64
	volume_envelope 9, 7
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note G#, 8
	volume_envelope 6, 7
	note B_, 8
	octave 3
	note C#, 8
	octave 4
	volume_envelope 8, 7
	note E_, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 4
	volume_envelope 8, 7
	note F#, 8
	octave 1
	volume_envelope 7, 7
	note B_, 8
;Bar 12, 64
	octave 4
	volume_envelope 9, 7
	note C#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note C#, 8
	note E_, 8
	octave 4
	volume_envelope 8, 7
	note C#, 8
	octave 3
	note B_, 8
	note A_, 8
	volume_envelope 7, 7
	note G#, 8
;Bar 13, 64
	volume_envelope 8, 7
	note F#, 8
	octave 2
	volume_envelope 4, 7
	note F#, 8
	volume_envelope 5, 7
	note B_, 8
	octave 3
	note D_, 8
	volume_envelope 7, 7
	note F#, 8
	octave 2
	volume_envelope 6, 7
	note A_, 8 ; WARNING: Auto-Sync says: Rounded down!
	octave 3
	volume_envelope 7, 7
	note A_, 8
	octave 1 ;WARNING: Octave 0 isn't supported, won't work correctly
	volume_envelope 9, 7
	note F#, 8
;Bar 14, 64
	octave 3
	note G#, 8
	octave 2
	volume_envelope 4, 7
	note G#, 8
	volume_envelope 5, 7
	note B_, 8
	octave 3
	note E_, 8
	volume_envelope 7, 7
	note G#, 8
	octave 2
	volume_envelope 6, 7
	note B_, 8
	octave 3
	volume_envelope 7, 7
	note B_, 8
	octave 1
	volume_envelope 6, 7
	note C#, 8
;Bar 15, 64
	octave 3
	volume_envelope 9, 7
	note A_, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 6, 7
	note D_, 8
	note E_, 8
	volume_envelope 8, 7
	note F#, 8
	octave 2
	volume_envelope 5, 7
	note A_, 8
	octave 3
	volume_envelope 8, 7
	note A_, 16
;Bar 16, 64
	note A_, 8
	octave 2
	volume_envelope 5, 7
	note B_, 8
	octave 3
	volume_envelope 6, 7
	note E_, 8
	volume_envelope 7, 7
	note A_, 8
	volume_envelope 6, 7
	note G#, 16
	octave 4
	volume_envelope 7, 7
	note G#, 8
	note A_, 8
;Bar 17, 64
	volume_envelope 6, 7
	note A_, 16
	note A_, 16
	volume_envelope 5, 7
	note G#, 16
	volume_envelope 3, 7
	note E_, 16
;Bar 18, 48, 1144
	note F#, 16
	rest 16
	rest 16
	sound_loop 0, Music_UnwaveringHeart_Ch2
	sound_ret

Music_UnwaveringHeart_Ch3:
	note_type 3, 10, 7
;Bar 1, 64
	octave 3
	volume_envelope 2, 0
	note D_, 16
	rest 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 16
	rest 16
;Bar 2, 64
	note B_, 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 16
	rest 16
	rest 16
;Bar 3, 64
	note B_, 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 16
	rest 16
	rest 16
;Bar 4, 64
	note F#, 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 16 ; WARNING: Auto-Sync says: Rounded down!
	note E_, 16 ; WARNING: Auto-Sync says: Rounded up!
	rest 16
;Bar 5, 64
	note B_, 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 16
	rest 16
	rest 16
;Bar 6, 64
	note A_, 16
	rest 16
	rest 16
	rest 16
;Bar 7, 64
	note B_, 16 ; WARNING: Auto-Sync says: Rounded down!
	rest 48
;Bar 8, 64
	rest 16
	note F#, 16
	rest 16
	rest 16
;Bar 9, 72
	note B_, 8
	note A_, 8
	note G#, 16
;Bar 9, 72
	note D_, 8
	note A_, 8
	rest 16
	rest 16
	rest 16
	rest 8
;Bar 10, 64
	note E_, 8
	note B_, 16
	note B_, 16
	rest 8
	note B_, 8
	rest 8
;Bar 11, 64
	note B_, 16
	note C#, 8
	note G#, 8
	note B_, 16
	rest 16
;Bar 12, 64
	note F#, 16
	rest 16
	note E_, 16
	rest 16
;Bar 13, 64
	note B_, 8
	note F#, 8
	note B_, 8
	note F#, 8
	rest 8
	note F_, 16
	rest 8
;Bar 14, 64
	note C#, 12
	note G#, 4
	note B_, 16
	rest 4
	rest 16
	rest 8
	note C#, 4
;Bar 15, 64
	note C#, 4
	note A_, 8
	note A_, 8
	note D_, 8
	rest 4
	note A_, 10
	rest 12
	note A_, 10
;Bar 16, 64
	note B_, 16
	rest 16
	rest 16
	rest 16
;Bar 17, 64
	note A_, 16
	rest 16
	note E_, 16
	rest 16
;Bar 18, 48, 1144
	note B_, 16
	rest 16
	rest 16
	sound_loop 0, Music_UnwaveringHeart_Ch3
	sound_ret

Music_UnwaveringHeart_Ch4:
	note_type 3, 1, 0
	sound_ret

; ============================================================================================================
