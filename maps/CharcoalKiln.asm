	object_const_def ; object_event constants
	const CHARCOALKILN_BLACK_BELT
	const CHARCOALKILN_YOUNGSTER
	const CHARCOALKILN_MOLTRES

CharcoalKiln_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

CharcoalKilnBoss:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM01_CUT
	iftrue .GotCut
	checkevent EVENT_CLEARED_SLOWPOKE_WELL
	iftrue .SavedSlowpoke
	writetext CharcoalKilnBossText1
	waitbutton
	closetext
	end

.SavedSlowpoke:
	writetext CharcoalKilnBossText2
	waitbutton
	closetext
	end

.GotCut:
	writetext CharcoalKilnBossText3
	waitbutton
	closetext
	end

CharcoalKilnApprentice:
	faceplayer
	opentext
	checkevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	iftrue .YoureTheCoolest
	checkevent EVENT_GOT_HM01_CUT
	iftrue .Thanks
	writetext CharcoalKilnApprenticeText1
	waitbutton
	closetext
	end

.Thanks:
	writetext CharcoalKilnApprenticeText2
	promptbutton
	verbosegiveitem CHARCOAL
	iffalse .Done
	setevent EVENT_GOT_CHARCOAL_IN_CHARCOAL_KILN
	closetext
	end

.YoureTheCoolest:
	writetext CharcoalKilnApprenticeText3
	waitbutton
.Done:
	closetext
	end

CharcoalKilnFarfetchd:
	faceplayer
	opentext
	writetext FarfetchdText
	cry FARFETCH_D
	waitbutton
	closetext
	end

CharcoalKilnBookshelf:
	jumpstd magazinebookshelf

CharcoalKilnRadio:
	jumpstd radio2

CharcoalKilnBossText1:
	text "Je travaille ä"
	line "mine d'uranium."

	para "Mon frére a"
	line "restaurant ä"
	cont "Bruxelles,"

	para "parfois je lui"
	line "raméne poireaux"
	cont "syldaves."
	done

CharcoalKilnBossText2:
	text "Les oursons,"
	line "partout…"

	para "Mes amis, forét."

	para "Roi Ottokar"
	line "cherche sceptre."

	para "Bientot, grosse"
	line "féte syldave."
	done

CharcoalKilnBossText3:
	text "Vous ouvert mine,"
	line "invité oursons,"

	para "et sauvé sceptre"
	line "roi Ottkar?"
	done

CharcoalKilnApprenticeText1:
	text "Si le roi n'a pas"
	line "son sceptre pour"
	cont "la cérémonie,"

	para "Il sera destitué…"
	done

CharcoalKilnApprenticeText2:
	text "Encore vous? Quoi"
	line "encore?"

	para "Tiens, du CHARCOAL"
	line "pour tes #."

	para "Ca rend le feu"
	line "plus vif dans"
	cont "l'écriture."
	done

CharcoalKilnApprenticeText3:
	text "Il y a des oursons"
	line "partout, et le roi"
	cont "a son sceptre."

	para "Jusqu'ä l'année"
	line "prochaine!"
	done

FarfetchdText:
	text "Le sceptre!"
	done

CharcoalKiln_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, AZALEA_TOWN, 2
	warp_event  3,  7, AZALEA_TOWN, 2

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  1,  1, BGEVENT_READ, CharcoalKilnBookshelf
	bg_event  7,  1, BGEVENT_READ, CharcoalKilnRadio

	db 3 ; object events
	object_event  2,  3, SPRITE_BLACK_BELT, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnBoss, EVENT_CHARCOAL_KILN_BOSS
	object_event  5,  3, SPRITE_YOUNGSTER, SPRITEMOVEDATA_WANDER, 1, 1, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CharcoalKilnApprentice, EVENT_CHARCOAL_KILN_APPRENTICE
	object_event  5,  6, SPRITE_MOLTRES, SPRITEMOVEDATA_POKEMON, 2, 2, -1, -1, PAL_NPC_BROWN, OBJECTTYPE_SCRIPT, 0, CharcoalKilnFarfetchd, EVENT_CHARCOAL_KILN_FARFETCH_D
