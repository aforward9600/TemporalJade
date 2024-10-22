Music_LavenderTown: ; ef72f
	channel_count 3
	channel 1, Music_LavenderTown_Ch1
	channel 2, Music_LavenderTown_Ch2
	channel 3, Music_LavenderTown_Ch3
; ef738
 
Music_LavenderTown_Ch1: ; ef739
	tempo 160
	volume 7, 7
	stereo_panning FALSE, TRUE
	vibrato 6, 2, 4
	duty_cycle $0
	note_type 12, 11, 3
rept 4
	rest 16
endr
Music_LavenderTown_branch_ef74c: ; ef74c
	sound_call Music_LavenderTown_branch_ef7fd
	volume_envelope 9, 3
	octave 5
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 9, 3
	note F#, 2
	volume_envelope 4, 3
	note F#, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 9, 3
	note A_, 2
	volume_envelope 4, 3
	note A_, 2
	sound_call Music_LavenderTown_branch_ef87f
	volume_envelope 9, 3
	volume_envelope 9, 3
	note F_, 2
	volume_envelope 8, 3
	note F_, 2
	volume_envelope 9, 3
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 9, 3
	octave 4
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 9, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	sound_call Music_LavenderTown_branch_ef7fd
	volume_envelope 9, 3
	octave 5
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 9, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 9, 3
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 9, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	sound_call Music_LavenderTown_branch_ef87f
	volume_envelope 9, 3
	octave 6
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 9, 3
	octave 5
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 9, 3
	note E_, 2
	volume_envelope 4, 3
	note E_, 2
	volume_envelope 9, 3
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	octave 3
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note F_, 2
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
Music_LavenderTown_branch_ef7ca: ; ef7ca
	octave 3
	note C_, 2
	note E_, 2
	note G_, 2
	note B_, 2
	octave 4
	note C_, 2
	octave 3
	note G_, 2
	note E_, 2
	note C_, 2
	note F_, 2
	note A_, 2
	octave 4
	note C_, 2
	note E_, 2
	note F_, 2
	note C_, 2
	octave 3
	note A_, 2
	note F_, 2
	sound_loop 2, Music_LavenderTown_branch_ef7ca
	note F#, 2
	note A_, 2
	octave 4
	note C_, 2
	note F#, 2
	note A_, 2
	note C_, 2
	octave 3
	note A_, 2
	note F#, 2
	note G_, 2
	octave 4
	note C_, 2
	note D_, 2
	note F_, 2
	note G_, 2
	note F_, 2
	note D_, 2
	note C_, 2
	octave 3
	note B_, 8
	note B_, 8
	sound_loop 0, Music_LavenderTown_branch_ef74c
; ef7fd
 
Music_LavenderTown_branch_ef7fd: ; ef7fd
	volume_envelope 8, 3
	octave 5
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	octave 6
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 8, 3
	octave 5
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 8, 3
	note A_, 2
	volume_envelope 4, 3
	note A_, 2
	volume_envelope 8, 3
	octave 6
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 8, 3
	octave 5
	note A_, 2
	volume_envelope 4, 3
	note A_, 2
	volume_envelope 8, 3
	note E_, 2
	volume_envelope 4, 3
	note E_, 2
	volume_envelope 8, 3
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 8, 3
	octave 6
	note E_, 2
	volume_envelope 4, 3
	note E_, 2
	volume_envelope 8, 3
	octave 5
	note B_, 2
	volume_envelope 4, 3
	note B_, 2
	volume_envelope 8, 3
	note C#, 2
	volume_envelope 4, 3
	note C#, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	note A#, 2
	volume_envelope 4, 3
	note A#, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	volume_envelope 8, 3
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 8, 3
	note F_, 2
	volume_envelope 4, 3
	note F_, 2
	volume_envelope 8, 3
	octave 6
	note C_, 2
	volume_envelope 4, 3
	note C_, 2
	volume_envelope 8, 3
	octave 5
	note F_, 2
	volume_envelope 4, 3
	note F_, 2
	sound_ret
; ef87f
 
Music_LavenderTown_branch_ef87f: ; ef87f
	volume_envelope 9, 3
	octave 5
	note G_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 8, 3
	note F_, 2
	volume_envelope 4, 3
	note F_, 2
	volume_envelope 8, 3
	note D_, 2
	volume_envelope 4, 3
	note D_, 2
	volume_envelope 8, 3
	note G_, 2
	volume_envelope 4, 3
	note G_, 2
	sound_ret
; ef899
 
Music_LavenderTown_Ch2: ; ef899
	duty_cycle $1
	vibrato 8, 2, 4
	stereo_panning TRUE, TRUE
	sound_call Music_LavenderTown_branch_ef8a0
	volume_envelope 10, 3
	note C_, 2
	volume_envelope 6, 3
	note C_, 2
	volume_envelope 10, 3
	note G_, 2
	volume_envelope 6, 3
	note G_, 2
	volume_envelope 10, 3
	note B_, 2
	volume_envelope 6, 3
	note B_, 2
	volume_envelope 10, 3
	octave 6
	note D_, 2
	volume_envelope 6, 3
	note D_, 2
Music_LavenderTown_branch_ef8d7: ; ef8d7
	volume_envelope 11, 5
	sound_call Music_LavenderTown_branch_ef915
	octave 2
	note F#, 4
	octave 3
	note C_, 4
	note F#, 4
	note A_, 4
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	note D_, 4
	note G_, 4
	note F_, 4
	note D_, 4
	octave 2
	note B_, 4
	note G_, 4
	sound_call Music_LavenderTown_branch_ef915
	octave 2
	note G_, 4
	octave 3
	note C_, 4
	note F_, 4
	note G_, 4
	note C_, 4
	note F_, 4
	note G_, 4
	note F_, 4
	note C_, 4
	note E_, 4
	note G_, 4
	octave 4
	note C_, 4
	volume_envelope 11, 7
	octave 2
	note F_, 16
	note C_, 16
	note F_, 16
	note C_, 16
	note F_, 16
	note F#, 16
	note G_, 16
	octave 1
	note G_, 8
	volume_envelope 5, 7
	octave 5
	note D_, 1
	note F_, 1
	note G_, 6
	sound_loop 0, Music_LavenderTown_branch_ef8d7
; ef915
 
Music_LavenderTown_branch_ef915: ; ef915
	octave 2
	note C_, 4
	note G_, 4
	octave 3
	note E_, 4
	octave 2
	note G_, 4
	note D_, 4
	note A_, 4
	octave 3
	note F_, 4
	octave 2
	note A_, 4
	note E_, 4
	note B_, 4
	octave 3
	note G_, 4
	note F_, 4
	note E_, 4
	note C#, 4
	octave 2
	note A#, 4
	note G_, 4
	note F_, 4
	octave 3
	note C_, 4
	note A_, 4
	note C_, 4
	sound_ret
; ef932
 
Music_LavenderTown_branch_ef8a0: ; ef8a0
	note_type 12, 10, 3
	octave 5
	note C_, 2
	volume_envelope 6, 3
	note C_, 2
	volume_envelope 10, 3
	note G_, 2
	volume_envelope 6, 3
	note G_, 2
	volume_envelope 10, 3
	note B_, 2
	volume_envelope 6, 3
	note B_, 2
	volume_envelope 10, 3
	note F#, 2
	volume_envelope 6, 3
	note F#, 2
	sound_loop 3, Music_LavenderTown_branch_ef8a0
	sound_ret
 
Music_LavenderTown_Ch3: ; ef932
	vibrato 18, 2, 4
	note_type 12, 1, 3
	stereo_panning TRUE, FALSE
	rest 16
	rest 16
	rest 16
	rest 8
	octave 5
	note E_, 4
	note F_, 4
Music_LavenderTown_branch_ef941: ; ef941
	volume_envelope 1, 2
	octave 5
	sound_call Music_LavenderTownNight_Ch3_Type1
	sound_call Music_LavenderTownNight_Ch3_Type2
	sound_call Music_LavenderTownNight_Ch3_Type1
	note D_, 12
	note C_, 2
	note D_, 2
	note C_, 16
	note C_, 12
	rest 4
	volume_envelope 2, 4
	sound_call Music_LavenderTown_Ch3_Part2
	note_type 8, 2, 4
	note E_, 2
	note F_, 2
	note E_, 2
	note_type 12, 2, 4
	sound_call Music_LavenderTown_Ch3_Part3
	sound_loop 0, Music_LavenderTown_branch_ef941
; ef9bc
 
Music_LavenderTownNight_Ch3_Type1:
	note G_, 4;
	rest 4
	note G_, 4
	rest 4
	note E_, 4
	rest 4
	note E_, 4
	note F_, 4
	note G_, 4
	note F_, 4
	note E_, 4
	note B_, 4
	note C#, 8
	rest 2
	note C#, 2
	note D_, 2
	note E_, 2
	note F_, 10
	note G_, 2
	note F_, 2
	note E_, 2
	sound_ret
 
Music_LavenderTownNight_Ch3_Type2:
	note D_, 8;
	octave 4
	note A_, 4
	octave 5
	note D_, 4
	note E_, 12
	note F_, 2
	note E_, 2
	note D_, 12
	note E_, 2
	note F_, 2
	sound_ret
 
Music_LavenderTown_Ch3_Part2:
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 6
	note C_, 4
	octave 5
	note G_, 4
	note F_, 4
	note E_, 4
	note D_, 4
	note C_, 4
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 6
	note C_, 4
	octave 5
	note G_, 4
	octave 6
	note F_, 4
	sound_ret
 
Music_LavenderTown_Ch3_Part3:
	note D_, 4
	note C_, 4
	octave 5
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 6
	note C_, 4
	octave 5
	note G_, 4
	note A_, 2
	note G_, 2
	note A_, 2
	note B_, 2
	octave 6
	note C_, 4
	note C#, 4
	note D_, 12
	note C_, 4
	octave 5
	note B_, 12
	note E_, 2
	note F_, 2
	sound_ret
 
; ============================================================================================================
; ============================================================================================================
 
Music_LavenderTownNight:
	channel_count 3
	channel 1, Music_LavenderTownNight_Ch1
	channel 2, Music_LavenderTownNight_Ch2
	channel 3, Music_LavenderTownNight_Ch3
 
Music_LavenderTownNight_Ch1: ; ef739
	tempo 167
	volume 7, 7
	stereo_panning FALSE, TRUE
	vibrato 6, 1, 4
	duty_cycle $1
	note_type 12, 11, 3
rept 4
	rest 16
endr
	sound_call Music_LavenderTown_branch_ef74c
 
Music_LavenderTownNight_Ch2: ; ef899
	duty_cycle $3
	vibrato 8, 1, 4
	stereo_panning TRUE, TRUE
	sound_call Music_LavenderTown_branch_ef8a0
	volume_envelope 10, 3
	note C_, 2
	volume_envelope 6, 3
	note C_, 2
	volume_envelope 10, 3
	note G_, 2
	volume_envelope 6, 3
	note G_, 2
	volume_envelope 10, 3
	note B_, 2
	volume_envelope 6, 3
	note B_, 2
	volume_envelope 10, 3
	octave 6
	note D_, 2
	volume_envelope 6, 3
	note D_, 2
	duty_cycle $2
	sound_call Music_LavenderTown_branch_ef8d7
 
Music_LavenderTownNight_Ch3: ; ef932
	vibrato 18, 1, 4
	note_type 12, 1, 1
	stereo_panning TRUE, FALSE
	rest 16
	rest 16
	rest 16
	rest 8
	octave 5
	note E_, 4
	note F_, 4
Music_LavenderTownNight_Ch3_loop: ; ef941
	volume_envelope 1, 3
	octave 5
	sound_call Music_LavenderTownNight_Ch3_Type1
	sound_call Music_LavenderTownNight_Ch3_Type2
	sound_call Music_LavenderTownNight_Ch3_Type1
	note D_, 12
	note C_, 2
	note D_, 2
	note C_, 16
	note C_, 12
	rest 4
	volume_envelope 1, 2
	sound_call Music_LavenderTown_Ch3_Part2
	note_type 8, 1, 2
	note E_, 2
	note F_, 2
	note E_, 2
	note_type 12, 1, 2
	sound_call Music_LavenderTown_Ch3_Part3
	sound_loop 0, Music_LavenderTownNight_Ch3_loop
