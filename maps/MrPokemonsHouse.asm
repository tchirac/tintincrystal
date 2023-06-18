	object_const_def ; object_event constants
	const MRPOKEMONSHOUSE_GENTLEMAN
	const MRPOKEMONSHOUSE_OAK

MrPokemonsHouse_MapScripts:
	db 2 ; scene scripts
	scene_script .MeetMrPokemon ; SCENE_DEFAULT
	scene_script .DummyScene ; SCENE_FINISHED

	db 0 ; callbacks

.MeetMrPokemon:
	prioritysjump .MrPokemonEvent
	end

.DummyScene:
	end

.MrPokemonEvent:
	showemote EMOTE_SHOCK, MRPOKEMONSHOUSE_GENTLEMAN, 15
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	opentext
	writetext MrPokemonIntroText1
	waitbutton
	closetext
	applymovement PLAYER, MrPokemonsHouse_PlayerWalksToMrPokemon
	opentext
	writetext MrPokemonIntroText2
	promptbutton
	waitsfx
	giveitem MYSTERY_EGG
	writetext MrPokemonsHouse_GotEggText
	playsound SFX_KEY_ITEM
	waitsfx
	itemnotify
	setevent EVENT_GOT_MYSTERY_EGG_FROM_MR_POKEMON
	blackoutmod CHERRYGROVE_CITY
	writetext MrPokemonIntroText3
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, RIGHT
	writetext MrPokemonIntroText4
	promptbutton
	turnobject MRPOKEMONSHOUSE_GENTLEMAN, DOWN
	turnobject MRPOKEMONSHOUSE_OAK, LEFT
	writetext MrPokemonIntroText5
	waitbutton
	closetext
	sjump MrPokemonsHouse_OakScript

MrPokemonsHouse_MrPokemonScript:
	faceplayer
	opentext
	checkitem RED_SCALE
	iftrue .RedScale
	checkevent EVENT_GAVE_MYSTERY_EGG_TO_ELM
	iftrue .AlwaysNewDiscoveries
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	end

.AlwaysNewDiscoveries:
	writetext MrPokemonText_AlwaysNewDiscoveries
	waitbutton
	closetext
	end

.RedScale:
	writetext MrPokemonText_GimmeTheScale
	yesorno
	iffalse .refused
	verbosegiveitem EXP_SHARE
	iffalse .full
	takeitem RED_SCALE
	sjump .AlwaysNewDiscoveries

.refused
	writetext MrPokemonText_Disappointed
	waitbutton
.full
	closetext
	end

MrPokemonsHouse_OakScript:
	playmusic MUSIC_PROF_OAK
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakWalksToPlayer
	turnobject PLAYER, RIGHT
	opentext
	writetext MrPokemonsHouse_OakText1
	promptbutton
	waitsfx
	writetext MrPokemonsHouse_GetDexText
	playsound SFX_ITEM
	waitsfx
	setflag ENGINE_POKEDEX
	writetext MrPokemonsHouse_OakText2
	waitbutton
	closetext
	turnobject PLAYER, DOWN
	applymovement MRPOKEMONSHOUSE_OAK, MrPokemonsHouse_OakExits
	playsound SFX_EXIT_BUILDING
	disappear MRPOKEMONSHOUSE_OAK
	waitsfx
	special RestartMapMusic
	pause 15
	turnobject PLAYER, UP
	opentext
	writetext MrPokemonsHouse_MrPokemonHealText
	waitbutton
	closetext
	special FadeBlackQuickly
	special ReloadSpritesNoPalettes
	playmusic MUSIC_HEAL
	special StubbedTrainerRankings_Healings
	special HealParty
	pause 60
	special FadeInQuickly
	special RestartMapMusic
	opentext
	writetext MrPokemonText_ImDependingOnYou
	waitbutton
	closetext
	setevent EVENT_RIVAL_NEW_BARK_TOWN
	setevent EVENT_PLAYERS_HOUSE_1F_NEIGHBOR
	clearevent EVENT_PLAYERS_NEIGHBORS_HOUSE_NEIGHBOR
	setscene SCENE_FINISHED
	setmapscene CHERRYGROVE_CITY, SCENE_CHERRYGROVECITY_MEET_RIVAL
	setmapscene ELMS_LAB, SCENE_ELMSLAB_MEET_OFFICER
	specialphonecall SPECIALCALL_ROBBED
	clearevent EVENT_COP_IN_ELMS_LAB
	checkevent EVENT_GOT_TOTODILE_FROM_ELM
	iftrue .RivalTakesChikorita
	checkevent EVENT_GOT_CHIKORITA_FROM_ELM
	iftrue .RivalTakesCyndaquil
	setevent EVENT_TOTODILE_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesChikorita:
	setevent EVENT_CHIKORITA_POKEBALL_IN_ELMS_LAB
	end

.RivalTakesCyndaquil:
	setevent EVENT_CYNDAQUIL_POKEBALL_IN_ELMS_LAB
	end

MrPokemonsHouse_ForeignMagazines:
	jumptext MrPokemonsHouse_ForeignMagazinesText

MrPokemonsHouse_BrokenComputer:
	jumptext MrPokemonsHouse_BrokenComputerText

MrPokemonsHouse_StrangeCoins:
	jumptext MrPokemonsHouse_StrangeCoinsText

MrPokemonsHouse_PlayerWalksToMrPokemon:
	step RIGHT
	step UP
	step_end

MrPokemonsHouse_OakWalksToPlayer:
	step DOWN
	step LEFT
	step LEFT
	step_end

MrPokemonsHouse_OakExits:
	step DOWN
	step LEFT
	turn_head DOWN
	step_sleep 2
	step_end

MrPokemonIntroText1:
	text "NOUS NE FAISONS"
	line "RIEN!!"

	para "Oh."

	para "Vous venez de"
	line "la part du prof"
	cont "Bergamotte?"
	done

MrPokemonIntroText2:
	text "Prenez donc un "
	line "caramel mou."
	done

MrPokemonsHouse_GotEggText:
	text "<PLAYER> prend le"
	line "caramel mou."
	done

MrPokemonIntroText3:
	text "Vous pouvez"
	line "l'apporter au"
	cont "prof Bergamotte."

	para "La police n'en"
	line "fera rien."

	para "C'est un caramel"
	line "mou, format gé-"
	cont "néreux (18kg),"

	para "c'est tout."
	done

MrPokemonIntroText4:
	text "Le chef de la "
	line "rédaction du"
	cont "Petit 20e,"

	para "ici présent,"
	line "peut en"
	cont "témoigner."
	done

MrPokemonIntroText5:
	text "Apportez-le"
	line "quand méme au"
	cont "prof Bergamotte,"

	para "je vous prie."
	done

MrPokemonsHouse_MrPokemonHealText:
	text "Tenez, goutez"
	line "cela aussi."
	done

MrPokemonText_ImDependingOnYou:
	text "Pas mal, n'est"
	line "ce pas?!"
	done

MrPokemonText_AlwaysNewDiscoveries:
	text "Vous aimez les"
	line "caramels mous?"
	done

MrPokemonsHouse_OakText1:
	text "Oh! <PLAY_G>!"

	para "Qu'est ce que"
	line "cela?"

	para "…"

	para "!!"
	line "Une #?!"
	cont "Vraiment?!"

	para "Alors ca y est,"
	line "vous vous étes"

	para "mis au travail,"
	line "enfin?"

	para "C'est vrai? Je "
	line "n'y croyais plus!"

	para "Dans ce cas,"
	line "voici qui"
	cont "devrait vous"

	para "aider ä trier"
	line "vos #S!"

	done

MrPokemonsHouse_GetDexText:
	text "<PLAYER> recoit"
	line "un #DEX!"
	done

MrPokemonsHouse_OakText2:
	text "Vous me donnez"
	line "un peu d'espoir,"
	cont "<PLAY_G>!"

	para "Continuez ainsi"
	line "si vous voulez"

	para "que l'on continue"
	line "ä financer vos"
	cont "voyages."

	para "Bon!"

	para "Ce n'est pas"
	line "le trou, mais…"

	para "Je suis attendu ä"
	line "Bruxelles."

	para "<PLAY_G>, Je"
	line "compte sur vous!"
	done

MrPokemonText_GimmeTheScale:
	text "Oh? Cette lingette"
	line "rouge, qu'est-ce?"
	cont "La castafiore?!"

	para "Je, je la veux…"

	para "<PLAY_G>, me la"
	line "donneriez vous?"

	para "Je vous donne"
	line "un EXP.SHARE"
	cont "en échange."
	done

MrPokemonText_Disappointed:
	text "S'vous plait!"
	line "S'vous plait!"
	cont "Allezzzzzz!"
	done

MrPokemonsHouse_ForeignMagazinesText:
	text "C'est plein de"
	line "magazines de"
	cont "dames aux"

	para "formes géné-"
	line "reuses (118kg)."
	done

MrPokemonsHouse_BrokenComputerText:
	text "C'est comme une"
	line "grosse machine"

	para "ä faire pousser"
	line "les champigons."
	done

MrPokemonsHouse_StrangeCoinsText:
	text "Il y a des traces"
	line "de farine!"
	done

MrPokemonsHouse_MapEvents:
	db 0, 0 ; filler

	db 2 ; warp events
	warp_event  2,  7, ROUTE_30, 2
	warp_event  3,  7, ROUTE_30, 2

	db 0 ; coord events

	db 5 ; bg events
	bg_event  0,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  1,  1, BGEVENT_READ, MrPokemonsHouse_ForeignMagazines
	bg_event  6,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  7,  1, BGEVENT_READ, MrPokemonsHouse_BrokenComputer
	bg_event  6,  4, BGEVENT_READ, MrPokemonsHouse_StrangeCoins

	db 2 ; object events
	object_event  3,  5, SPRITE_GENTLEMAN, SPRITEMOVEDATA_STANDING_RIGHT, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, MrPokemonsHouse_MrPokemonScript, -1
	object_event  6,  5, SPRITE_OAK, SPRITEMOVEDATA_STANDING_UP, 0, 0, -1, -1, 0, OBJECTTYPE_SCRIPT, 0, ObjectEvent, EVENT_MR_POKEMONS_HOUSE_OAK
