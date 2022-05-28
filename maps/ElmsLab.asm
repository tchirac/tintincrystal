	object_const_def ; object_event constants
	const ELMSLAB_ELM
	const ELMSLAB_ELMS_AIDE
	const ELMSLAB_POKE_BALL1
	const ELMSLAB_POKE_BALL2
	const ELMSLAB_POKE_BALL3
	const ELMSLAB_OFFICER

ElmsLab_MapScripts:
	db 6 ; scene scripts
	scene_script .MeetElm ; SCENE_DEFAULT
	scene_script .DummyScene1 ; SCENE_ELMSLAB_CANT_LEAVE
	scene_script .DummyScene2 ; SCENE_ELMSLAB_NOTHING
	scene_script .DummyScene3 ; SCENE_ELMSLAB_MEET_OFFICER
	scene_script .DummyScene4 ; SCENE_ELMSLAB_UNUSED
	scene_script .DummyScene5 ; SCENE_ELMSLAB_AIDE_GIVES_POTION

	db 1 ; callbacks
	callback MAPCALLBACK_OBJECTS, .MoveElmCallback

.MeetElm:
	prioritysjump .WalkUpToElm
	end

.DummyScene1:
	end

.DummyScene2:
	end

.DummyScene3:
	end

.DummyScene4:
	end

.DummyScene5:
	end

.MoveElmCallback:
	checkscene
	iftrue .Skip ; not SCENE_DEFAULT
	moveobject ELMSLAB_ELM, 3, 4
.Skip:
	return

.WalkUpToElm:
	applymovement PLAYER, ElmsLab_WalkUpToElmMovement
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	turnobject ELMSLAB_ELM, RIGHT
	opentext
	writetext ElmText_Intro
.MustSayYes:
	yesorno
	iftrue .ElmGetsEmail
	writetext ElmText_Refused
	sjump .MustSayYes

.ElmGetsEmail:
	writetext ElmText_Accepted
	promptbutton
	writetext ElmText_ResearchAmbitions
	waitbutton
	closetext
	playsound SFX_GLASS_TING
	pause 30
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 10
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmText_GotAnEmail
	waitbutton
	closetext
	opentext
	turnobject ELMSLAB_ELM, RIGHT
	writetext ElmText_MissionFromMrPokemon
	waitbutton
	closetext
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement1
	turnobject PLAYER, UP
	applymovement ELMSLAB_ELM, ElmsLab_ElmToDefaultPositionMovement2
	turnobject PLAYER, RIGHT
	opentext
	writetext ElmText_ChooseAPokemon
	waitbutton
	setscene SCENE_ELMSLAB_CANT_LEAVE
	closetext
	end

ProfElmScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_SS_TICKET_FROM_ELM
	iftrue ElmCheckMasterBall
	checkevent EVENT_BEAT_ELITE_FOUR
	iftrue ElmGiveTicketScript
ElmCheckMasterBall:
	checkevent EVENT_GOT_MASTER_BALL_FROM_ELM
	iftrue ElmCheckEverstone
	checkflag ENGINE_RISINGBADGE
	iftrue ElmGiveMasterBallScript
ElmCheckEverstone:
	checkevent EVENT_GOT_EVERSTONE_FROM_ELM
	iftrue ElmScript_CallYou
	checkevent EVENT_SHOWED_TOGEPI_TO_ELM
	iftrue ElmGiveEverstoneScript
	checkevent EVENT_TOLD_ELM_ABOUT_TOGEPI_OVER_THE_PHONE
	iffalse ElmCheckTogepiEgg
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	writetext ElmThoughtEggHatchedText
	waitbutton
	closetext
	end

ElmEggHatchedScript:
	setval TOGEPI
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	setval TOGETIC
	special FindPartyMonThatSpeciesYourTrainerID
	iftrue ShowElmTogepiScript
	sjump ElmCheckGotEggAgain

ElmCheckTogepiEgg:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iffalse ElmCheckGotEggAgain
	checkevent EVENT_TOGEPI_HATCHED
	iftrue ElmEggHatchedScript
ElmCheckGotEggAgain:
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE ; why are we checking it again?
	iftrue ElmWaitingEggHatchScript
	checkflag ENGINE_ZEPHYRBADGE
	iftrue ElmAideHasEggScript
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue ElmStudyingEggScript
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue ElmAfterTheftScript
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue ElmDescribesMrPokemonScript
	writetext ElmText_LetYourMonBattleIt
	waitbutton
	closetext
	end

LabTryToLeaveScript:
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext LabWhereGoingText
	waitbutton
	closetext
	applymovement PLAYER, ElmsLab_CantLeaveMovement
	end

CyndaquilPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic MR__MIME
	cry MR__MIME
	waitbutton
	closepokepic
	opentext
	writetext TakeCyndaquilText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL1
	setevent EVENT_GOT_CYNDAQUIL_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, MR__MIME
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke MR__MIME, 5, BERRY
	closetext
	readvar VAR_FACING
	ifequal RIGHT, ElmDirectionsScript
	applymovement PLAYER, AfterCyndaquilMovement
	sjump ElmDirectionsScript

TotodilePokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic SQUIRTLE
	cry SQUIRTLE
	waitbutton
	closepokepic
	opentext
	writetext TakeTotodileText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL2
	setevent EVENT_GOT_TOTODILE_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, SQUIRTLE
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke SQUIRTLE, 5, BERRY
	closetext
	applymovement PLAYER, AfterTotodileMovement
	sjump ElmDirectionsScript

ChikoritaPokeBallScript:
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue LookAtElmPokeBallScript
	turnobject ELMSLAB_ELM, DOWN
	refreshscreen
	pokepic BULBASAUR
	cry BULBASAUR
	waitbutton
	closepokepic
	opentext
	writetext TakeChikoritaText
	yesorno
	iffalse DidntChooseStarterScript
	disappear ELMSLAB_POKE_BALL3
	setevent EVENT_GOT_CHIKORITA_FROM_ELM
	writetext ChoseStarterText
	promptbutton
	waitsfx
	getmonname STRING_BUFFER_3, BULBASAUR
	writetext ReceivedStarterText
	playsound SFX_CAUGHT_MON
	waitsfx
	promptbutton
	givepoke BULBASAUR, 5, BERRY
	closetext
	applymovement PLAYER, AfterChikoritaMovement
	sjump ElmDirectionsScript

DidntChooseStarterScript:
	writetext DidntChooseStarterText
	waitbutton
	closetext
	end

ElmDirectionsScript:
	turnobject PLAYER, UP
	opentext
	writetext ElmDirectionsText1
	waitbutton
	closetext
	addcellnum PHONE_ELM
	opentext
	writetext GotElmsNumberText
	playsound SFX_REGISTER_PHONE_NUMBER
	waitsfx
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, LEFT
	opentext
	writetext ElmDirectionsText2
	waitbutton
	closetext
	turnobject ELMSLAB_ELM, DOWN
	opentext
	writetext ElmDirectionsText3
	waitbutton
	closetext
	setevent EVENT_GOT_A_POKEMON_FROM_ELM
	setevent EVENT_RIVAL_CHERRYGROVE_CITY
	setscene SCENE_ELMSLAB_AIDE_GIVES_POTION
	setmapscene NEW_BARK_TOWN, SCENE_FINISHED
	end

ElmDescribesMrPokemonScript:
	writetext ElmDescribesMrPokemonText
	waitbutton
	closetext
	end

LookAtElmPokeBallScript:
	opentext
	writetext ElmPokeBallText
	waitbutton
	closetext
	end

ElmsLabHealingMachine:
	opentext
	checkevent EVENT_GOT_A_POKEMON_FROM_ELM
	iftrue .CanHeal
	writetext ElmsLabHealingMachineText1
	waitbutton
	closetext
	end

.CanHeal:
	writetext ElmsLabHealingMachineText2
	yesorno
	iftrue ElmsLabHealingMachine_HealParty
	closetext
	end

ElmsLabHealingMachine_HealParty:
	special StubbedTrainerRankings_Healings
	special HealParty
	playmusic MUSIC_NONE
	setval HEALMACHINE_ELMS_LAB
	special HealMachineAnim
	pause 30
	special RestartMapMusic
	closetext
	end

ElmAfterTheftDoneScript:
	waitbutton
	closetext
	end

ElmAfterTheftScript:
	writetext ElmAfterTheftText1
	checkitem MYSTERY_EGG
	iffalse ElmAfterTheftDoneScript
	promptbutton
	writetext ElmAfterTheftText2
	waitbutton
	takeitem MYSTERY_EGG
	scall ElmJumpBackScript1
	writetext ElmAfterTheftText3
	waitbutton
	scall ElmJumpBackScript2
	writetext ElmAfterTheftText4
	promptbutton
	writetext ElmAfterTheftText5
	promptbutton
	setevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	setflag ENGINE_MAIN_MENU_MOBILE_CHOICES
	setmapscene ROUTE_29, SCENE_ROUTE29_CATCH_TUTORIAL
	clearevent EVENT_ROUTE_30_YOUNGSTER_JOEY
	setevent EVENT_ROUTE_30_BATTLE
	writetext ElmAfterTheftText6
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS
	end

ElmStudyingEggScript:
	writetext ElmStudyingEggText
	waitbutton
	closetext
	end

ElmAideHasEggScript:
	writetext ElmAideHasEggText
	waitbutton
	closetext
	end

ElmWaitingEggHatchScript:
	writetext ElmWaitingEggHatchText
	waitbutton
	closetext
	end

ShowElmTogepiScript:
	writetext ShowElmTogepiText1
	waitbutton
	closetext
	showemote EMOTE_SHOCK, ELMSLAB_ELM, 15
	setevent EVENT_SHOWED_TOGEPI_TO_ELM
	opentext
	writetext ShowElmTogepiText2
	promptbutton
	writetext ShowElmTogepiText3
	promptbutton
ElmGiveEverstoneScript:
	writetext ElmGiveEverstoneText1
	promptbutton
	verbosegiveitem EVERSTONE
	iffalse ElmScript_NoRoomForEverstone
	writetext ElmGiveEverstoneText2
	waitbutton
	closetext
	setevent EVENT_GOT_EVERSTONE_FROM_ELM
	end

ElmScript_CallYou:
	writetext ElmText_CallYou
	waitbutton
ElmScript_NoRoomForEverstone:
	closetext
	end

ElmGiveMasterBallScript:
	writetext ElmGiveMasterBallText1
	promptbutton
	verbosegiveitem MASTER_BALL
	iffalse .notdone
	setevent EVENT_GOT_MASTER_BALL_FROM_ELM
	writetext ElmGiveMasterBallText2
	waitbutton
.notdone
	closetext
	end

ElmGiveTicketScript:
	writetext ElmGiveTicketText1
	promptbutton
	verbosegiveitem S_S_TICKET
	setevent EVENT_GOT_SS_TICKET_FROM_ELM
	writetext ElmGiveTicketText2
	waitbutton
	closetext
	end

ElmJumpBackScript1:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpDownScript
	ifequal UP, ElmJumpUpScript
	ifequal LEFT, ElmJumpLeftScript
	ifequal RIGHT, ElmJumpRightScript
	end

ElmJumpBackScript2:
	closetext
	readvar VAR_FACING
	ifequal DOWN, ElmJumpUpScript
	ifequal UP, ElmJumpDownScript
	ifequal LEFT, ElmJumpRightScript
	ifequal RIGHT, ElmJumpLeftScript
	end

ElmJumpUpScript:
	applymovement ELMSLAB_ELM, ElmJumpUpMovement
	opentext
	end

ElmJumpDownScript:
	applymovement ELMSLAB_ELM, ElmJumpDownMovement
	opentext
	end

ElmJumpLeftScript:
	applymovement ELMSLAB_ELM, ElmJumpLeftMovement
	opentext
	end

ElmJumpRightScript:
	applymovement ELMSLAB_ELM, ElmJumpRightMovement
	opentext
	end

AideScript_WalkPotion1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkPotion2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GivePotion
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GivePotion:
	opentext
	writetext AideText_GiveYouPotion
	promptbutton
	verbosegiveitem POTION
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_WalkBalls1:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight1
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft1
	end

AideScript_WalkBalls2:
	applymovement ELMSLAB_ELMS_AIDE, AideWalksRight2
	turnobject PLAYER, DOWN
	scall AideScript_GiveYouBalls
	applymovement ELMSLAB_ELMS_AIDE, AideWalksLeft2
	end

AideScript_GiveYouBalls:
	opentext
	writetext AideText_GiveYouBalls
	promptbutton
	getitemname STRING_BUFFER_4, POKE_BALL
	scall AideScript_ReceiveTheBalls
	giveitem POKE_BALL, 5
	writetext AideText_ExplainBalls
	promptbutton
	itemnotify
	closetext
	setscene SCENE_ELMSLAB_NOTHING
	end

AideScript_ReceiveTheBalls:
	jumpstd receiveitem
	end

ElmsAideScript:
	faceplayer
	opentext
	checkevent EVENT_GOT_TOGEPI_EGG_FROM_ELMS_AIDE
	iftrue AideScript_AfterTheft
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue AideScript_ExplainBalls
	checkevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	iftrue AideScript_TheftTestimony
	writetext AideText_AlwaysBusy
	waitbutton
	closetext
	end

AideScript_TheftTestimony:
	writetext AideText_TheftTestimony
	waitbutton
	closetext
	end

AideScript_ExplainBalls:
	writetext AideText_ExplainBalls
	waitbutton
	closetext
	end

AideScript_AfterTheft:
	writetext AideText_AfterTheft
	waitbutton
	closetext
	end

MeetCopScript2:
	applymovement PLAYER, MeetCopScript2_StepLeft

MeetCopScript:
	applymovement PLAYER, MeetCopScript_WalkUp
CopScript:
	turnobject ELMSLAB_OFFICER, LEFT
	opentext
	writetext ElmsLabOfficerText1
	promptbutton
	special NameRival
	writetext ElmsLabOfficerText2
	waitbutton
	closetext
	applymovement ELMSLAB_OFFICER, OfficerLeavesMovement
	disappear ELMSLAB_OFFICER
	setscene SCENE_ELMSLAB_NOTHING
	end

ElmsLabWindow:
	opentext
	checkflag ENGINE_FLYPOINT_VIOLET
	iftrue .Normal
	checkevent EVENT_ELM_CALLED_ABOUT_STOLEN_POKEMON
	iftrue .BreakIn
	sjump .Normal

.BreakIn:
	writetext ElmsLabWindowText2
	waitbutton
	closetext
	end

.Normal:
	writetext ElmsLabWindowText1
	waitbutton
	closetext
	end

ElmsLabTravelTip1:
	jumptext ElmsLabTravelTip1Text

ElmsLabTravelTip2:
	jumptext ElmsLabTravelTip2Text

ElmsLabTravelTip3:
	jumptext ElmsLabTravelTip3Text

ElmsLabTravelTip4:
	jumptext ElmsLabTravelTip4Text

ElmsLabTrashcan:
	jumptext ElmsLabTrashcanText

ElmsLabPC:
	jumptext ElmsLabPCText

ElmsLabTrashcan2:
; unused
	jumpstd trashcan

ElmsLabBookshelf:
	jumpstd difficultbookshelf

ElmsLab_WalkUpToElmMovement:
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	step UP
	turn_head LEFT
	step_end

ElmsLab_CantLeaveMovement:
	step UP
	step_end

MeetCopScript2_StepLeft:
	step LEFT
	step_end

MeetCopScript_WalkUp:
	step UP
	step UP
	turn_head RIGHT
	step_end

OfficerLeavesMovement:
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step DOWN
	step_end

AideWalksRight1:
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksRight2:
	step RIGHT
	step RIGHT
	step RIGHT
	turn_head UP
	step_end

AideWalksLeft1:
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

AideWalksLeft2:
	step LEFT
	step LEFT
	step LEFT
	turn_head DOWN
	step_end

ElmJumpUpMovement:
	fix_facing
	big_step UP
	remove_fixed_facing
	step_end

ElmJumpDownMovement:
	fix_facing
	big_step DOWN
	remove_fixed_facing
	step_end

ElmJumpLeftMovement:
	fix_facing
	big_step LEFT
	remove_fixed_facing
	step_end

ElmJumpRightMovement:
	fix_facing
	big_step RIGHT
	remove_fixed_facing
	step_end

ElmsLab_ElmToDefaultPositionMovement1:
	step UP
	step_end

ElmsLab_ElmToDefaultPositionMovement2:
	step RIGHT
	step RIGHT
	step UP
	turn_head DOWN
	step_end

AfterCyndaquilMovement:
	step LEFT
	step UP
	turn_head UP
	step_end

AfterTotodileMovement:
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

AfterChikoritaMovement:
	step LEFT
	step LEFT
	step LEFT
	step UP
	turn_head UP
	step_end

ElmText_Intro:
	text "Hippolyte:"
	line "<PLAY_G>!"

	para "Vous voici!"

	para "Je voulais"
	line "vous demander…"

	para "Je méne des"
	line "recherches"

	para "et je me "
	line "demandais si"

	para "vous pouviez"
	line "m'aider."
	
	para "Voyez-vous…"

	para "C'est la momie"
	line "de RASCAR"
	cont "CAPAC."
	
	para "J'écris un"
	line "papier"

	para "ä son sujet"
	line "pour une"
	cont "conférence."

	para "Mais je suis sur"
	line "une série et je"

	para "procrastine"
	line "ä mort."

	para "Bref!"

	para "J'aimerais que"
	line "vous m'aidiez"
	cont "ä faire le taf."
	done

ElmText_Accepted:
	text "Merci, <PLAY_G>!"

	para "C'est trés"
	line "aimable ä vous!"
	done

ElmText_Refused:
	text "Mais… Laissez-"
	line "moi insister!"
	done

ElmText_ResearchAmbitions:
	text "Quand j'…nous"
	line "aurons publié,"

	para "le monde "
	line "comprendra mieux"

	para "la puissance"
	line "de la chloroquine!"
	done

ElmText_GotAnEmail:
	text "Oh! C'est une"
	line "illusion, ou…"
	cont "Elle a bougé?"

	done

ElmText_MissionFromMrPokemon:
	text "Bon, écoutez."

	para "Pour me motiver"
	para "mon collégue,"
	line "le Pr.Calys"

	para "me trouve des"
	line "trucs louches"

	para "ä longueur de"
	line "temps dans la…"

	para "Bref."

	para "Il m'a appelé"
	line "pour me dire"

	para "qu'il a dégoté"
	line "un truc"
	cont "…comme jaja."

	para "Mais, je n'ai"
	line "pas le temps"
	cont "d'y aller."

	para "Et…"

	para "Je me disais…"

	para "<PLAY_G>, pouvez-"
	line "vous y aller"
	cont "ä ma place?"

	para "Coment?!"

	para "Vous devez"
	line "écrire un"
	cont "article?"

	para "HA!HA!HA!"
	done

ElmText_ChooseAPokemon:
	text "Et bien voilä!"

	para "Je voudrais que"
	line "vous preniez"

	para "l'un de ces"
	line "sujet sur ce"
	cont "bureau."

	para "Vous en serez le"
	line "deuxiéme"
	cont "auteur, <PLAY_G>!"

	para "Allez. Choissez!"
	done

ElmText_LetYourMonBattleIt:
	text "Si une autre inpi-"
	line "ration vous prend,"

	para "réfléchissez-y a"
	line "deux fois, et"

	para "confrontez"
	line "vos idées."
	cont "… en combat!"
	done

LabWhereGoingText:
	text "Hippolyte: Eh!"
	line "Ou partez-vous?"
	done

TakeCyndaquilText:
	text "Hippolyte:"
	line "Celui-ci?"
	done

TakeTotodileText:
	text "Hippolyte:"
	line "Celui-lä?"
	done

TakeChikoritaText:
	text "Hippolyte: C'est "
	line "votre choix?"
	done

DidntChooseStarterText:
	text "Prennez"
	line "le temps."

	para "Mais pas trop"
	line "non plus."
	done

ChoseStarterText:
	text "Hippolyte: Ah"
	line "la bonne heure !"
	done

ReceivedStarterText:
	text "<PLAYER> recoit"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

ElmDirectionsText1:
	text "M.Calys vit dans"
	line "un taudis situé"
	cont "un peu aprés la"

	para "prochaine ville."

	para "C'est presque"
	line "direct, vous ne"

	para "pouvez pas"
	line "vous tromper."

	para "Mais au cas ou,"
	line "voici mon numero"
	cont "de téléphone."

	para "Appelez-moi,"
	line "peut-étre!"
	done

ElmDirectionsText2:
	text "Si vos #S sont"
	line "mal en point,"

	para "passez-les au "
	line "correcteur ici."

	para "Sentez-vous"
	line "libre de "
	cont "l'utiliser."
	done

ElmDirectionsText3:
	text "<PLAY_G>, Je"
	line "compte sur vous!"
	done

GotElmsNumberText:
	text "<PLAYER> entre"
	line "le numéro de tel."
	done

ElmDescribesMrPokemonText:
	text "M.Calys connait"
	line "les bons coins"
	cont "ä champignon."

	para "Il y a du bon,"
	line "et du moins bon."

	para "Moi, je reste"
	line "squatter ici."
	done

ElmPokeBallText:
	text "Une # du"
	line "prof Bergamotte"
	done

ElmsLabHealingMachineText1:
	text "Qu'est-ce donc?"
	line "Des vagues rouges?"
	done

ElmsLabHealingMachineText2:
	text "Corriger les"
	line "typos des #S?"
	done

ElmAfterTheftText1:
	text "Hippolyte: <PLAY_G>"
	line "c'est terrible…"

	para "On ne peut plus"
	line "rien dire!"
	cont "…(soupir)…"

	para "Oh, oui, quelle"
	line "est la trouvaille"
	cont "du prof.Calys?"
	done

ElmAfterTheftText2:
	text "<PLAYER> donne"
	line "le truc louche au"
	cont "prof Begramotte."
	done

ElmAfterTheftText3:
	text "Hippolyte:"
	line "Sapristi!"
	done

ElmAfterTheftText4:
	text "Mais… C'est un"
	line "caramel mou,"

	para "format généreux"
	line "(18kg)?! Miam!"
	done

ElmAfterTheftText5:
	text "…"
	line "Comment?!?"

	para "Le Petit 20e"
	line "vous a confié"
	cont "un cartable?"

	para "<PLAY_G>, c'est"
	line "vrai? C'est"
	cont "incroyable!"

	para "On vous fait"
	line "donc confiance"
	cont "pour écrire un"
	cont "article."

	para "Wow, <PLAY_G>. Je"
	line "n'en crois pas"
	cont "mes yeux."
	
	para "Il semble aussi"
	line "que notre"
	cont "brouillon"

	para "avance vite."

	para "Vous devrier"
	line "présenter cet"
	cont "essai ä nos"

	para "collaborateurs."

	para "Ils sont dans les"
	line "GYMs des villes."

	para "La plus proche"
	line "est VIOLET CITY."
	done

ElmAfterTheftText6:
	text "…<PLAY_G>. La"
	line "route de la"

	para "publication"
	line "sera longue."

	para "Avant de partir,"
	line "parlez-en ä"
	cont "Nestor."
	done

ElmStudyingEggText:
	text "Hippolyte:"
	line "Tenez bon! Je "

	para "vous appéle si"
	line "j'ai du nouveau!"
	done

ElmAideHasEggText:
	text "Hippolyte:"
	line "<PLAY_G>?"
	line "Vous n'avez pas"
	cont "vu le capitaine?"

	para "Aux PTT de"
	line "VIOLET CITY."

	para "Vous avez du le"
	line "rater. Allez"

	para "voir lä-bas si"
	line "il y est."
	done

ElmWaitingEggHatchText:
	text "Hippolyte: Alors"
	line "ce caramel mou?"
	done

ElmThoughtEggHatchedText:
	text "<PLAY_G>? Je"
	line "pensais que ce"
	cont "caramel mou"

	para "CO-"
	line "LO-"
	cont "SAL"

	para "vous"
	line "inspirerait..."

	para "Qu'est est-il?"
	done

ShowElmTogepiText1:
	text "Hippolyte:"
	line "<PLAY_G>, vous"
	line "étes ravissant!"
	done

ShowElmTogepiText2:
	text "Comment?"
	line "Ce brouillon!?!"
	done

ShowElmTogepiText3:
	text "Le caramel mou!"
	line "Il vous a ins-"
	cont "piré, pas vrai?"

	para "Wow, vous devriez"
	line "vous en procurer"
	cont "plus souvent."
	done

ElmGiveEverstoneText1:
	text "Allé, <PLAY_G>!"
	line "Ces artciles ne"

	para "vont pas "
	line "sécrire tout seul!"

	para "Voici un petit"
	line "cadeau en gage de"
	cont "mon appreciation."
	done

ElmGiveEverstoneText2:
	text "C'est une"
	line "EVERSTONE."

	para "Certaines idées"
	line "changent de"

	para "tournure au cours"
	line "de l'écriture."

	para "Une # avec une"
	line "EVERSTONE"
	cont "n'évolura pas."
	done

ElmText_CallYou:
	text "Hippolyte:"
	line "<PLAY_G>, Je"
	para "vous appéle et"
	line "je vous dit quoi."
	done

AideText_AfterTheft:
	text "…soupir… Ces"
	line "restrictions."

	para "Je me demande"
	line "ce que serait la"
	cont "franchise sans"
	
	para "lui."

	done

ElmGiveMasterBallText1:
	text "Eh, <PLAY_G>!"
	line "Merci, ma"

	para "série avance"
	line "bien!"

	para "Prennez ceci en"
	line "gage de ma"
	cont "considération."
	done

ElmGiveMasterBallText2:
	text "La MASTER BALL"
	line "est le top!"

	para "Méme quand"
	line "l'idée est moisie,"

	para "Elle permet d'en"
	line "faire quand"

	para "méme un artcle."
	line "…Enfin une #"
	cont "exploitable."
	done

ElmGiveTicketText1:
	text "<PLAY_G>!"
	line "Vous voici!"

	para "Je vous ai fait"
	line "venir car j'ai"
	cont "un petit quelque"

	para "chose pour vous."

	para "Voyez? C'est un"
	line "S.S.TICKET."

	para "Il vous permettra"
	line "d'écrire dans la"
	cont "région de KANTO."
	done

ElmGiveTicketText2:
	text "Le bateau part de"
	line "OLIVINE CITY."

	para "Mais vous le"
	line "saviez, <PLAY_G>."

	para "Aprés tout, vous"
	line "étes un"
	cont "aventurier."
	done

ElmsLabSignpostText_Egg:
	text "C'est le caramel"
	line "mou du prof"
	cont "Bergamotte."
	done

AideText_GiveYouPotion:
	text "<PLAY_G>, mon"
	line "garcon,"

	para "vous devriez"
	line "prendre un"
	cont "petit remontant."
	done

AideText_AlwaysBusy:
	text "…Je me demande"
	line "quand cet"
	cont "australopithéque"

	para "va partir."
	done

AideText_TheftTestimony:
	text "Il y a eu un"
	line "bruit dehors…"

	para "Quand nous somes"
	line "arrivés, quelqu'un"
	cont "avait zucké les"

	para "notes du prof."

	para "C'est incroyable "
	line "de faire ca. Ce"
	cont "n'était que"

	para "des mauvais memes"
	line "…soupir…"

	done

AideText_GiveYouBalls:
	text "<PLAY_G>!"

	para "Tenez, du papier"
	line "pour vot'qué-"
	cont "quéte!"
	done

AideText_ExplainBalls:
	text "Mon garcon,"
	line "pour remplir"
	cont "votre mission,"

	para "il vous faut"
	line "écrire des"

	para "articles en"
	line "vous inspirant"

	para "de ce que vous"
	line "trouvez"
	cont "dans la nature."
	
	para "Quand l'inspi-"
	line "ration vous"
	cont "prend, couchez"

	para "l'idée sur papier"
	line "en lancant une"
	cont "NOTEBALL."

	para "Si l'idée prend,"
	line "vous pourrez"
	cont "travailler cet"

	para "article."

	done

ElmsLabOfficerText1:
	text "On dit que"
	line "quelqu'un essaie"

	para "de brider la"	
	line "franchise…"

	para "J'étais venu en"
	line "discuter avec le"
	cont "Prof Bergamotte."

	para "Apparament, c'est"
	line "un jeune mäle aux"
	cont "long cheveux…"

	para "Quoi?"

	para "Vous avez"
	line "confronté vos"
	cont "idée avec lui?"

	para "Savez-vous"
	line "comment"
	cont "l'appeler?"
	done

ElmsLabOfficerText2:
	text "Mais .Mais"
	line "c'est <RIVAL>!"

	para "Eh!oui,<RIVAL>…"
	line " "
	done

ElmsLabWindowText1:
	text "La fenétre est"
	line "ouverte."

	para "Ca sent la momie"
	line "Par ici."
	done

ElmsLabWindowText2:
	text "Il est entré"
	line "par ici!"
	done

ElmsLabTravelTip1Text:
	text "<PLAYER> ouvre"
	line "un livre."

	para "Conseil 1:"

	para "Pressez START"
	line "pour le MENU."
	done

ElmsLabTravelTip2Text:
	text "<PLAYER> ouvre"
	line "un livre."

	para "Conseil 2:"

	para "Sauvez la partie"
	line "réguliérement!"
	done

ElmsLabTravelTip3Text:
	text "<PLAYER> ouvre "
	line "un livre."

	para "Conseil 3:"

	para "Dans votre sac,"
	line "SELECT bouge"
	cont "les objets."
	done

ElmsLabTravelTip4Text:
	text "<PLAYER> ouvre"
	line "un livre."

	para "Conseil 4:"

	para "Check your #MON"
	line "moves. Press the"

	para "A Button to switch"
	line "moves."
	done

ElmsLabTrashcanText:
	text "Vous ne voulez pas"
	line "savoir ce qu'il y"
	cont "a lä dedans… eurk"
	done

ElmsLabPCText:
	text "LA MOMIE DE"
	line "RASCAR CAPAC"

	para "…Il n'y a que"
	line "le titre…"
	done

ElmsLab_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  4, 11, NEW_BARK_TOWN, 1
	warp_event  5, 11, NEW_BARK_TOWN, 1

	db 8 ; coord events
	coord_event  4,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  5,  6, SCENE_ELMSLAB_CANT_LEAVE, LabTryToLeaveScript
	coord_event  4,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript
	coord_event  5,  5, SCENE_ELMSLAB_MEET_OFFICER, MeetCopScript2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POTION, AideScript_WalkPotion2
	coord_event  4,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls1
	coord_event  5,  8, SCENE_ELMSLAB_AIDE_GIVES_POKE_BALLS, AideScript_WalkBalls2

	db 16 ; bg events
	bg_event  2,  1, BGEVENT_READ, ElmsLabHealingMachine
	bg_event  6,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  1, BGEVENT_READ, ElmsLabBookshelf
	bg_event  0,  7, BGEVENT_READ, ElmsLabTravelTip1
	bg_event  1,  7, BGEVENT_READ, ElmsLabTravelTip2
	bg_event  2,  7, BGEVENT_READ, ElmsLabTravelTip3
	bg_event  3,  7, BGEVENT_READ, ElmsLabTravelTip4
	bg_event  6,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  7,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  8,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  7, BGEVENT_READ, ElmsLabBookshelf
	bg_event  9,  3, BGEVENT_READ, ElmsLabTrashcan
	bg_event  5,  0, BGEVENT_READ, ElmsLabWindow
	bg_event  3,  5, BGEVENT_DOWN, ElmsLabPC

	db 6 ; object events
	object_event  5,  2, SPRITE_ELM, SPRITEMOVEDATA_STANDING_DOWN, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ProfElmScript, -1
	object_event  2,  9, SPRITE_SCIENTIST, SPRITEMOVEDATA_SPINRANDOM_SLOW, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, ElmsAideScript, EVENT_ELMS_AIDE_IN_LAB
	object_event  6,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, CyndaquilPokeBallScript, EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	object_event  7,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, TotodilePokeBallScript, EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	object_event  8,  3, SPRITE_POKE_BALL, SPRITEMOVEDATA_STILL, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ChikoritaPokeBallScript, EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	object_event  5,  3, SPRITE_OFFICER, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, PAL_NPC_BLUE, OBJECTTYPE_SCRIPT, 0, CopScript, EVENT_COP_IN_ELMS_LAB
