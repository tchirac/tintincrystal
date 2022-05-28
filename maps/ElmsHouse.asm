	object_const_def ; object_event constants
	const ELMSHOUSE_ELMS_WIFE
	const ELMSHOUSE_ELMS_SON

ElmsHouse_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

ElmsWife:
	jumptextfaceplayer ElmsWifeText

ElmsSon:
	jumptextfaceplayer ElmsSonText

ElmsHousePC:
	jumptext ElmsHousePCText

ElmsHouseBookshelf:
	jumpstd difficultbookshelf

ElmsWifeText:
	text "Oh, <PLAY_G>!"
	line "Le prof Tounesol"

	para "est absent. Nous"
	line "ne fouillons"
	cont "pas chez lui."
	done

ElmsSonText:
	text "Ou est-il, ce"
	line "professeur"
	cont "Tournesol?"
	done

ElmsHouseLabFoodText:
; unused
	text "Il y a ä manger"
	line "ici. Est-ce"
	cont "pour Triphon?"
	done

ElmsHousePokemonFoodText:
; unused
	text "Ca, c'est le"
	line "café ä renverser"
	cont "sur les copies."
	done

ElmsHousePCText:
	text "…"
	line "On dirait les "

	para "plans d'une"
	line "sorte de gros"
	cont "haut-parleur."

	para "C'est une "
	line "machine qui va"
	cont "faire du bruit!"

	para "…"

	para "BAM!"
	done

ElmsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, NEW_BARK_TOWN, 4
	warp_event  3,  7, NEW_BARK_TOWN, 4

	db 0 ; coord events

	db 3 ; bg events
	bg_event  0,  1, BGEVENT_READ, ElmsHousePC
	bg_event  6,  1, BGEVENT_READ, ElmsHouseBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsHouseBookshelf

	db 2 ; object events
	object_event  1,  5, SPRITE_TEACHER, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, ElmsWife, -1
	object_event  5,  4, SPRITE_BUG_CATCHER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ElmsSon, -1
