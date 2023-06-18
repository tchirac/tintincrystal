	object_const_def ; object_event constants
	const PLAYERSHOUSE1F_MOM1
	const PLAYERSHOUSE1F_MOM2
	const PLAYERSHOUSE1F_MOM3
	const PLAYERSHOUSE1F_MOM4
	const PLAYERSHOUSE1F_POKEFAN_F

PlayersHouse1F_MapScripts:
	db 2 ; scene scripts
	scene_script .DummyScene0 ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_FINISHED

	db 0 ; callbacks

.DummyScene0:
	end

.DummyScene1:
	end

MeetMomLeftScript:
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1

MeetMomRightScript:
	playmusic MUSIC_MOM
	showemote EMOTE_SHOCK, PLAYERSHOUSE1F_MOM1, 15
	turnobject PLAYER, LEFT
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iffalse .OnRight
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsTowardPlayerMovement
	sjump MeetMomScript

.OnRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksToPlayerMovement
MeetMomScript:
	opentext
	writetext ElmsLookingForYouText
	promptbutton
	getstring STRING_BUFFER_4, PokegearName
	scall PlayersHouse1FReceiveItemStd
	setflag ENGINE_POKEGEAR
	setflag ENGINE_PHONE_CARD
	addcellnum PHONE_MOM
	setscene SCENE_FINISHED
	setevent EVENT_PLAYERS_HOUSE_MOM_1
	clearevent EVENT_PLAYERS_HOUSE_MOM_2
	writetext MomGivesPokegearText
	promptbutton
	special SetDayOfWeek
.SetDayOfWeek:
	writetext IsItDSTText
	yesorno
	iffalse .WrongDay
	special InitialSetDSTFlag
	yesorno
	iffalse .SetDayOfWeek
	sjump .DayOfWeekDone

.WrongDay:
	special InitialClearDSTFlag
	yesorno
	iffalse .SetDayOfWeek
.DayOfWeekDone:
	writetext ComeHomeForDSTText
	yesorno
	iffalse .ExplainPhone
	sjump .KnowPhone

.KnowPhone:
	writetext KnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.ExplainPhone:
	writetext DontKnowTheInstructionsText
	promptbutton
	sjump .FinishPhone

.FinishPhone:
	writetext InstructionsNextText
	waitbutton
	closetext
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_1
	iftrue .FromRight
	checkevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	iffalse .FromLeft
	sjump .Finish

.FromRight:
	applymovement PLAYERSHOUSE1F_MOM1, MomTurnsBackMovement
	sjump .Finish

.FromLeft:
	applymovement PLAYERSHOUSE1F_MOM1, MomWalksBackMovement
	sjump .Finish

.Finish:
	special RestartMapMusic
	turnobject PLAYERSHOUSE1F_MOM1, LEFT
	end

MeetMomTalkedScript:
	playmusic MUSIC_MOM
	sjump MeetMomScript

PokegearName:
	db "#TRUC@"

PlayersHouse1FReceiveItemStd:
	jumpstd receiveitem
	end

MomScript:
	faceplayer
	setevent EVENT_TEMPORARY_UNTIL_MAP_RELOAD_2
	checkscene
	iffalse MeetMomTalkedScript ; SCENE_DEFAULT
	opentext
	checkevent EVENT_FIRST_TIME_BANKING_WITH_MOM
	iftrue .FirstTimeBanking
	checkevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	iftrue .BankOfMom
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .GaveMysteryEgg
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .GotAPokemon
	writetext HurryUpElmIsWaitingText
	waitbutton
	closetext
	end

.GotAPokemon:
	writetext SoWhatWasProfElmsErrandText
	waitbutton
	closetext
	end

.FirstTimeBanking:
	writetext ImBehindYouText
	waitbutton
	closetext
	end

.GaveMysteryEgg:
	setevent EVENT_FIRST_TIME_BANKING_WITH_MOM
.BankOfMom:
	setevent EVENT_TALKED_TO_MOM_AFTER_MYSTERY_EGG_QUEST
	special BankOfMom
	waitbutton
	closetext
	end

NeighborScript:
	faceplayer
	opentext
	checktime MORN
	iftrue .MornScript
	checktime DAY
	iftrue .DayScript
	checktime NITE
	iftrue .NiteScript

.MornScript:
	writetext NeighborMornIntroText
	promptbutton
	sjump .Main

.DayScript:
	writetext NeighborDayIntroText
	promptbutton
	sjump .Main

.NiteScript:
	writetext NeighborNiteIntroText
	promptbutton
	sjump .Main

.Main:
	writetext NeighborText
	waitbutton
	closetext
	turnobject PLAYERSHOUSE1F_POKEFAN_F, RIGHT
	end

TVScript:
	jumptext TVText

StoveScript:
	jumptext StoveText

SinkScript:
	jumptext SinkText

FridgeScript:
	jumptext FridgeText

MomTurnsTowardPlayerMovement:
	turn_head RIGHT
	step_end

MomWalksToPlayerMovement:
	slow_step RIGHT
	step_end

MomTurnsBackMovement:
	turn_head LEFT
	step_end

MomWalksBackMovement:
	slow_step LEFT
	step_end

ElmsLookingForYouText:
	text "Oh, M.<PLAYER>…! "
	line "Le professeur"
	
	para "Hippolyte"
	line "Bergamotte"
	cont "vous cherche."

	para "Il voudrait "
	line "vous montrer sa"
	cont "…collection."

	para "Oh! Aussi, le"
	line "professeur"
	cont "Tryphon"

	para "Tournessol"
	line "voudrait"

	para "vous confier "
	line "ce combiné."

	para "portatif!"
	done

MomGivesPokegearText:
	text "Cellulaire GSM, ou"
	line "juste #TRUC."

	para "Cela peut vous"
	line "étre utile pour"
	cont "vos… reportages."

	para "Oh, le jour de"
	line "la semaine n'est"
	cont "pas renseigné!"

	para "Il faut au moins"
	line "faire cela!"
	done

IsItDSTText:
	text "Est-ce l'heure"
	line "d'été?"
	done

ComeHomeForDSTText:
	text "Revenez ajuster"
	line "l'horloge"

	para "lors du passage a"
	line "l'heure d'été."

	para "Au fait,savez-vous"
	line "utiliser le phone"
	cont "mobile cellulaire?"
	done

KnowTheInstructionsText:
	text "Allumez simplement"
	line "le #TRUC"

	para "et sélectionnez "
	line "l'icone combiné."
	done

DontKnowTheInstructionsText:
	text "Triphon dit qu'il"
	line "suffit d'allumer"

	para "le #TRUC et de "
	line "sélectionner"

	para "l'icone combiné"
	line "téléphonique."
	done

InstructionsNextText:
	text "Les numéros de"
	line "téléphone sont"
	cont "dans le calpin."

	para "Pratique, n'est ce"
	line "pas?"

	para "Cependant! Surtout"
	line "ne prenez pas le"
	cont "numéro d'inconnus!"

	para "Ca fait crasher"
	line "le jeu !"

	para "Je vous aurais"
	line "prévenu!"

	done

HurryUpElmIsWaitingText:
	text "Prof.Bergamotte"
	line "vous attend."

	para "En avant!"
	done

SoWhatWasProfElmsErrandText:
	text "Que voulait le"
	line "prof Bergamotte?"

	para "…"

	para "Dois-je donc"
	line "préparer vos"
	cont "valises?"

	para "Entendu."
	line "Voici."
	cont "Bon vent."
	done

ImBehindYouText:
	text "<PLAYER>, faites-le!"

	para "Je suis derriére"
	line "vous, tout du"
	cont "long!"
	done

NeighborMornIntroText:
	text "Bon matin,"
	line "<PLAY_G>!"
	done

NeighborDayIntroText:
	text "Bonjour <PLAY_G>!"
	done

NeighborNiteIntroText:
	text "Bonsoir <PLAY_G>!"
	done

NeighborText:
	text "Est-ce"
	line "que l'appareil"
	cont "du professeur"

	para "Tournessol vous"
	line "intéresse?"
	done

StoveText:
	text "Spécialté de" 
	line "Nestor:"

	para "La mousse au"
	line "chocolat"
	cont "du patron !"
	done

SinkText:
	text "Il est beau,"
	line "Il est beau,"
	cont "le lavabo."
	
	para "Il est laid"
	line "Il est laid"
	cont "le bidet."
	done

FridgeText:
	text "Que contient le"
	line "réfrigidairateur…"

	para "Loch Lomond et"
	line "boites de crabe!"
	done

TVText:
	text "C'est un téléfilm:"
	line "Les meilleures"

	para "performances du"
	line "rossignol milanais"
	cont "… Au secours!"
	done

PlayersHouse1F_MapEvents:
	db 0, 0 ; filler

	db 3 ; warp events
	warp_event  6,  7, NEW_BARK_TOWN, 2
	warp_event  7,  7, NEW_BARK_TOWN, 2
	warp_event  9,  0, PLAYERS_HOUSE_2F, 1

	db 2 ; coord events
	coord_event  8,  4, SCENE_DEFAULT, MeetMomLeftScript
	coord_event  9,  4, SCENE_DEFAULT, MeetMomRightScript

	db 4 ; bg events
	bg_event  0,  1, BGEVENT_READ, StoveScript
	bg_event  1,  1, BGEVENT_READ, SinkScript
	bg_event  2,  1, BGEVENT_READ, FridgeScript
	bg_event  4,  1, BGEVENT_READ, TVScript

	db 5 ; object events
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_1
	object_event  2,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, MORN, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  7,  4, SPRITE_MOM, SPRITEMOVEDATA_STANDING_LEFT, 0, 0, -1, DAY, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  0,  2, SPRITE_MOM, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, NITE, 0, OBJECTTYPE_SCRIPT, 0, MomScript, EVENT_PLAYERS_HOUSE_MOM_2
	object_event  4,  4, SPRITE_POKEFAN_F, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, PAL_NPC_RED, OBJECTTYPE_SCRIPT, 0, NeighborScript, EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
