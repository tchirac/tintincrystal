	object_const_def ; object_event constants
	const ROUTE35GOLDENRODGATE_RANDY
	const ROUTE35GOLDENRODGATE_POKEFAN_F
	const ROUTE35GOLDENRODGATE_FISHER

Route35GoldenrodGate_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

RandyScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HP_UP_FROM_RANDY
	iftrue .gothpup
	checkevent EVENT_GAVE_KENYA
	iftrue .questcomplete
	checkevent EVENT_GOT_KENYA
	iftrue .alreadyhavekenya
	writetext Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText
	yesorno
	iffalse .refused
	writetext Route35GoldenrodGateRandyThanksKidText
	promptbutton
	waitsfx
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .partyfull
	writetext Route35GoldenrodGatePlayerReceivedAMonWithMailText
	playsound SFX_KEY_ITEM
	waitsfx
	givepoke SPEAROW, 10, NO_ITEM, TRUE, GiftSpearowName, GiftSpearowOTName
	givepokemail GiftSpearowMail
	setevent EVENT_GOT_KENYA
.alreadyhavekenya
	writetext Route35GoldenrodGateRandyWeirdTreeBlockingRoadText
	waitbutton
	closetext
	end

.partyfull
	writetext Route35GoldenrodGateRandyCantCarryAnotherMonText
	waitbutton
	closetext
	end

.refused
	writetext Route35GoldenrodGateRandyOhNeverMindThenText
	waitbutton
	closetext
	end

.questcomplete
	writetext Route35GoldenrodGateRandySomethingForYourTroubleText
	promptbutton
	verbosegiveitem HP_UP
	iffalse .bagfull
	setevent EVENT_GOT_HP_UP_FROM_RANDY
.gothpup
	writetext Route35GoldenrodGateRandyMyPalWasSnoozingRightText
	waitbutton
.bagfull
	closetext
	end

GiftSpearowMail:
	db FLOWER_MAIL
	db   "DARK CAVE méne"
	next "ä une autre route@"

GiftSpearowName:
	db "KENYA@"

GiftSpearowOTName:
	db "RANDY@"

	db 0 ; filler

Route35GoldenrodGatePokefanFScript:
	faceplayer
	opentext
	checkevent EVENT_FOUGHT_SUDOWOODO
	iftrue .FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText
	waitbutton
	closetext
	end

.FoughtSudowoodo
	writetext Route35GoldenrodGatePokefanFText_FoughtSudowoodo
	waitbutton
	closetext
	end

Route35GoldenrodGateFisherScript:
	jumptextfaceplayer Route35GoldenrodGateFisherText

Route35GoldenrodGateRandyAskTakeThisMonToMyFriendText:
	text "Eh beau gosse!"
	line "Tu me ferais"
	cont "une faveur?"

	para "Apporte cet"
	line "draft avec piéce"
	cont "jointe ä un ami?"

	para "Il est ROUTE 31."
	done

Route35GoldenrodGateRandyThanksKidText:
	text "T'y vas? Parfait!"
	line "Merci, BG!"

	para "Mon poto est un"
	line "gros qui se "
	cont "mouche."

	para "Tu le verra"
	line "sans probléme!"
	done

Route35GoldenrodGatePlayerReceivedAMonWithMailText:
	text "<PLAYER> recoit"
	line "# avec MAIL."
	done

Route35GoldenrodGateRandyWeirdTreeBlockingRoadText:
	text "Tu peux la lire,"
	line "mais ne la perds"
	cont "pas! ROUTE 31!"

	para "Oh, yeah. Il y"
	line "avait une asperge"
	cont "bloquant la voie."

	para "Je me demande si"
	line "elle est partie?"
	done

Route35GoldenrodGateRandyCantCarryAnotherMonText:
	text "Vous avez 6"
	line "#, c'est trop…"
	done

Route35GoldenrodGateRandyOhNeverMindThenText:
	text "Oh… Pas de "
	line "souci…"
	done

Route35GoldenrodGateRandySomethingForYourTroubleText:
	text "Merci, BG! Tu"
	line "l'as livré pour"
	cont "moi!"

	para "Voici quelque"
	line "chose pour toi!"
	done

Route35GoldenrodGateRandyMyPalWasSnoozingRightText:
	text "Mon poto était"
	line "morveux, hein?"
	cont "Eh. C'est lui."
	done

Route35GoldenrodGatePokefanFText:
	text "Une étrange"
	line "asperge bloque"
	cont "le passage."

	para "Elle se contor-"
	line "sionne si tu lui"
	cont "parles."

	para "Il parait qu'elle"
	line "péte un plomb"
	cont "quand on l'asperge."

	para "Ironique."
	done

Route35GoldenrodGatePokefanFText_FoughtSudowoodo:
	text "J'aime la"
	line "berceuse de la"
	cont "radio."
	done

Route35GoldenrodGateFisherText:
	text "Je me demande"
	line "combien de #"

	para "ton esprit malade"
	line "peut générer."

	para "150?"
	line "peut-étre."
	done

Route35GoldenrodGate_MapEvents:
	db 0, 0 ; filler

	db 4 ; warp events
	warp_event  4,  0, ROUTE_35, 1
	warp_event  5,  0, ROUTE_35, 2
	warp_event  4,  7, GOLDENROD_CITY, 12
	warp_event  5,  7, GOLDENROD_CITY, 12

	db 0 ; coord events

	db 0 ; bg events

	db 3 ; object events
	object_event  0,  4, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, RandyScript, -1
	object_event  6,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_WALK_UP_DOWN, 0, 1, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGatePokefanFScript, -1
	object_event  3,  2, SPRITE_FISHER, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, Route35GoldenrodGateFisherScript, -1
