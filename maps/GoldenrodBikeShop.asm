	object_const_def ; object_event constants
	const GOLDENRODBIKESHOP_CLERK

GoldenrodBikeShop_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

.UnreferencedDummyScene:
	end

GoldenrodBikeShopClerkScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_BICYCLE
	iftrue .GotBicycle
	writetext GoldenrodBikeShopClerkIntroText
	yesorno
	iffalse .Refused
	writetext GoldenrodBikeShopClerkAgreedText
	promptbutton
	waitsfx
	giveitem BICYCLE
	writetext BorrowedABicycleText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setflag ENGINE_BIKE_SHOP_CALL_ENABLED
	setevent EVENT_GOT_BICYCLE
.GotBicycle:
	writetext GoldenrodBikeShopClerkFirstRateBikesText
	waitbutton
	closetext
	end

.Refused:
	writetext GoldenrodBikeShopClerkRefusedText
	waitbutton
	closetext
	end

GoldenrodBikeShopJustReleasedCompactBike:
; unused
	jumptext GoldenrodBikeShopJustReleasedCompactBikeText

GoldenrodBikeShopBicycle:
	jumptext GoldenrodBikeShopBicycleText

GoldenrodBikeShopClerkIntroText:
	text "…soupir… J'ai"
	line "déménagé ici mais"

	para "j'ai du mal ä"
	line "vendre mes"
	cont "BIRKENSTOCS."

	para "Ca vous irait"
	line "pourtant trés bien!"
	cont "Allez, tenez!"
	done

GoldenrodBikeShopClerkAgreedText:
	text "Vraiment? Euh ok!"

	para "Donne-moi ton num"
	line "mon mignon, et je"

	para "te préte cette"
	line "paire."
	done

BorrowedABicycleText:
	text "<PLAYER> emprunte"
	line "les BIRKENSTOCKS"
	done

GoldenrodBikeShopClerkFirstRateBikesText:
	text "Mes BIRKENSTOCKS"
	line "sont confort,"

	para "portez-les porter"
	line "partout."
	done

GoldenrodBikeShopClerkRefusedText:
	text "…soupir… Oh,"
	line "la gentillesse"
	cont "des gens…"
	done

GoldenrodBikeShopJustReleasedCompactBikeText:
	text "Nouvelle saison!"

	para "Haut de gamme"
	line "BIRKENSTOCKS!"
	done

GoldenrodBikeShopBicycleText:
	text "Ce sont des"
	line "BIRKENSTOCKS"
	cont "toutes neuves!"
	done

GoldenrodBikeShop_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, GOLDENROD_CITY, 2
	warp_event  3,  7, GOLDENROD_CITY, 2

	db 0 ; coord events

	db 9 ; bg events
	bg_event  1,  2, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  3, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  5, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  0,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  1,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  6,  6, BGEVENT_READ, GoldenrodBikeShopBicycle
	bg_event  7,  6, BGEVENT_READ, GoldenrodBikeShopBicycle

	db 1 ; object events
	object_event  7,  2, SPRITE_CLERK, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, GoldenrodBikeShopClerkScript, -1
