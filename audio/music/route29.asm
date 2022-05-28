Music_Route29:
	channel_count 4
	channel 1, Music_Route29_Ch1
	channel 2, Music_Route29_Ch2
	channel 3, Music_Route29_Ch3
	channel 4, Music_Route29_Ch4



Music_Route29_Ch1:
	tempo 200
	volume 7, 7
	vibrato 18, 2, 4
	pitch_offset 1
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
.mainloop:
	octave 3
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ; dum-
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ;dum-
	sound_loop 0, .mainloop

Music_Route29_Ch2:
	volume 7, 7
	vibrato 18, 2, 4
	pitch_offset 1
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
.mainloop:
	octave 3
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ; dum-
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ;dum-
	sound_loop 0, .mainloop

Music_Route29_Ch3:
	volume 9, 9
	vibrato 18, 2, 4
	pitch_offset 1
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
.mainloop:
	octave 1
	note A_, 4 ;rrrrrrr
	octave 2
	note A_, 4 ;raaaam!

	octave 3
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ; dum-
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ;dum-

	note A_, 1 ; -dum,
	note A_, 2 ; du 
	note E_, 1 ; dum-
	rest 2
	octave 3
	note A_, 1 ;pa (when
	note B_, 1 ;pa (the


	note C_, 8 ;laaa (nigth

	rest 2
	note D_, 2;pa (
	note E_, 2;pa (
	octave 4
	note C_, 2;pa (a-

	octave 3
	note B_, 8;ppaaa (-bove


	octave 1
	note G_, 1 ; POM-
	octave 2
	note A_, 1 ;-POM!
	rest 6

	octave 1
	note G_, 1 ; POM-
	octave 2
	note A_, 1 ;-POM!
	note A_, 1 ;-POM!
	rest 2
	note A_, 1 ;pom-
	note A_, 1 ;-pom-
	note A_, 1 ;-pom-

	note B_, 1 ;-po-
	note B_, 1 ;-po-
	note A_, 1 ;-pom
	note A_, 1 ;-pom
	octave 4
	note A_, 4 ;nuuu

	note A_, 2 ; nu
	octave 3
	note F_, 2 ; nu
	note D_, 2 ; nu
	note A_, 2 ; nu

	note C_, 3 ; nu
	note D_, 1 ; nu
	note E_, 4 ; nu



	sound_loop 0, .mainloop

Music_Route29_Ch4:
	volume 7, 7
	vibrato 18, 2, 4
	pitch_offset 1
	duty_cycle 2
	stereo_panning FALSE, TRUE
	note_type 12, 1, 1
.mainloop:
	octave 3
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ; dum-
	note A_, 1 ; -dum
	note A_, 2 ; du
	note E_, 1 ;dum-
	sound_loop 0, .mainloop



