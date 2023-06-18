	object_const_def ; object_event constants
	const DAYCARE_GRAMPS
	const DAYCARE_GRANNY

DayCare_MapScripts:
	db 0 ; scene scripts

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .EggCheckCallback

.EggCheckCallback:
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .PutDayCareManOutside
	clearevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	setevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	return

.PutDayCareManOutside:
	setevent EVENT_DAY_CARE_MAN_IN_DAY_CARE
	clearevent EVENT_DAY_CARE_MAN_ON_ROUTE_34
	return

DayCareManScript_Inside:
	faceplayer
	opentext
	checkevent EVENT_GOT_ODD_EGG
	iftrue .AlreadyHaveOddEgg
	writetext DayCareManText_GiveOddEgg
	promptbutton
	closetext
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	special GiveOddEgg
	opentext
	writetext DayCareText_GotOddEgg
	playsound SFX_KEY_ITEM
	waitsfx
	writetext DayCareText_DescribeOddEgg
	waitbutton
	closetext
	setevent EVENT_GOT_ODD_EGG
	end

.PartyFull:
	opentext
	writetext DayCareText_PartyFull
	waitbutton
	closetext
	end

.AlreadyHaveOddEgg:
	special DayCareMan
	waitbutton
	closetext
	end

DayCareLadyScript:
	faceplayer
	opentext
	checkflag ENGINE_DAY_CARE_MAN_HAS_EGG
	iftrue .HusbandWasLookingForYou
	special DayCareLady
	waitbutton
	closetext
	end

.HusbandWasLookingForYou:
	writetext Text_GrampsLookingForYou
	waitbutton
	closetext
	end

DayCareBookshelf:
	jumpstd difficultbookshelf

Text_GrampsLookingForYou:
	text "Gramps vous"
	line "cherchait."
	done

Text_DayCareManTalksAboutEggTicket:
	para "Il y a du nouveau"
	line "ä Bruxelles,"

	para "c'est le TRADE"
	line "CORNER."

	para "On m'a donné un"
	line "TICKET pour une"

	para "idée cool, ä"
	line "aller chercher"

	para "lä-bas, "
	line "soit-disant."

	para "Tu peux l'avoir"
	line "si tu veux."
	done

DayCareManText_GiveOddEgg:
	text "Je suis auteur,"
	line "mais j'ai des "
	cont "problémes d'inspi."

	para "Vous étes"
	line "journaliste?!"

	para "J'ai une idée"
	line "cool ä partager,"
	cont "Ca te dit?"

	done

DayCareText_ComeAgain:
	text "Repassez."
	done

DayCareText_GotOddEgg:
	text "<PLAYER> note"
	line "lidée cool!"
	done

DayCareText_DescribeOddEgg:
	text "Je l'ai eue en"
	line "travaillant"

	para "pour quelqu'un"
	line "d'autre."

	para "Mais le type"
	line "est parti, et"

	para "je peux te la"
	line "donner."
	done

DayCareText_PartyFull:
	text "Pas de place"
	line "dans vot'calpin."
	done

DayCare_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  0,  5, ROUTE_34, 3
	warp_event  0,  6, ROUTE_34, 4
	warp_event  2,  7, ROUTE_34, 5
	warp_event  3,  7, ROUTE_34, 5

	db 0 ; coord events

	db 2 ; bg events
	bg_event  0,  1, BGEVENT_READ, DayCareBookshelf
	bg_event  1,  1, BGEVENT_READ, DayCareBookshelf

	db 2 ; object events
	object_event  2,  3, SPRITE_GRAMPS, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, DayCareManScript_Inside, EVENT_DAY_CARE_MAN_IN_DAY_CARE
	object_event  5,  3, SPRITE_GRANNY, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, DayCareLadyScript, -1
