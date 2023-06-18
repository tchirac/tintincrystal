	object_const_def ; object_event constants
	const VIOLETGYM_FALKNER
	const VIOLETGYM_YOUNGSTER1
	const VIOLETGYM_YOUNGSTER2
	const VIOLETGYM_GYM_GUY

VioletGym_MapScripts:
	db 0 ; scene scripts

	db 0 ; callbacks

VioletGymFalknerScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .FightDone
	writetext FalknerIntroText
	waitbutton
	closetext
	winlosstext FalknerWinLossText, 0
	loadtrainer FALKNER, FALKNER1
	startbattle
	reloadmapafterbattle
	setevent EVENT_BEAT_FALKNER
	opentext
	writetext ReceivedZephyrBadgeText
	playsound SFX_GET_BADGE
	waitsfx
	setflag ENGINE_ZEPHYRBADGE
	readvar VAR_BADGES
	scall VioletGymActivateRockets
.FightDone:
	checkevent EVENT_GOT_TM31_MUD_SLAP
	iftrue .SpeechAfterTM
	setevent EVENT_BEAT_BIRD_KEEPER_ROD
	setevent EVENT_BEAT_BIRD_KEEPER_ABE
	setmapscene ELMS_LAB, SCENE_ELMSLAB_NOTHING
	specialphonecall SPECIALCALL_ASSISTANT
	writetext FalknerZephyrBadgeText
	promptbutton
	verbosegiveitem TM_MUD_SLAP
	iffalse .NoRoomForMudSlap
	setevent EVENT_GOT_TM31_MUD_SLAP
	writetext FalknerTMMudSlapText
	waitbutton
	closetext
	end

.SpeechAfterTM:
	writetext FalknerFightDoneText
	waitbutton
.NoRoomForMudSlap:
	closetext
	end

VioletGymActivateRockets:
	ifequal 7, .RadioTowerRockets
	ifequal 6, .GoldenrodRockets
	end

.GoldenrodRockets:
	jumpstd goldenrodrockets

.RadioTowerRockets:
	jumpstd radiotowerrockets

TrainerBirdKeeperRod:
	trainer BIRD_KEEPER, ROD, EVENT_BEAT_BIRD_KEEPER_ROD, BirdKeeperRodSeenText, BirdKeeperRodBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperRodAfterBattleText
	waitbutton
	closetext
	end

TrainerBirdKeeperAbe:
	trainer BIRD_KEEPER, ABE, EVENT_BEAT_BIRD_KEEPER_ABE, BirdKeeperAbeSeenText, BirdKeeperAbeBeatenText, 0, .Script

.Script:
	endifjustbattled
	opentext
	writetext BirdKeeperAbeAfterBattleText
	waitbutton
	closetext
	end

VioletGymGuyScript:
	faceplayer
	opentext
	checkevent EVENT_BEAT_FALKNER
	iftrue .VioletGymGuyWinScript
	writetext VioletGymGuyText
	waitbutton
	closetext
	end

.VioletGymGuyWinScript:
	writetext VioletGymGuyWinText
	waitbutton
	closetext
	end

VioletGymStatue:
	checkflag ENGINE_ZEPHYRBADGE
	iftrue .Beaten
	jumpstd gymstatue1
.Beaten:
	gettrainername STRING_BUFFER_4, FALKNER, FALKNER1
	jumpstd gymstatue2

FalknerIntroText:
	text "Je suis FALKNER,"
	line "le rédac chef"

	para "de la revue de"
	line "quartier."

	para "On dit que vous"
	line "étes journaliste."

	para "J'aimerais bien"
	line "voir ca!"
	cont "Montrer-moi"

	para "de quoi vous"
	line "étes capables"
	cont "avec vos #S!"

	para "La route vers"
	line "la publication"
	cont "est longue!"
	done

FalknerWinLossText:
	text "…Enfer! Mes"
	line "plus beaux"
	cont "articles…"

	para "Ok."
	line "Prends ca."

	para "C'est le pin's"
	line "officiel qui"
	cont "reconnait ton"

	para "talent: le"
	line "pin's zéphyr."
	done

ReceivedZephyrBadgeText:
	text "<PLAYER> recoit"
	line "Pin's zéphyr."
	done

FalknerZephyrBadgeText:
	text "Ce pin's rend"
	line "vos punchlines"
	cont "plus agressives."

	para "il permet aussi"
	line "d'utiliser FLASH"

	para "dans les grottes."
	done

FalknerTMMudSlapText:
	text "Prenez aussi cette"
	line "TM. C'est un sujet"
	cont "que vous pouvez"

	para "choisir de traiter"
	line "dans l'un de vos"

	para "articles."
	line "Choisissez-bien,"
	cont "car ce n'est"

	para "utilisable que"
	line "sur une seule"
	cont "#."
	done

FalknerFightDoneText:
	text "Il y a d'autres"
	line "sites de rédaction"
	cont "ailleurs."

	para "Vous devriez voir"
	line "lä bas si j'y suis"

	para "ou pour voir ce"
	line "que les vrais"
	cont "pros en pensent,"

	para "de vos torchons."
	done

BirdKeeperRodSeenText:
	text "Tes articles"
	line "doivent avoir"
	cont "du chien!"

	para "Du chien écrasé,"
	line "c'est encore"
	cont "mieux!"

	done

BirdKeeperRodBeatenText:
	text "Aaah!"
	done

BirdKeeperRodAfterBattleText:
	text "FALKNER sait de"
	line "quoi il parle!"

	para "J.P Pernaud, c'est"
	line "du pipi de chat"
	cont "pour lui!"
	done

BirdKeeperAbeSeenText:
	text "Voyons ce dont tu"
	line "es capable!"
	done

BirdKeeperAbeBeatenText:
	text "Impossible!"
	done

BirdKeeperAbeAfterBattleText:
	text "C'est si nul,"
	line "mais je suis bien"
	cont "pire…"
	done

VioletGymGuyText:
	text "Eh! Je suis juste"
	line "le gars de"
	cont "l'accueil!"

	para "Vous voulez"
	line "évaluez vos "

	para "arguments face"
	line "aux oiseaux?"

	para "Ne parlez pas"
	line "de plante."

	para "Vous vous ridi-"
	line "culiseriez!"
	done

VioletGymGuyWinText:
	text "Belle perf!"
	line "Vous avez été"

	para "convaincant!"
	line "Continuez!"
	done

VioletGym_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 15, VIOLET_CITY, 2
	warp_event  5, 15, VIOLET_CITY, 2

	db 0 ; coord events

	db 2 ; bg events
	bg_event  3, 13, BGEVENT_READ, VioletGymStatue
	bg_event  6, 13, BGEVENT_READ, VioletGymStatue

	db 4 ; object events
	object_event  5,  1, SPRITE_FALKNER, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, VioletGymFalknerScript, -1
	object_event  7,  6, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_LEFT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperRod, -1
	object_event  2, 10, SPRITE_YOUNGSTER, SPRITEMOVEDATA_STANDING_RIGHT, 2, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_TRAINER, 3, TrainerBirdKeeperAbe, -1
	object_event  7, 13, SPRITE_GYM_GUY, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, VioletGymGuyScript, -1
