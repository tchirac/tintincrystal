	object_const_def ; object_event constants
	const VIOLETPOKECENTER1F_NURSE
	const VIOLETPOKECENTER1F_GAMEBOY_KID
	const VIOLETPOKECENTER1F_GENTLEMAN
	const VIOLETPOKECENTER1F_YOUNGSTER
	const VIOLETPOKECENTER1F_ELMS_AIDE

VioletPokecenter1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletPokecenterNurse:
	jumpstd pokecenternurse

VioletPokecenter1F_ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	iftrue .SecondTimeAsking
	writetext VioletPokecenterElmsAideFavorText
.AskTakeEgg:
	yesorno
	iffalse .RefusedEgg
	readvar VAR_PARTYCOUNT
	ifequal PARTY_LENGTH, .PartyFull
	giveegg TOGEPI, 5
	getstring STRING_BUFFER_4, .eggname
	scall .AideGivesEgg
	setevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	clearevent EVENT_ELMS_AIDE_IN_LAB
	clearevent EVENT_TOGEPI_HATCHED
	setmapscene ROUTE_32, SCENE_ROUTE32_OFFER_SLOWPOKETAIL
	writetext VioletPokecenterElmsAideGiveEggText
	waitbutton
	closetext
	readvar VAR_FACING
	ifequal UP, .AideWalksAroundPlayer
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksStraightOutOfPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.AideWalksAroundPlayer:
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideWalksLeftToExitPokecenter
	turnobject PLAYER, DOWN
	applymovement VIOLETPOKECENTER1F_ELMS_AIDE, MovementData_AideFinishesLeavingPokecenter
	playsound SFX_EXIT_BUILDING
	disappear VIOLETPOKECENTER1F_ELMS_AIDE
	waitsfx
	end

.eggname
	db "Caramail@"

.AideGivesEgg:
	jumpstd receivetogepiegg
	end

.PartyFull:
	writetext VioletCityElmsAideFullPartyText
	waitbutton
	closetext
	end

.RefusedEgg:
	writetext VioletPokecenterElmsAideRefuseText
	waitbutton
	closetext
	setevent EVENT_REFUSED_TO_TAKE_EGG_FROM_ELMS_AIDE
	end

.SecondTimeAsking:
	writetext VioletPokecenterElmsAideAskEggText
	sjump .AskTakeEgg

VioletPokecenter1FGameboyKidScript:
	jumptextfaceplayer VioletPokecenter1FGameboyKidText

VioletPokecenter1FGentlemanScript:
	jumptextfaceplayer VioletPokecenter1FGentlemanText

VioletPokecenter1FYoungsterScript:
	jumptextfaceplayer VioletPokecenter1FYoungsterText

MovementData_AideWalksStraightOutOfPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

MovementData_AideWalksLeftToExitPokecenter:
	step LEFT
	step DOWN
	step_end

MovementData_AideFinishesLeavingPokecenter:
	step DOWN
	step DOWN
	step DOWN
	step_end

VioletPokecenterElmsAideFavorText:
	text "<PLAY_G>, cela"
	line "fait longtemps!"

	para "Prof Bergamotte"
	line "m'a confié un"
	cont "caramel mou."

	para "Il parait que"
	line "ca donne des"
	cont "idées de notes."

	para "Ce caramel vous"
	line "intéresse-t-il?"
	done

VioletPokecenterElmsAideGiveEggText:
	text "On pense qu'il"
	line "faut garder le"
	cont "caramel mou sur"

	para "soi suffisament"
	line "longtemps pour"
	cont "que l'idée émerge."
	
	para "Si le caramel"
	line "mou est au PC,"
	cont "il ne sert ä rien."

	para "<PLAY_G>, kiffe-"
	line "le bien."

	para "Ca peut mettre du"
	line "temps ä monter."

	para "Appelle le prof"
	line "Bergamotte quand"
	cont "ca vient!"
	done

VioletCityElmsAideFullPartyText:
	text "Oh, non. Vous avez"
	line "déjä 6 notes"
	cont "sur vous."

	para "Revenez quand"
	line "vous aurez de la"
	cont "place pour le"

	para "caramel mou."
	done

VioletPokecenterElmsAideRefuseText:
	text "Mais… c'est"
	line "tendre, c'est"
	cont "vrai…"
	done

VioletPokecenterElmsAideAskEggText:
	text "<PLAY_G>, prenez"
	line "vous le caramel"
	cont "mou?"
	done

; unused
VioletPokecenterFarawayLinkText:
	text "Ca serait cool de"
	line "pouvoir utiliser"

	para "un moyen de parler"
	line "avec d'autres gens"

	para "qui vivent trés"
	line "loin."
	done

; unused
VioletPokecenterMobileAdapterText:
	text "Il parait qu'on"
	line "peut se battre"
	cont "avec un cable LINK."

	para "Ou alors je me"
	line "trompe de jeu."
	done

VioletPokecenter1FGameboyKidText:
	text "Un type a quand"
	line "méme réussi ä"
	cont "programmer le"

	para "PC pour qu'il"
	line "puisse uploader"
	cont "des objets."

	para "C'est fou!!"
	done

VioletPokecenter1FGentlemanText:
	text "J'étais dans le"
	line "coin, 3 ans"
	cont "auparavent."

	para "C'était mieux"
	line "avant."
	done

VioletPokecenter1FYoungsterText:
	text "Si vous écrivez"
	line "trop vite sans"
	cont "faire juger vos"

	para "écrits dans les"
	line "GYMS, vous perdrez"

	para "confiance et vos"
	line "notes deviendront"
	cont "absurdes."
	done

VioletPokecenter1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  3,  7, VIOLET_CITY, 5
	warp_event  4,  7, VIOLET_CITY, 5
	warp_event  0,  7, POKECENTER_2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 5 ; object events
	object_event  3,  1, SPRITE_NURSE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenterNurse, -1
	object_event  7,  6, SPRITE_GAMEBOY_KID, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_GREEN, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGameboyKidScript, -1
	object_event  1,  4, SPRITE_GENTLEMAN, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FGentlemanScript, -1
	object_event  8,  1, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1FYoungsterScript, -1
	object_event  4,  3, SPRITE_SCIENTIST, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletPokecenter1F_ElmsAideScript, EVENT_ELMS_AIDE_IN_VIOLET_POKEMON_CENTER
