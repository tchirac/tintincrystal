_OakText6::
	text "Maintenant, je "
	line "veux voir votre "
	cont "nom signé…"
	prompt

_OakText7::
	text "<PLAYER>, enfin"
	line "prét?"

	para "Il va vous "
	line "falloir écrire"
	cont "une ligne."

	para "Ce sera dur, mais"
	line "vous en étes "
	cont "capable."

	para "Cdt."
	line "-La rédaction."
	done

_ClockTimeMayBeWrongText::
	text "L'horloge est"
	line "peut-etre retardee."

	para "Reglez l'heure s'il"
	line "vous plait."
	prompt

_ClockSetWithControlPadText::
	text "Set with the"
	line "Control Pad."

	para "Confirm: A Button"
	line "Cancel:  B Button"
	done

_ClockIsThisOKText::
	text "Est-ce bon?"
	done

_ClockHasResetText::
	text "L'heure est"
	line "réglee."
	done

_LinkTimeoutText::
	text "Vous étes "
	line "bougrement lent!"
	cont "Recommencez."
	prompt

_LinkTradeCantBattleText::
	text "Si vous echangez cet"
	line "article, vous n'aurez"
	cont "plus de brouillon."
	prompt

_LinkAbnormalMonText::
	text "Votre ami"
	line "@"
	text_ram wStringBuffer1
	text " semble"
	cont "anormal!"
	prompt

_LinkAskTradeForText::
	text "Trade @"
	text_ram wd004
	text_start
	line "for @"
	text_ram wStringBuffer1
	text "?"
	done

UnknownText_0x1c422a::
	text "To enter a mobile"
	line "battle, you must"

	para "pick a team of"
	line "three #MON."

	para "On est d'accord?"
	done

UnknownText_0x1c4275::
	text "Need more info on"
	line "mobile battles?"
	done

UnknownText_0x1c4298::
	text "For a mobile"
	line "battle, choose"
	cont "three #MON."

	para "The maximum daily"
	line "play time is ten"

	para "minutes for each"
	line "linked player."

	para "If a battle isn't"
	line "finished within"

	para "the time limit,"
	line "the player with"

	para "the fewest fainted"
	line "#MON wins."

	para "If tied, the team"
	line "that lost the"

	para "least amount of HP"
	line "wins."
	done

UnknownText_0x1c439c::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."

	para "Would you like to"
	line "battle?"
	done

UnknownText_0x1c43dc::
	text "There are only @"
	text_decimal wStringBuffer2, 1, 2
	text_start
	line "min. left today."

	para "Want a quick"
	line "battle?"
	done

UnknownText_0x1c4419::
	text "There is only"
	line "1 min. left today!"

	para "Want to rush"
	line "through a battle?"
	done

UnknownText_0x1c445a::
	text "There is less than"
	line "1 min. left today!"

	para "Please try again"
	line "tomorrow."
	done

UnknownText_0x1c449c::
	text "Try again using"
	line "the same settings?"
	done

_MobileBattleLessThanOneMinuteLeftText::
	text "There is less than"
	line "1 min. left today!"
	done

_MobileBattleNoTimeLeftForLinkingText::
	text "No time left for"
	line "linking today."
	done

UnknownText_0x1c4508::
	text "Pick three #MON"
	line "for battle."
	done

UnknownText_0x1c4525::
	text "Today's remaining"
	line "time is @"
	text_decimal wStringBuffer2, 1, 2
	text " min."
	done

_WouldYouLikeToSaveTheGameText::
	text "Voulez-vous"
	line "sauver la partie?"
	done

_SavingDontTurnOffThePowerText::
	text "SAUVEGARDE… NE PAS"
	line "ETEINDRE."
	done

_SavedTheGameText::
	text "<PLAYER> a sauvé"
	line "la partie."
	done

_AlreadyASaveFileText::
	text "Il y a déja une"
	line "sauvegarde."
	cont "L'écraser ?"
	done

_AnotherSaveFileText::
	text "Il y a une autre"
	line "sauvegarde,"
	cont "l'écraser?"
	done

_SaveFileCorruptedText::
	text "La sauvegarde est"
	line "corrompue! :("
	prompt

_ChangeBoxSaveText::
	text "En changeant de"
	line "dossier, la partie"
	cont "sera sauvegardée."
	done

_MoveMonWOMailSaveText::
	text "Chaque déplacement"
	line "requiert d'écraser "
	cont "la sauvegarde. OK?"
	done

; unused
_WindowAreaExceededErrorText::
	text "The window save"
	line "area was exceeded."
	done

_WindowPoppingErrorText::
	text "No windows avail-"
	line "able for popping."
	done

; unused
_CorruptedEventErrorText::
	text "Corrupted event!"
	prompt

_ObjectEventText::
	text "Object event"
	done

_BGEventText::
	text "BG event"
	done

_CoordinatesEventText::
	text "Coordinates event"
	done

_ReceivedItemText::
	text "<PLAYER> recoit"
	line "@"
	text_ram wStringBuffer4
	text "."
	done

_PutItemInPocketText::
	text "<PLAYER> met le"
	line "@"
	text_ram wStringBuffer1
	text " dans"
	cont "la @"
	text_ram wStringBuffer3
	text "."
	prompt

_PocketIsFullText::
	text "Le @"
	text_ram wStringBuffer3
	text_start
	line "est plein…"
	prompt

_SeerSeeAllText::
	text "Je vois tout."
	line "Je sais tout…"

	para "En particulier"
	line "sur vos #S!"
	done

_SeerCantTellAThingText::
	text "Sapristi!! Je"
	line "ne vois rien!"

	para "Par quel"
	line "maléfice?"
	done

_SeerNameLocationText::
	text "Hmm… Votre inspi"
	line "-ration vient"
	cont "@"
	text_ram wSeerNickname
	text " d'ici:"
	cont "@"
	text_ram wSeerCaughtLocation
	text "!"
	prompt

_SeerTimeLevelText::
	text "L'heure:"
	line "@"
	text_ram wSeerTimeOfDay
	text "!"

	para "Avec déjä @"
	text_ram wSeerCaughtLevelString
	text " pages!"

	para "Impressionnant,"
	line "n'est-ce pas?"
	prompt

_SeerTradeText::
	text "Hmm… @"
	text_ram wSeerNickname
	text_start
	line "vient de @"
	text_ram wSeerOTName
	text_start
	cont ", plagieur?"

	para "@"
	text_ram wSeerCaughtLocation
	text_start
	line "était ou @"
	text_ram wSeerOTName
	text_start
	cont "fit @"
	text_ram wSeerNickname
	text "!"
	prompt

_SeerNoLocationText::
	text "Sapristi!"

	para "Je ne sais pourquoi,"
	line "mais"

	para "Je ne peux dire d'ou"
	line "il vient. Il avait"
	cont "déjä @"
	text_ram wSeerCaughtLevelString
	text "pages"

	para "quand on vous "
	line "l'a donnée,"
	cont "Pas vrai?"
	prompt

_SeerEggText::
	text "Eh!"

	para "C'est un caramel!"
	done

_SeerDoNothingText::
	text "Fufufu! Je vois"
	line "que vous ne ferez"
	cont "rien."
	done

_SeerMoreCareText::
	text "En fait,…"

	para "Il faurait bosser"
	line "un peu ces"
	cont "#S, non?!"
	done

_SeerMoreConfidentText::
	text "Eh bien…"

	para "Ca s'étoffe,"
	line "un peu."

	para "@"
	text_ram wSeerNickname
	text " prend"
	line "forme, un peu."
	done

_SeerMuchStrengthText::
	text "Eh bien,…"

	para "@"
	text_ram wSeerNickname
	text " a"
	line "grandi, pas mal."
	done

_SeerMightyText::
	text "Eh bien,…"

	para "ca prend bien"
	line "forme, non?"

	para "Ce @"
	text_ram wSeerNickname
	text_start
	line "a été confronté"

	para "a pas mal"
	line "d'autres #S."
	done

_SeerImpressedText::
	text "Ohh!"

	para "Je suis impres-"
	line "sionné par votre"
	cont "dévotion."

	para "Cette"
	line "@"
	text_ram wSeerNickname
	text "reste nulle"
	line "mais travaillée."

	done

_CongratulationsYourPokemonText::
	text "Félicitations!"
	line "Votre @"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

_EvolvedIntoText::
	text_start

	para "evolue en"
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_StoppedEvolvingText::
	text "Oh? @"
	text_ram wStringBuffer2
	text_start
	line "est une suffisament!"
	text "bonne idée comme ca!"
	prompt

_EvolvingText::
	text "Quoi? @"
	text_ram wStringBuffer2
	text_start
	line "évolue!"
	done

_MartHowManyText::
	text "Combien?"
	done

_MartFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "fera ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbShopLadyIntroText::
	text "Bonjour, trés cher."

	para "Je vends de la weed"
	line "medicinale."

	para "C'est amer."
	line "Hehehehe…"
	done

_HerbalLadyHowManyText::
	text "Combien?"
	done

_HerbalLadyFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "fera ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_HerbalLadyThanksText::
	text "Merci, l'ami."
	line "Hehehehe…"
	done

_HerbalLadyPackFullText::
	text "Oh? Votre sac est"
	line "plein, cher ami."
	done

_HerbalLadyNoMoneyText::
	text "Hehehe… Vous étes"
	line "completement fauchés!"
	done

_HerbalLadyComeAgainText::
	text "Revenez vite, l'ami."
	line "Hehehehe…"
	done

_BargainShopIntroText::
	text "Hiya! Vous aimez"
	line "les bonnes affaires?"

	para "Je vens de rares objets"
	line "que personne d'autre"

	para "n'a--mais seulement"
	line "un objet de chaque."
	done

_BargainShopFinalPriceText::
	text_ram wStringBuffer2
	text " coute"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text ". Vouc voulez?"
	done

_BargainShopThanksText::
	text "Merci."
	done

_BargainShopPackFullText::
	text "Oh-oh, votre sac"
	line "est trop plein."
	done

_BargainShopSoldOutText::
	text "Vous avez déjä"
	line "achté cela, et je"
	cont "n'en ai plus."
	done

_BargainShopNoFundsText::
	text "Uh-oh, pas assez"
	line "d'oseille."
	done

_BargainShopComeAgainText::
	text "Revenez"
	line "un jour."
	done

_PharmacyIntroText::
	text "Eh? Il vous faut"
	line "des medocs?"
	done

_PharmacyHowManyText::
	text "Combien?"
	done

_PharmacyFinalPriceText::
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text " @"
	text_ram wStringBuffer2
	text "(S)"
	line "fera ¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."
	done

_PharmacyThanksText::
	text "Merci infiniment!"
	done

_PharmacyPackFullText::
	text "Vous n'avez plus"
	line "d'espace."
	done

_PharmacyNoMoneyText::
	text "Oh? Pas assez"
	line "de monnaie."
	done

_PharmacyComeAgainText::
	text "Très bien."
	line "A plus tard."
	done

; unused
_NothingToSellText::
	text "Vous n'avez rien"
	line "a vendre."
	prompt

_MartSellHowManyText::
	text "Combien?"
	done

_MartSellPriceText::
	text "Je peux vous en donner"
	line "¥@"
	text_decimal hMoneyTemp, 3, 6
	text "."

	para "Marché conclu?"
	done

_MartWelcomeText::
	text "Bonjour! Comment"
	line "puis-je aider?"
	done

_MartThanksText::
	text "Voici."
	line "Merci!"
	done

_MartNoMoneyText::
	text "C'est un peu "
	line "pauvre."
	done

_MartPackFullText::
	text "Vous ne pouvez rien"
	line "portez de plus."
	done

_MartCantBuyText::
	text "Désolé, cela ne"
	line "m'interresse pas."
	prompt

_MartComeAgainText::
	text "A la prochaine!"
	done

_MartAskMoreText::
	text "Il vous fallait"
	line "autre chose?"
	done

_MartBoughtText::
	text "Obtenu: ¥@"
	text_decimal hMoneyTemp, 3, 6
	text " pour"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	done

_SlotsBetHowManyCoinsText::
	text "Parier combien de"
	line "jetons?"
	done

_SlotsStartText::
	text "Commencer!"
	done

_SlotsNotEnoughCoinsText::
	text "Pas assez de "
	line "jetons."
	prompt

_SlotsRanOutOfCoinsText::
	text "Damned… Plus de "
	line "jetons…"
	done

_SlotsPlayAgainText::
	text "Rejouer?"
	done

_SlotsLinedUpText::
	text "alignés!"
	line "Remportez @"
	text_ram wStringBuffer2
	text " jetons!"
	done

_SlotsDarnText::
	text "Sapristi!"
	done

_MobileStadiumEntryText::
	text "Data for use in"
	line "the MOBILE STADIUM"

	para "of the N64 #MON"
	line "STADIUM 2 can be"
	cont "read here."

	para "Read the data?"
	done

_MobileStadiumSuccessText::
	text "Data transfer is"
	line "complete."

	para "We hope you enjoy"
	line "MOBILE STADIUM"

	para "battles in the N64"
	line "#MON STADIUM 2."

	para ""
	done

_MainMenuTimeUnknownText::
	text "Heure inconnue."
	done

; unused mobile
_DeleteSavedLoginPasswordText::
	text "Supprimer le "
	line "LOG-IN PASSWORD?"
	done

; unused mobile
_DeletedTheLoginPasswordText::
	text "Supprimé: LOG-IN"
	line "PASSWORD."
	done

; unused mobile
_MobilePickThreeMonForBattle::
	text "Choisissez 3 #S"
	line "ä mettre ä"
	cont "l'épreuve."
	prompt

; unused mobile
_MobileUseTheseThreeMonText::
	text_ram wMobileParticipant1Nickname
	text ","
	line "@"
	text_ram wMobileParticipant2Nickname
	text " et"
	cont "@"
	text_ram wMobileParticipant3Nickname
	text "."

	para "Utiliser ceux-ci?"
	done

; unused mobile
_MobileOnlyThreeMonMayEnterText::
	text "Trois #S"
	line "seulement, svp."
	prompt

; unused mobile
_MobileCardFolderIntro1Text::
	text "Le CARD FOLDER"
	line "stores your and"

	para "your friends'"
	line "CARDS."

	para "A CARD contains"
	line "information like"

	para "the person's name,"
	line "phone number and"
	cont "profile."

	para ""
	done

; unused mobile
_MobileCardFolderIntro2Text::
	text "This is your CARD."

	para "Once you've"
	line "entered your phone"

	para "number, you can"
	line "trade CARDS with"
	cont "your friends."

	para ""
	done

; unused mobile
_MobileCardFolderIntro3Text::
	text "If you have your"
	line "friend's CARD, you"

	para "can use it to make"
	line "a call from a"

	para "mobile phone on"
	line "the 2nd floor of a"
	cont "#MON CENTER."

	para ""
	done

; unused mobile
_MobileCardFolderIntro4Text::
	text "To safely store"
	line "your collection of"

	para "CARDS, you must"
	line "set a PASSCODE for"
	cont "your CARD FOLDER."

	para ""
	done

; unused mobile
_MobileCardFolderAskDeleteText::
	text "If the CARD FOLDER"
	line "is deleted, all"

	para "its CARDS and the"
	line "PASSCODE will also"
	cont "be deleted."

	para "Beware--a deleted"
	line "CARD FOLDER can't"
	cont "be restored."

	para "Want to delete"
	line "your CARD FOLDER?"
	done

; unused mobile
_MobileCardFolderDeleteAreYouSureText::
	text "Are you sure you"
	line "want to delete it?"
	done

; unused mobile
_MobileCardFolderDeletedText::
	text "The CARD FOLDER"
	line "has been deleted."

	para ""
	done

; unused mobile
_MobileCardFolderAskOpenOldText::
	text "There is an older"
	line "CARD FOLDER from a"
	cont "previous journey."

	para "Do you want to"
	line "open it?"
	done

; unused mobile
_MobileCardFolderAskDeleteOldText::
	text "Delete the old"
	line "CARD FOLDER?"
	done

; unused mobile
_MobileCardFolderFinishRegisteringCardsText::
	text "Finish registering"
	line "CARDS?"
	done

_PhoneWrongNumberText::
	text "Boucherie"
	line "Sanzot?"
	done

_PhoneClickText::
	text "Clic!"
	done

_PhoneEllipseText::
	text "<……>"
	done

_PhoneOutOfAreaText::
	text "Ce numéro est"
	line "ä l'étanger."
	done

_PhoneJustTalkToThemText::
	text "Allez parler ä"
	line "cette personne!"
	done

_PhoneThankYouText::
	text "Merci!"
	done

; unused
UnknownText_0x1c55d6::
	text "  :"
	done

_PasswordAskResetText::
	text "Password OK."
	line "Select CONTINUE &"
	cont "reset settings."
	prompt

_PasswordWrongText::
	text "Mauvais password!"
	prompt

_PasswordAskResetClockText::
	text "Reset l'heure?"
	done

_PasswordAskEnterText::
	text "Please enter the"
	line "password."
	done

_ClearAllSaveDataText::
	text "Clear all save"
	line "data?"
	done

_LearnedMoveText::
	text_ram wMonOrItemNameBuffer
	text " prend"
	line "@"
	text_ram wStringBuffer2
	text "!@"
	sound_dex_fanfare_50_79
	text_promptbutton
	text_end

	text_end ; unused

_MoveAskForgetText::
	text "Quel passage"
	next "abandonner?"
	done

_StopLearningMoveText::
	text "Ne pas inclure"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

_DidNotLearnMoveText::
	text_ram wMonOrItemNameBuffer
	text_start
	line "ne prend pas"
	cont "@"
	text_ram wStringBuffer2
	text "."
	prompt

_AskForgetMoveText::
	text_ram wMonOrItemNameBuffer
	text " "
	line "peut inclure"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Mais @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "ne peut contenir"
	cont "plus de 4 sujets."

	para "Rayer un sujet"
	line "pour traiter de"
	cont " @"
	text_ram wStringBuffer2
	text "?"
	done

Text_MoveForgetCount::
	text "Hop, hop et…@"
	text_pause
	text_end

	text_end ; unused

_MoveForgotText::
	text " Voilä!@"
	text_pause
	text_start

	para "@"
	text_ram wMonOrItemNameBuffer
	text " oublie"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Et…"
	prompt

_MoveCantForgetHMText::
	text "Non. Cette HM"
	line "peut étre utile."
	prompt

_CardFlipPlayWithThreeCoinsText::
	text "Jouer avec 3"
	line "jetons?"
	done

_CardFlipNotEnoughCoinsText::
	text "Pas assez de jetons…"
	prompt

_CardFlipChooseACardText::
	text "Choisissez une carte"
	done

_CardFlipPlaceYourBetText::
	text "Placez votre mise."
	done

_CardFlipPlayAgainText::
	text "Jouer"
	line "encore?"
	done

_CardFlipShuffledText::
	text "Les cartes ont été"
	line "mélangées."
	prompt

_CardFlipYeahText::
	text "Oh oui!"
	done

_CardFlipDarnText::
	text "Damned…"
	done

_GearTodayText::
	text_today
	text_end

	text_end ; unused

_GearEllipseText::
	text "<……>"
	done

_GearOutOfServiceText::
	text "You're out of the"
	line "service area."
	prompt

_PokegearAskWhoCallText::
	text "Qui appeler?"
	done

_PokegearPressButtonText::
	text "Retour au jeu."
	done

_PokegearAskDeleteText::
	text "Supprimer ce"
	line "numbero?"
	done

_BuenaAskWhichPrizeText::
	text "Quel prix choisir?"
	done

_BuenaIsThatRightText::
	text_ram wStringBuffer1
	text "?"
	line "N'est-ce pas?"
	done

_BuenaHereYouGoText::
	text "Et voici!"

	para ""
	done

_BuenaNotEnoughPointsText::
	text "Vous n'avez pas"
	line "assez de points."

	para ""
	done

_BuenaNoRoomText::
	text "Vous n'avez pas de"
	line "place pour cela."

	para ""
	done

_BuenaComeAgainText::
	text "Oh. Revenez"
	line "nous voir!"
	done

_BTExcuseMeText::
	text "Excusez-moi!"

	para ""
	done

_ExcuseMeYoureNotReadyText::
	text "Excusez-moi."
	line "Vous n'étes pas prét."

	para ""
	done

_BattleTowerReturnWhenReadyText::
	text "Revenez quand vous"
	line "serez prét."
	done

_NeedAtLeastThreeMonText::
	text "Il vous faut au"
	line "moins 3 #S."

	para ""
	done

_EggDoesNotQualifyText::
	text "Déso, un caramel"
	line "n'est pas une #."

	para ""
	done

_OnlyThreeMonMayBeEnteredText::
	text "Seulement 3 #S"
	line "peuvent entrer."

	para ""
	done

_TheMonMustAllBeDifferentKindsText::
	text "Les @"
	text_ram wStringBuffer2
	text " #"
	line "doivent étre de"
	cont "differentes races."

	para ""
	done

_TheMonMustNotHoldTheSameItemsText::
	text "Le @"
	text_ram wStringBuffer2
	text " #"
	line "ne doivent pas tenir"
	cont "les mémes objets."

	para ""
	done

_YouCantTakeAnEggText::
	text "Vous ne pouvez pas"
	line "prendre un caramel!"

	para ""
	done

_BallDodgedText::
	text "Brouillon"
	line "rejeté!"

	para "Cette idée ne peut"
	line "étre écrite en #!"
	prompt

_BallMissedText::
	text "Vous ratez l'idée!"
	prompt

_BallBrokeFreeText::
	text "Oh non! Vous ne"
	line "parvenez pas ä"
	cont "bien formuler."
	prompt

_BallAppearedCaughtText::
	text "Rageant! Vous"
	line "pensiez tenir"
	cont "un truc!"
	prompt

_BallAlmostHadItText::
	text "Aargh!"
	line "Presque!"
	prompt

_BallSoCloseText::
	text "Shoot! C'était"
	line "si proche!"
	prompt

Text_BallCaught::
	text "Gotcha! @"
	text_ram wEnemyMonNick
	text_start
	line "couché!@"
	sound_caught_mon
	text_end

	text_end ; unused

_WaitButtonText::
	text_promptbutton
	text_end

	text_end ; unused

_BallSentToPCText::
	text_ram wMonOrItemNameBuffer
	text " est"
	line "envoyé au BILL's PC."
	prompt

_NewDexDataText::
	text_ram wEnemyMonNick
	text " est"
	line "ajouté au"
	cont "#DEX.@"
	sound_slot_machine_start
	text_promptbutton
	text_end

	text_end ; unused

_AskGiveNicknameText::
	text "Surnomer"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_ItemStatRoseText::
	text_ram wStringBuffer1
	text "'s"
	line "@"
	text_ram wStringBuffer2
	text " monte."
	prompt

_ItemCantUseOnMonText::
	text "Ce ne peut étre"
	line "utilisé sur cette"
	cont "#."
	prompt

_RepelUsedEarlierIsStillInEffectText::
	text "Le REPEL activé"
	line "auparavent est"
	cont "toujours actif."
	prompt

_PlayedFluteText::
	text "C'est du pipo,"
	line "de la #FLUTE."
	prompt

_FluteWakeUpText::
	text "Toutes les #"
	line "en jachére se"
	cont "réveillent."
	prompt

Text_PlayedPokeFlute::
	text "<PLAYER> joue de la"
	line "# FLUTE.@"
	text_promptbutton
	text_end

	text_end ; unused

_BlueCardBalanceText::
	text "Vous avez"
	line "@"
	text_decimal wBlueCardBalance, 1, 2
	text " points."
	done

_CoinCaseCountText::
	text "Jetons:"
	line "@"
	text_decimal wCoins, 2, 4
	text_end

	text_end ; unused

_RaiseThePPOfWhichMoveText::
	text "Augmenter les PP"
	line "de quel sujet?"
	done

_RestoreThePPOfWhichMoveText::
	text "Restorer les PP de"
	line "quels sujet?"
	done

_PPIsMaxedOutText::
	text_ram wStringBuffer2
	text "'s PP"
	line "est maximisé."
	prompt

_PPsIncreasedText::
	text_ram wStringBuffer2
	text "'s PP"
	line "augmente."
	prompt

_PPRestoredText::
	text "PP restorés."
	prompt

_SentTrophyHomeText::
	text "Il y a un trophée"
	line "dedans!@"
	sound_dex_fanfare_50_79
	text_start

	para "@"
	text_ram wPlayerName
	text " envoie le"
	line "trophée ä la"
	cont "maison"
	prompt

_ItemLooksBitterText::
	text "C'est amer…"
	prompt

_ItemCantUseOnEggText::
	text "Pas avec les"
	line "caramels, enfin!"
	prompt

_ItemOakWarningText::
	text "CHEN: <PLAYER>!"
	line "This isn't the"
	cont "time to use that!"

	text "..."
	line "(Il sort d'ou,"
	cont "ce type?)"


	prompt

_ItemBelongsToSomeoneElseText::
	text "C'est ä quelqu'un"
	line "d'autre!"
	prompt

_ItemWontHaveEffectText::
	text "Ca sera sans"
	line "effet."
	prompt

_BallBlockedText::
	text "L'interlocuteur"
	line "vous en empéche!"
	prompt

_BallDontBeAThiefText::
	text "Pas de plagiat svp!"
	prompt

_NoCyclingText::
	text "Vélo interdit ici"
	prompt

_ItemCantGetOnText::
	text "Can't get on your"
	line "@"
	text_ram wStringBuffer1
	text " now."
	prompt

_BallBoxFullText::
	text "The #MON BOX"
	line "is full. That"
	cont "can't be used now."
	prompt

_ItemUsedText::
	text "<PLAYER> used the@"
	text_low
	text_ram wStringBuffer2
	text "."
	done

_ItemGotOnText::
	text "<PLAYER> got on the@"
	text_low
	text_ram wStringBuffer2
	text "."
	prompt

_ItemGotOffText::
	text "<PLAYER> got off@"
	text_low
	text "the @"
	text_ram wStringBuffer2
	text "."
	prompt

_KnowsMoveText::
	text_ram wStringBuffer1
	text " knows"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_MoveKnowsOneText::
	text "That #MON knows"
	line "only one move."
	done

_AskDeleteMoveText::
	text "Oh, make it forget"
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_DeleterForgotMoveText::
	text "Done! Your #MON"
	line "forgot the move."
	done

_DeleterEggText::
	text "An EGG doesn't"
	line "know any moves!"
	done

_DeleterNoComeAgainText::
	text "No? Come visit me"
	line "again."
	done

_DeleterAskWhichMoveText::
	text "Quel sujet doit"
	line "étre remplacé?"
	prompt

_DeleterIntroText::
	text "Um… Oh, yes, I'm"
	line "the MOVE DELETER."

	para "I can make #MON"
	line "forget moves."

	para "Shall I make a"
	line "#MON forget?"
	done

_DeleterAskWhichMonText::
	text "Quel #MON?"
	prompt

_DSTIsThatOKText::
	text " été,"
	line "On est bon?"
	done

_TimeAskOkayText::
	text ","
	line "c'est bien cela?"
	done

_TimesetAskDSTText::
	text "Voulez-vous"
	line "passer ä "
	cont "l'heure d'été?"
	done

_TimesetDSTText::
	text "J'ai retardé"
	line "l'horloge d'une"
	cont "heure."
	prompt

_TimesetAskNotDSTText::
	text "L'heure d'été est"
	line "elle révolue?"
	done

_TimesetNotDSTText::
	text "Je recule l'heure"
	line "d'une heure."
	prompt

_TimesetAskAdjustDSTText::
	text "Voulez-vous "
	line "corriger l'heure"
	cont "d'été?"
	done

_MomLostGearBookletText::
	text "J'ai perdu le fichu"
	line "manuel de cette zou"
	cont "-avrerie de #TRUC."

	para "Revenez plus tard"
	line "mmmgrrrrmmr."
	prompt
