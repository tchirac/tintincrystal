	object_const_def ; object_event constants
	const CHERRYGROVEPOKECENTER1F_NURSE
	const CHERRYGROVEPOKECENTER1F_FISHER
	const CHERRYGROVEPOKECENTER1F_GENTLEMAN
	const CHERRYGROVEPOKECENTER1F_TEACHER

CherrygrovePokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CherrygrovePokecenter1FNurseScript:
	jumpstd pokecenternurse

CherrygrovePokecenter1FFisherScript:
	jumptextfaceplayer CherrygrovePokecenter1FFisherText

CherrygrovePokecenter1FGentlemanScript:
	jumptextfaceplayer CherrygrovePokecenter1FGentlemanText

CherrygrovePokecenter1FTeacherScript:
	faceplayer
	opentext
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .CommCenterOpen
	writetext CherrygrovePokecenter1FTeacherText
	waitbutton
	closetext
	end

.CommCenterOpen:
	writetext CherrygrovePokecenter1FTeacherText_CommCenterOpen
	waitbutton
	closetext
	end

CherrygrovePokecenter1FFisherText:
	text "C'est formidable,"
	line "tout est gratuit!"
	done

CherrygrovePokecenter1FGentlemanText:
	text "Dans tous les PTT,"
	line "il y a un PC en"
	cont "libre service."
	done

CherrygrovePokecenter1FTeacherText:
	text "Le COMMUNICATION"
	line "CENTER au 1er"
	cont "étage ne vous"

	para "sera pas d'une"
	line "grande utilité"

	para "depuis un"
	line "émulateur."

	para "De toute facon,"
	line "il est en travaux."
	done

CherrygrovePokecenter1FTeacherText_CommCenterOpen:
	text "Le COMMUNICATION"
	line "CENTER au 1er"
	cont "étage ne vous"

	para "sera pas d'une"
	line "grande utilité"

	para "depuis un"
	line "émulateur."
	done

CherrygrovePokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, CHERRYGROVE_CITY, 2
	warp_event  4,  7, CHERRYGROVE_CITY, 2
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 4 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FNurseScript, -1
	object_event  2,  3, SPRITE_FISHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FFisherScript, -1
	object_event  8,  6, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FGentlemanScript, -1
	object_event  1,  6, SPRITE_TEACHER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, CherrygrovePokecenter1FTeacherScript, -1
