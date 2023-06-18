	object_const_def ; object_event constants
	const SPROUTTOWER3F_SAGE1
	const SPROUTTOWER3F_SAGE2
	const SPROUTTOWER3F_SAGE3
	const SPROUTTOWER3F_SAGE4
	const SPROUTTOWER3F_POKE_BALL1
	const SPROUTTOWER3F_POKE_BALL2
	const SPROUTTOWER3F_SILVER

SproutTower3F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

SproutTower3FRivalScene:
	turnobject PLAYER, UP
	showemote EMOTE_SHOCK, PLAYER, 15
	special FadeOutMusic
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	pause 15
	playsound SFX_TACKLE
	playsound SFX_ELEVATOR
	earthquake 79
	applymovement PLAYER, MovementData_0x184a1d
	applymovement SPROUTTOWER3F_SILVER, MovementData_0x184a22
	opentext
	writetext SproutTowerElderLecturesRivalText
	waitbutton
	closetext
	showemote EMOTE_SHOCK, SPROUTTOWER3F_SILVER, 15
	turnobject SPROUTTOWER3F_SILVER, DOWN
	pause 15
	applymovement SPROUTTOWER3F_SILVER, MovementData_0x184a24
	playmusic MUSIC_RIVAL_ENCOUNTER
	opentext
	writetext SproutTowerRivalOnlyCareAboutStrongText
	waitbutton
	closetext
	turnobject SPROUTTOWER3F_SILVER, UP
	opentext
	writetext SproutTowerRivalUsedEscapeRopeText
	pause 15
	closetext
	playsound SFX_WARP_TO
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	disappear SPROUTTOWER3F_SILVER
	waitsfx
	special FadeInQuickly
	setscene SCENE_FINISHED
	special RestartMapMusic
	end

SageLiScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_HM05_FLASH
	iftrue .GotFlash
	writetext SageLiSeenText
	waitbutton
	closetext
	winlosstext SageLiBeatenText, 0
	loadtrainer SAGE, LI
	startbattle
	reloadmapafterbattle
	opentext
	writetext SageLiTakeThisFlashText
	promptbutton
	verbosegiveitem HM_FLASH
	setevent EVENT_GOT_HM05_FLASH
	setevent EVENT_BEAT_SAGE_LI
	writetext SageLiFlashExplanationText
	waitbutton
	closetext
	end

.GotFlash:
	writetext SageLiAfterBattleText
	waitbutton
	closetext
	end

TrainerSageJin:
	trainer SAGE, JIN, EVENT_BEAT_SAGE_JIN, SageJinSeenText, SageJinBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageJinAfterBattleText
	waitbutton
	closetext
	end

TrainerSageTroy:
	trainer SAGE, TROY, EVENT_BEAT_SAGE_TROY, SageTroySeenText, SageTroyBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageTroyAfterBattleText
	waitbutton
	closetext
	end

TrainerSageNeal:
	trainer SAGE, NEAL, EVENT_BEAT_SAGE_NEAL, SageNealSeenText, SageNealBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext SageNealAfterBattleText
	waitbutton
	closetext
	end

SproutTower3FPainting:
	jumptext SproutTower3FPaintingText

SproutTower3FStatue:
	jumptext SproutTower3FStatueText

SproutTower3FPotion:
	itemball POTION

SproutTower3FEscapeRope:
	itemball ESCAPE_ROPE

MovementData_0x184a1d:
	step UP
	step UP
	step UP
	step UP
	step_end

MovementData_0x184a22:
	step UP
	step_end

MovementData_0x184a24:
	step RIGHT
	step DOWN
	step_end

SproutTowerElderLecturesRivalText:
	text "Pr TOURNESOL: "
	line "…-emple, avec sa"
	cont "signature,"

	para "tout le monde "
	line "croira au suicide."

	para "…"
	line "!!!"
	done

SproutTowerRivalOnlyCareAboutStrongText:
	text "…"
	line "…Humph!"

	para "Belle journée,"
	line "n'est-ce pas?"
	done

SproutTowerRivalUsedEscapeRopeText:
	text "Ca par"
	line "EXEMPLE!"
	done

SageLiSeenText:
	text "Alors, voila"
	line "ce qu'il a fait!"
	cont "le ZOUAVE!!"
	done

SageLiBeatenText:
	text "Ah, excellent!"
	done

SageLiTakeThisFlashText:
	text "Tenez, vous"
	line "feriez bien de "

	para "prendre ces"
	line "petites lampes pour"
	cont "élairer vos notes."
	done

SageLiFlashExplanationText:
	text "FLASH illumines"
	line "les caves."

	para "Mais il vous"
	line "faut l'appro-"
	cont "-bation de la"

	para "GYM de VIOLET."
	done

SageLiAfterBattleText:
	text "Sur la lune !"
	line "Hihihi!"
	done

SageJinSeenText:
	text "Je travaille sur"
	line "l'éclairage de"
	cont "la fusée!"
	done

SageJinBeatenText:
	text "J'ai encore du"
	line "boulot…"
	done

SageJinAfterBattleText:
	text "Quand les LEDS"
	line "seront inventées,"

	para "j'en mettrai"
	line "partout !"
	done

SageTroySeenText:
	text "Reporter ?"
	line "Voulez-vous un…"
	cont "REPORTAGE! ?"
	done

SageTroyBeatenText:
	text "Bon… REPORTAGE"
	line "!!"
	done

SageTroyAfterBattleText:
	text "Le prof. n'est"
	line "pas loin."
	done

SageNealSeenText:
	text "Ce prof. T."
	line "…"
	cont "Quel zouave…"
	done

SageNealBeatenText:
	text "Et vous pensez"
	line "aller loin avec"
	cont "ca ?"
	done

SageNealAfterBattleText:
	text "Bon courage avec"
	line "votre merdier."
	done

SproutTower3FPaintingText:
	text "C'est une belle"
	line "peinture de"
	cont "Tournesol."
	done

SproutTower3FStatueText:
	text "Encore une statue…"
	line "Quel melon !"
	done

SproutTower3F_MapEvents:
	db 0, 0 ; filler

	db 1 ; warp events
	warp_event 10, 14, SPROUT_TOWER_2F, 4

	db 1 ; coord events
	coord_event 11,  9, SCENE_DEFAULT, SproutTower3FRivalScene

	db 6 ; bg events
	bg_event  8,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event 11,  1, BGEVENT_READ, SproutTower3FStatue
	bg_event  9,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event 10,  0, BGEVENT_READ, SproutTower3FPainting
	bg_event  5, 15, BGEVENT_READ, SproutTower3FStatue
	bg_event 14, 15, BGEVENT_READ, SproutTower3FStatue

	db 7 ; object events
	object_event  8, 13, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageJin, -1
	object_event  8,  8, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 2, TrainerSageTroy, -1
	object_event 10,  2, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, SageLiScript, -1
	object_event 11, 11, SPRITE_SAGE, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerSageNeal, -1
	object_event  6, 14, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FPotion, EVENT_SPROUT_TOWER_3F_POTION
	object_event 14,  1, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_ITEMBALL, 0, SproutTower3FEscapeRope, EVENT_SPROUT_TOWER_3F_ESCAPE_ROPE
	object_event 10,  4, SPRITE_SILVER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_RIVAL_SPROUT_TOWER
