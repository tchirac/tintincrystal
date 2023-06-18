	object_const_def ; object_event constants
	const SLOWPOKEWELLB1F_ROCKET1
	const SLOWPOKEWELLB1F_ROCKET2
	const SLOWPOKEWELLB1F_ROCKET3
	const SLOWPOKEWELLB1F_ROCKET_GIRL
	const SLOWPOKEWELLB1F_SLOWPOKE1
	const SLOWPOKEWELLB1F_SLOWPOKE2
	const SLOWPOKEWELLB1F_KURT
	const SLOWPOKEWELLB1F_BOULDER
	const SLOWPOKEWELLB1F_POKE_BALL

SlowpokeWellB1F_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

SlowpokeWellB1FKurtScript:
	jumptextfaceplayer SlowpokeWellB1FKurtText

TrainerGruntM29:
	trainer GRUNTM, GRUNTM_29, EVENT_BEAT_ROCKET_GRUNTM_29, GruntM29SeenText, GruntM29BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM29AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntM1:
	trainer GRUNTM, GRUNTM_1, EVENT_BEAT_ROCKET_GRUNTM_1, GruntM1SeenText, GruntM1BeatenText, 0, .Script

.Script:
	opentext
	writetext TrainerGruntM1WhenTalkText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SLOWPOKEWELLB1F_ROCKET1
	disappear SLOWPOKEWELLB1F_ROCKET2
	disappear SLOWPOKEWELLB1F_ROCKET3
	disappear SLOWPOKEWELLB1F_ROCKET_GIRL
	pause 15
	special FadeInQuickly
	disappear SLOWPOKEWELLB1F_KURT
	moveobject SLOWPOKEWELLB1F_KURT, 11, 6
	appear SLOWPOKEWELLB1F_KURT
	applymovement SLOWPOKEWELLB1F_KURT, KurtSlowpokeWellVictoryMovementData
	turnobject PLAYER, RIGHT
	opentext
	writetext KurtLeaveSlowpokeWellText
	waitbutton
	closetext
	setevent EVENT_CLEARED_SLOWPOKE_WELL
	variablesprite SPRITE_AZALEA_ROCKET, SPRITE_SILVER
	setmapscene AZALEA_TOWN, SCENE_AZALEATOWN_RIVAL_BATTLE
	clearevent EVENT_ILEX_FOREST_APPRENTICE
	clearevent EVENT_ILEX_FOREST_FARFETCHD
	setevent EVENT_CHARCOAL_KILN_FARFETCH_D
	setevent EVENT_CHARCOAL_KILN_APPRENTICE
	setevent EVENT_SLOWPOKE_WELL_SLOWPOKES
	setevent EVENT_SLOWPOKE_WELL_KURT
	clearevent EVENT_AZALEA_TOWN_SLOWPOKES
	clearevent EVENT_KURTS_HOUSE_SLOWPOKE
	clearevent EVENT_KURTS_HOUSE_KURT_1
	special FadeOutPalettes
	special HealParty
	pause 15
	warp KURTS_HOUSE, 3, 3
	end

TrainerGruntM2:
	trainer GRUNTM, GRUNTM_2, EVENT_BEAT_ROCKET_GRUNTM_2, GruntM2SeenText, GruntM2BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntM2AfterBattleText
	waitbutton
	closetext
	end

TrainerGruntF1:
	trainer GRUNTF, GRUNTF_1, EVENT_BEAT_ROCKET_GRUNTF_1, GruntF1SeenText, GruntF1BeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext GruntF1AfterBattleText
	waitbutton
	closetext
	end

SlowpokeWellB1FSlowpokeWithMailScript:
	faceplayer
	opentext
	cry SLOWPOKE
	writetext SlowpokeWellB1FSlowpokeWithMailText
	yesorno
	iftrue .ReadMail
	closetext
	end

.ReadMail:
	writetext SlowpokeWellB1FSlowpokeMailText
	waitbutton
	closetext
	end

SlowpokeWellB1FTaillessSlowpokeScript:
	faceplayer
	opentext
	writetext SlowpokeWellB1FTaillessSlowpokeText
	cry SLOWPOKE
	waitbutton
	closetext
	end

SlowpokeWellB1FBoulder:
	jumpstd strengthboulder

SlowpokeWellB1FSuperPotion:
	itemball SUPER_POTION

KurtSlowpokeWellVictoryMovementData:
	step LEFT
	step LEFT
	step LEFT
	step LEFT
	step UP
	step_sleep 8
	step_sleep 8
	step_sleep 8
	step LEFT
	step UP
	step UP
	step_sleep 8
	step_sleep 8
	step_sleep 8
	turn_head LEFT
	step_end

SlowpokeWellB1FKurtText:
	text "Ah vous voici,"
	line "<PLAYER>!"

	para "La visite peut"
	line "commencer."

	para "Assurez-vous de"
	line "parler ä tous"
	cont "les guides."

	para "Bonne visite!"
	done

GruntM29SeenText:
	text "BONJOUR ET BIEN-"
	line "VENUE A LA MINE"
	cont "D'URANIUM!!!!!"

	para "ON Y EXTRAIT DE"
	line "L'URANIUM!!!!!!"
	done

GruntM29BeatenText:
	text "OK, MAIS A LA"
	line "MINE,"
	done

GruntM29AfterBattleText:
	text "ON EXRAIT DE"
	line "L'URANIUM DE"

	para "LA MINE"
	line "D'URAIUM"
	done

GruntF1SeenText:
	text "L'uramium se"
	line "trouve sous la"
	cont "forme de minerai"
	cont "brut."
	done

GruntF1BeatenText:
	text "Le minerai"
	line "contient l'uranium"
	done

GruntF1AfterBattleText:
	text "Le minerai con-"
	line "tient de l'uranium"
	cont "sous forme oxydée,"

	para "principalement du"
	line "dioxyde d'uranium."
	done


GruntM2SeenText:
	text "L'oxyde"
	line "d'uranium peut"

	para "étre rouge foncé,"
	line "vert, jaune ou"
	cont "incolore."
	done

GruntM2BeatenText:
	text "Dans l'ouraline,"
	line "il est vert… fluo!"
	done

GruntM2AfterBattleText:
	text "Quand on éclaire"
	line "du verre d'uranium"

	para "sous UV, on voit"
	line "que c'est fluo!"

	para "Mais ce n'est pas"
	line "la radiactivité!"

	para "bien qu'il soit"
	line "un peu radioactif…"
	done

SlowpokeWellB1FSlowpokeWithMailText:
	text "Un ourson…"
	line "On dirait qu'il"

	para "veut manger votre"
	line "encat!"

	para "Lui donner?"
	done

SlowpokeWellB1FSlowpokeMailText:
	text "<PLAYER> donne"
	line "son sandwich."

	para "L'ourson l'a"
	line "engouti!"
	done

SlowpokeWellB1FTaillessSlowpokeText:
	text "Un ourson…"
	line "Veut votre"
	cont "sandwich."
	done

GruntM1SeenText:
	text "Raffiné, on en"
	line "fait un Yellowcake"
	cont "tout jaune!"
	done

GruntM1BeatenText:
	text "Ce qu'on fait du"
	line "yellowcake…"
	done

TrainerGruntM1WhenTalkText:
	text "L'enrichissement"
	line "et tout le reste,"
	cont "c'est pas nous."

	para "La visite est"
	line "terminée!"
	done

KurtLeaveSlowpokeWellText:
	text "La visite vous"
	line "a plu, <PLAYER>?"

	para "Rentrons."
	done

SlowpokeWellB1F_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event 17, 15, AZALEA_TOWN, 6
	warp_event  7, 11, SLOWPOKE_WELL_B2F, 1

	db 0 ; coord events

	db 0 ; bg events

	db 9 ; object events
	object_event 15,  7, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 3, TrainerGruntM29, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  5,  2, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 1, TrainerGruntM1, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  5,  6, SPRITE_ROCKET, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_TRAINER, 2, TrainerGruntM2, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event 10,  4, SPRITE_ROCKET_GIRL, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_TRAINER, 4, TrainerGruntF1, EVENT_SLOWPOKE_WELL_ROCKETS
	object_event  7,  4, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FSlowpokeWithMailScript, EVENT_SLOWPOKE_WELL_SLOWPOKES
	object_event  6,  2, SPRITE_SLOWPOKE, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FTaillessSlowpokeScript, EVENT_SLOWPOKE_WELL_SLOWPOKES
	object_event 16, 14, SPRITE_KURT, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FKurtScript, EVENT_SLOWPOKE_WELL_KURT
	object_event  3,  2, SPRITE_BOULDER, SPRITEMOVEDATA_STRENGTH_BOULDER, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, SlowpokeWellB1FBoulder, -1
	object_event 10,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SlowpokeWellB1FSuperPotion, EVENT_SLOWPOKE_WELL_B1F_SUPER_POTION
