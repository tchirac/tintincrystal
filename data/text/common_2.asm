_NoPhotoText::
	text "Oh, no picture?"
	line "Come again, OK?"
	done

_EggPhotoText::
	text "Un caramel mou,"
	line "vraiement ??"
	done

_NameRaterHelloText::
	text "Hello, hello! I'm"
	line "the NAME RATER."

	para "I rate the names"
	line "of #MON."

	para "Would you like me"
	line "to rate names?"
	done

_NameRaterWhichMonText::
	text "Which #MON's"
	line "nickname should I"
	cont "rate for you?"
	prompt

_NameRaterBetterNameText::
	text "Hm… @"
	text_ram wStringBuffer1
	text "…"
	line "That's a fairly"
	cont "decent name."

	para "But, how about a"
	line "slightly better"
	cont "nickname?"

	para "Want me to give it"
	line "a better name?"
	done

_NameRaterWhatNameText::
	text "All right. What"
	line "name should we"
	cont "give it, then?"
	prompt

_NameRaterFinishedText::
	text "That's a better"
	line "name than before!"

	para "Well done!"
	done

_NameRaterComeAgainText::
	text "OK, then. Come"
	line "again sometime."
	done

_NameRaterPerfectNameText::
	text "Hm… @"
	text_ram wStringBuffer1
	text "?"
	line "What a great name!"
	cont "It's perfect."

	para "Treat @"
	text_ram wStringBuffer1
	text_start
	line "with loving care."
	done

_NameRaterEggText::
	text "Whoa… That's just"
	line "an EGG."
	done

_NameRaterSameNameText::
	text "It might look the"
	line "same as before,"

	para "but this new name"
	line "is much better!"

	para "Well done!"
	done

_NameRaterNamedText::
	text "All right. This"
	line "#MON is now"
	cont "named @"
	text_ram wStringBuffer1
	text "."
	prompt

Text_Gained::
	text_ram wStringBuffer1
	text " prend@"
	text_end

_BoostedExpPointsText::
	text_start
	line "-musérement de"
	cont "@"
	text_decimal wStringBuffer2, 2, 4
	text " lignes!"
	prompt

_ExpPointsText::
	text_start
	line "@"
	text_decimal wStringBuffer2, 2, 4
	text " lignes!"
	prompt

Text_GoMon::
	text "Go! @"
	text_end

Text_DoItMon::
	text "Allé! @"
	text_end

Text_GoForItMon::
	text "Allons,"
	line "@"
	text_end

Text_YourFoesWeakGetmMon::
	text "Achéve-moi ca!"
	line "@"
	text_end

_BattleMonNicknameText::
	text_ram wBattleMonNick
	text "!"
	done

Text_BattleMonNickComma::
	text_ram wBattleMonNick
	text ",@"
	text_end

_ThatsEnoughComeBackText::
	text " il"
	line "suffit! Je range!@"
	text_end

_OKComeBackText::
	text " Ok!"
	line "On change!@"
	text_end

_GoodComeBackText::
	text " bon!"
	line "on change!@"
	text_end

_ComeBackText::
	text " allé"
	line "on change!"
	done

_BootedTMText::
	text "Booted up a CT."
	prompt

_BootedHMText::
	text "Booted up an HM."
	prompt

_ContainedMoveText::
	text "Elle contient"
	line "@"
	text_ram wStringBuffer2
	text "."

	para "inclure @"
	text_ram wStringBuffer2
	text_start
	line "to a #MON?"
	done

_TMHMNotCompatibleText::
	text_ram wStringBuffer2
	text " n'est"
	line "pas compatible"
	cont "avec @"
	text_ram wStringBuffer1
	text "."

	para "Il ne peut inclure"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_NoRoomTMHMText::
	text "Plus de place"
	line "pour plus de"
	cont "@"
	text_ram wStringBuffer1
	text "S."
	prompt

_ReceivedTMHMText::
	text "Vous recevez"
	line "@"
	text_ram wStringBuffer1
	text "!"
	prompt

_MysteryGiftCanceledText::
	text "Le lien est"
	line "perdu."
	prompt

_MysteryGiftCommErrorText::
	text "Erreur de"
	line "communication."
	prompt

_RetrieveMysteryGiftText::
	text "Must retrieve GIFT"
	line "at #MON CENTER."
	prompt

_YourFriendIsNotReadyText::
	text "Votre ami n'est"
	line "pas prét."
	prompt

_MysteryGiftFiveADayText::
	text "Déso, seulement"
	line "5 GIFTS p/jour."
	prompt

_MysteryGiftOneADayText::
	text "Sorry. One GIFT"
	line "a day per person."
	prompt

_MysteryGiftSentText::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MysteryGiftSentHomeText::
	text_ram wMysteryGiftPartnerName
	text " sent"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "to @"
	text_ram wMysteryGiftPlayerName
	text "'s home."
	prompt

_MysteryGiftReceivedCardText::
	text "Recue:"
	line "@"
	text_ram wc850
	text "'s CARD."
	prompt

_MysteryGiftListedCardText::
	text_ram wc850
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wDeciramBuffer, 1, 2
	text "."
	prompt

_MysteryGiftNotRegisteredCardText::
	text "The CARD was not"
	line "registered."
	prompt

_MysteryGiftLinkCancelledText::
	text "The link has been"
	line "cancelled."
	prompt

_MysteryGiftLinkCommErrorText::
	text "Communication"
	line "error."
	prompt

_BadgeRequiredText::
	text "Sorry! A new BADGE"
	line "is required."
	prompt

_CantUseItemText::
	text "Can't use that"
	line "here."
	prompt

_UseCutText::
	text_ram wStringBuffer2
	text " a"
	line "coupé l'écha-"
	cont "lotte en 4!"
	prompt

_CutNothingText::
	text "Il n'y a rien ä"
	line "couper ici."
	prompt

_BlindingFlashText::
	text "Un FLASH puissant"
	line "illumine les"
	cont "environs!@"
	text_promptbutton
	text_end

	text_end ; unused

_UsedSurfText::
	text_ram wStringBuffer2
	text " se met au"
	line "SURF!"
	done

_CantSurfText::
	text "Pas de SURF"
	line "ici svp."
	prompt

_AlreadySurfingText::
	text "Vous surfez déjä"
	line "scolopendre!"
	prompt

_AskSurfText::
	text "L'eau est calme."
	line "Un coup de SURF?"
	done

_UseWaterfallText::
	text_ram wStringBuffer2
	text " remonte la"
	line "CASCADE!"
	done

_HugeWaterfallText::
	text "Wow, c'est une"
	line "grande cascade."
	done

_AskWaterfallText::
	text "Remonter la"
	line "cascade?"
	done

_UseDigText::
	text_ram wStringBuffer2
	text " se met ä"
	line "CREUSER!"
	done

_UseEscapeRopeText::
	text "<PLAYER> prend"
	line "la poudre"
	cont "d'escampette!"
	done

_CantUseDigText::
	text "On ne creuse pas"
	line "ici, enfin!"
	done

_TeleportReturnText::
	text "Retournez aux"
	line "PTT."
	done

_CantUseTeleportText::
	text "Pas de teleport"
	line "ici svp."

	para ""
	done

_AlreadyUsingStrengthText::
	text "Vos biceps sont"
	line "déjä au top!"
	prompt

_UseStrengthText::
	text_ram wStringBuffer2
	text " prend"
	line "des prot's!"
	done

_MoveBoulderText::
	text_ram wStringBuffer1
	text " peut"
	line "bouger les"
	cont "rochers."
	prompt

_AskStrengthText::
	text "Avec un peu de"
	line "volonté, on peut"
	cont "déplacer les"

	para "montagnes, pas"
	line "vrai?"
	done

_BouldersMoveText::
	text "Vous pouvez"
	line "bouger les"
	cont "rochers!"
	done

_BouldersMayMoveText::
	text "A #MON may be"
	line "able to move this."
	done

_UseWhirlpoolText::
	text_ram wStringBuffer2
	text " fait"
	line "une cascade!"
	prompt

_MayPassWhirlpoolText::
	text "It's a vicious"
	line "whirlpool!"

	para "A #MON may be"
	line "able to pass it."
	done

_AskWhirlpoolText::
	text "A whirlpool is in"
	line "the way."

	para "Want to use"
	line "WHIRLPOOL?"
	done

_UseHeadbuttText::
	text_ram wStringBuffer2
	text " met"
	line "un ZinedineZ"
	prompt

_HeadbuttNothingText::
	text "Nope. Rien…"
	done

_AskHeadbuttText::
	text "Une inspi pour-"
	line "rait étre dans"
	cont "cet arbre."

	para "Donner un coup"
	line "de boule?"
	done

_UseRockSmashText::
	text_ram wStringBuffer2
	text " used"
	line "ROCK SMASH!"
	prompt

_MaySmashText::
	text "Maybe a #MON"
	line "can break this."
	done

_AskRockSmashText::
	text "Ce rock est"
	line "cassable."

	para "Casser le"
	line "rocher?"
	done

_RodBiteText::
	text "Oh!"
	line "Ca mord!"
	prompt

_RodNothingText::
	text "Mer d'huile!"
	prompt

; unused
_UnusedNothingHereText::
	text "On dirait que"
	line "c'est chiant ä"
	cont "mourir, ici."
	prompt

_CantGetOffBikeText::
	text "Vous ne pouvez"
	line "pas descendre!"
	done

_GotOnBikeText::
	text "<PLAYER> enfourche"
	line "le @"
	text_ram wStringBuffer2
	text "."
	done

_GotOffBikeText::
	text "<PLAYER> descend"
	line "du @"
	text_ram wStringBuffer2
	text "."
	done

_AskCutText::
	text "On peut couper"
	line "le poireau en 2."

	para "Le faire ?"
	done

_CanCutText::
	text "Ce poireau"
	line "semble solide!"
	done

_FoundItemText::
	text "<PLAYER> trouve"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_CantCarryItemText::
	text "Mais <PLAYER> est"
	line "trop gringalet"

	para "pour le poids"
	line "du sac."
	done

_WhitedOutText::
	text "<PLAYER> n'a"
	line "plus d'arguments!"

	para "<PLAYER> court ä"
	line "la poste et s'en"
	cont "fait jeter."
	done

_ItemfinderItemNearbyText::
	text "Oh! Le cherche-"
	line "-objet détecte"
	cont "un truc!"
	prompt

_ItemfinderNopeText::
	text "Nope! Rien dans"
	line "les environs."
	prompt

_PoisonFaintText::
	text_ram wStringBuffer3
	text_start
	line "laisse tomber!"
	prompt

_PoisonWhiteoutText::
	text "<PLAYER> n'a plus"
	line "d'arguments!"

	para "<PLAYER> court ä"
	line "la poste et s'en"
	cont "fait jeter."
	prompt

_UseSweetScentText::
	text_ram wStringBuffer3
	text " utilise"
	line "SWEET SCENT!"
	done

_SweetScentNothingText::
	text "On dirait qu'il"
	line "n'y a rien ici…"
	done

_SquirtbottleNothingText::
	text "<PLAYER> épanche"
	line "partout."

	para "Mais rien ne"
	line "se passe…"
	done

_UseSacredAshText::
	text "Mes #MON"
	line "sont de super"
	cont "brouillons!"
	done

_AnEggCantHoldAnItemText::
	text "C'est un caramel"
	line "mou, voyons!"
	prompt

_PackNoItemText::
	text "Pas d'objet."
	done

_AskThrowAwayText::
	text "Jeter"
	line "combien?"
	done

_AskQuantityThrowAwayText::
	text "Jeter @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

_ThrewAwayText::
	text "Jéte"
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_OakThisIsntTheTimeText::
	text "<PLAYER>!"
	line "Si le PROF.CHEN"
	cont "nous voyait…"
	prompt

_YouDontHaveAMonText::
	text "Vous n'avez pas"
	line "de #MON!"
	prompt

_RegisteredItemText::
	text "Enregostre le"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_CantRegisterText::
	text "Vous ne pouvez"
	line "enregister ca."
	prompt

_AskItemMoveText::
	text "Ou déplacer"
	line "ceci?"
	done

_PackEmptyText::
	text_start
	done

_YouCantUseItInABattleText::
	text "Vous ne pouvez"
	line "utiliser ca en"
	cont "bossant."
	prompt

_AreYouABoyOrAreYouAGirlText::
	text "Etes-vous Tintin?"
	done

Text_BattleEffectActivate::
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

_BattleStatWentWayUpText::
	text_pause
	text "<SCROLL>augmente"
	cont "ä fond!"
	prompt

_BattleStatWentUpText::
	text " augmente!"
	prompt

Text_BattleFoeEffectActivate::
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

_BattleStatSharplyFellText::
	text_pause
	text "<SCROLL>sharply fell!"
	prompt

_BattleStatFellText::
	text " baisse!"
	prompt

Text_BattleUser::
	text "<USER>@"
	text_end

_BattleMadeWhirlwindText::
	text_start
	line "fait une tornade!"
	prompt

_BattleTookSunlightText::
	text_start
	line "prend le soleil!"
	prompt

_BattleLoweredHeadText::
	text_start
	line "baisse sa tête!"
	prompt

_BattleGlowingText::
	text_start
	line "brille!"
	prompt

_BattleFlewText::
	text_start
	line "s'envole!"
	prompt

_BattleDugText::
	text_start
	line "creuse un trou!"
	prompt

_ActorNameText::
	text "<USER>@"
	text_end

_UsedMove1Text::
	text_start
	line "aborde"
	cont "@"
	text_end

_UsedMove2Text::
	text_start
	line "used @"
	text_end

_UsedInsteadText::
	text "plutot,"
	cont "@"
	text_end

_MoveNameText::
	text_ram wStringBuffer2
	text_end

	text_end ; unused

_EndUsedMove1Text::
	text "!"
	done

_EndUsedMove2Text::
	text "!"
	done

_EndUsedMove3Text::
	text "!"
	done

_EndUsedMove4Text::
	text "!"
	done

_EndUsedMove5Text::
	text "!"
	done

Text_BreedHuh::
	text "Oh?"

	para "@"
	text_end

_BreedClearboxText::
	text_start
	done

_BreedEggHatchText::
	text_ram wStringBuffer1
	text " vient"
	line "du caramel mou!@"
	sound_caught_mon
	text_promptbutton
	text_end

	text_end ; unused

_BreedAskNicknameText::
	text "Renommer "
	line "@"
	text_ram wStringBuffer1
	text "?"
	done

_LeftWithDayCareLadyText::
	text "C'est @"
	text_ram wBreedMon2Nick
	text_start
	line "laissé ä la dame"
	cont "de la garderie."
	done

_LeftWithDayCareManText::
	text "C'est @"
	text_ram wBreedMon1Nick
	text_start
	line "laissé au bougre"
	cont "de la garderie."
	done

_BreedBrimmingWithEnergyText::
	text "Ca déborde"
	line "d'énergie."
	prompt

_BreedNoInterestText::
	text "Rien ä voir"
	line "avec @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedAppearsToCareForText::
	text "Il y a un semblant"
	line "avec @"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedFriendlyText::
	text "It's friendly with"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BreedShowsInterestText::
	text "C'est trés compa"
	line "-tible avec"
	cont "in @"
	text_ram wStringBuffer1
	text "."
	prompt

_EmptyMailboxText::
	text "Pas de courier"
	line "ici."
	prompt

_MailClearedPutAwayText::
	text "The cleared MAIL"
	line "was put away."
	prompt

_MailPackFullText::
	text "Le sac est plein."
	prompt

_MailMessageLostText::
	text "The MAIL's message"
	line "will be lost. OK?"
	done

_MailAlreadyHoldingItemText::
	text "Il y a déjä un"
	line "objet attaché."
	prompt

_MailEggText::
	text "Impossible pour"
	line "ce caramel."
	prompt

_MailMovedFromBoxText::
	text "The MAIL was moved"
	line "from the MAILBOX."
	prompt

; unused
_YesPromptText::
	text "Oui"
	prompt

; unused
_NoPromptText::
	text "Non"
	prompt

; unused
_AnimationTypeText::
	text_decimal wcf64, 1, 3
	text " @"
	text_ram wStringBuffer1
	text_start
	line "Animation type @"
	text_ram wStringBuffer2
	text_end

	text_end ; unused

; unused
_MonNumberText::
	text "no. de #?"
	done

_WasSentToBillsPCText::
	text_ram wStringBuffer1
	text " est"
	line "envoyé sur le cloud."
	prompt

_PCGottaHavePokemonText::
	text "Il vous faut"
	line "un moins 1 #!"
	prompt

_PCWhatText::
	text "Comment?"
	done

_PCMonHoldingMailText::
	text "There is a #MON"
	line "holding MAIL."

	para "Please remove the"
	line "MAIL."
	prompt

_PCNoSingleMonText::
	text "Vous n'avez pas "
	line "une seule #!"
	prompt

_PCCantDepositLastMonText::
	text "Vous devez bosser"
	line "un # au moins!"
	prompt

_PCCantTakeText::
	text "Vous ne pourrez"
	line "pas bosser tant."
	prompt

_ContestCaughtMonText::
	text "@"
	text_ram wStringBuffer1
	text "fera un bon"
	line "article!"
	prompt

_ContestAskSwitchText::
	text "Changer de #?"
	done

_ContestAlreadyCaughtText::
	text "Vous avez déjä"
	line "un @"
	text_ram wStringBuffer1
	text "."
	prompt

_ContestJudging_FirstPlaceText::
	text "This Bug-Catching"
	line "Contest winner is@"
	text_pause
	text "…"

	para "@"
	text_ram wBugContestWinnerName
	text ","
	line "who caught a"
	cont "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_FirstPlaceScoreText::
	text_start

	para "The winning score"
	line "was @"
	text_decimal wBugContestFirstPlaceScore, 2, 3
	text " points!"
	prompt

_ContestJudging_SecondPlaceText::
	text "Placing second was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_SecondPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestSecondPlaceScore, 2, 3
	text " points!"
	prompt

_ContestJudging_ThirdPlaceText::
	text "Placing third was"
	line "@"
	text_ram wBugContestWinnerName
	text ","

	para "who caught a"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	text_end

_ContestJudging_ThirdPlaceScoreText::
	text_start

	para "The score was"
	line "@"
	text_decimal wBugContestThirdPlaceScore, 2, 3
	text " points!"
	prompt

_MagikarpGuruMeasureText::
	text "Laisse moi tater"
	line "ce Magicastafiore."

	para "…Hm, it measures"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_KarpGuruRecordText::
	text "CURRENT RECORD"

	para "@"
	text_ram wStringBuffer1
	text " caught by"
	line "@"
	text_ram wMagikarpRecordHoldersName
	text_promptbutton
	text_end

	text_end ; unused

_LuckyNumberMatchPartyText::
	text "Félicitations!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your party."
	prompt

_LuckyNumberMatchPCText::
	text "Félicitation!"

	para "We have a match"
	line "with the ID number"

	para "of @"
	text_ram wStringBuffer1
	text " in"
	line "your PC BOX."
	prompt

_CaughtAskNicknameText::
	text "Renommer"
	line "le @"
	text_ram wStringBuffer1
	text ""
	cont "recu?"
	done

_PokecenterPCCantUseText::
	text "Ecris au moins"
	line "une once de"
	cont "brouillon, déjä!"
	prompt

_PlayersPCTurnOnText::
	text "<PLAYER> allume"
	line "le PC."
	prompt

_PlayersPCAskWhatDoText::
	text "Que voulez"
	line "vous faire?"
	done

_PlayersPCHowManyWithdrawText::
	text "Combien voulez-vous"
	line "retirer?"
	done

_PlayersPCWithdrewItemsText::
	text "Retiré @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomWithdrawText::
	text "Il n'y a plus de"
	line "place dans le sac."
	prompt

_PlayersPCNoItemsText::
	text "Pas d'objet ici!"
	prompt

_PlayersPCHowManyDepositText::
	text "Déposer"
	line "combien?"
	done

_PlayersPCDepositItemsText::
	text "Déposés @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)."
	prompt

_PlayersPCNoRoomDepositText::
	text "Plus de place pour"
	line "stocker."
	prompt

_PokecenterPCTurnOnText::
	text "<PLAYER> allume"
	line "le PC."
	prompt

_PokecenterPCWhoseText::
	text "Acceder ä quel PC?"
	done

_PokecenterBillsPCText::
	text "Drafts"
	line "ouvert."

	para "Dossier rempli"
	line "de #S."
	prompt

_PokecenterPlayersPCText::
	text "Acces dossier"
	line "perso."

	prompt

_PokecenterOaksPCText::
	text "Slack"
	line "ouvert."

	para "Pour parler au"
	line "redac'chef."
	prompt

_PokecenterPCOaksClosedText::
	text "…"
	line "Link closed…"
	done

_OakPCText1::
	text "Voulez-vous vous"
	line "faire roast?"
	done

_OakPCText2::
	text "<PLAYER>?"
	line "Que voulez-vous?"
	prompt

_OakPCText3::
	text_ram wStringBuffer3
	text " idées,"
	line "@"
	text_ram wStringBuffer4
	text " #S en cours?"
	done

_OakRating01::
	text "Bon sang! Sortez-"
	line "-vous les doigts,"
	line "mon vieux!"
	done

_OakRating02::
	text "Bon. On va dire"
	line "que c'est déjä"
	cont "ca. Allez, feu!"
	done

_OakRating03::
	text "Vous patinez!"
	line "Secouez-vous,"

	para "que diable! Les"
	line "expéditions ne"

	para "se financent pas"
	line "toutes seules!"
	done

_OakRating04::
	text "You need to fill"
	line "up the #DEX."

	para "Catch different"
	line "kinds of #MON!"
	done

_OakRating05::
	text "You're trying--I"
	line "can see that."

	para "Your #DEX is"
	line "coming together."
	done

_OakRating06::
	text "To evolve, some"
	line "#MON grow,"

	para "others use the"
	line "effects of STONES."
	done

_OakRating07::
	text "Avez-vous essayé"
	line "la péche? Ca"

	para "pourrait vous"
	line "inspirer."
	done

_OakRating08::
	text "Excellent! You"
	line "seem to like col-"
	cont "lecting things!"
	done

_OakRating09::
	text "Some #MON only"
	line "appear during"

	para "certain times of"
	line "the day."
	done

_OakRating10::
	text "Your #DEX is"
	line "filling up. Keep"
	cont "up the good work!"
	done

_OakRating11::
	text "I'm impressed."
	line "You're evolving"

	para "#MON, not just"
	line "catching them."
	done

_OakRating12::
	text "Have you met KURT?"
	line "His custom BALLS"
	cont "should help."
	done

_OakRating13::
	text "Wow. You've found"
	line "more #MON than"

	para "the last #DEX"
	line "research project."
	done

_OakRating14::
	text "Are you trading"
	line "your #MON?"

	para "It's tough to do"
	line "this alone!"
	done

_OakRating15::
	text "Wow! You've hit"
	line "200! Your #DEX"
	cont "is looking great!"
	done

_OakRating16::
	text "You've found so"
	line "many #MON!"

	para "You've really"
	line "helped my studies!"
	done

_OakRating17::
	text "Magnificent! You"
	line "could become a"

	para "#MON professor"
	line "right now!"
	done

_OakRating18::
	text "Your #DEX is"
	line "amazing! You're"

	para "ready to turn"
	line "professional!"
	done

_OakRating19::
	text "Whoa! A perfect"
	line "#DEX! I've"

	para "dreamt about this!"
	line "Congratulations!"
	done

_OakPCText4::
	text "Déconnexion de"
	line "Slack."
	done

; unused
_TrainerRankingExplanationText::
	text "Triple-theme"
	line "trainer ranking!"

	para "The SAVE file you"
	line "just sent might"
	cont "make the rankings!"

	para ""
	done

; unused
_TrainerRankingNoDataText::
	text "There is no"
	line "ranking data."

	para "Link to obtain"
	line "ranking data."

	para ""
	done

_DummyGameYeahText::
	text " , yeah!"
	done

_DummyGameDarnText::
	text "Darn…"
	done

_StartMenuContestEndText::
	text "Would you like to"
	line "end the Contest?"
	done

_ItemsTossOutHowManyText::
	text "Jeter combien de"
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

_ItemsThrowAwayText::
	text "Jeter @"
	text_decimal wItemQuantityChangeBuffer, 1, 2
	text_start
	line "@"
	text_ram wStringBuffer2
	text "(S)?"
	done

_ItemsDiscardedText::
	text "Jeté:"
	line "@"
	text_ram wStringBuffer1
	text "(S)."
	prompt

_ItemsTooImportantText::
	text "C'est trop impor"
	line "tant pour être"
	cont "jeté!"
	prompt

_ItemsOakWarningText::
	text "<PLAYER>!"
	line "Si le PROK.CHEN"
	cont "nous voyait!"
	done

_PokemonSwapItemText::
	text "Pris @"
	text_ram wMonOrItemNameBuffer
	text " ä "
	line "@"
	text_ram wStringBuffer1
	text " et"

	para "attache"
	line "@"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonHoldItemText::
	text "@"
	text_ram wMonOrItemNameBuffer
	text_start
	line "tient @"
	text_ram wStringBuffer2
	text "."
	prompt

_PokemonRemoveMailText::
	text "Please remove the"
	line "MAIL first."
	prompt

_PokemonNotHoldingText::
	text_ram wMonOrItemNameBuffer
	text " n'a"
	line "rien d'attaché."
	prompt

_ItemStorageFullText::
	text "Poche objet"
	line "pleine."
	prompt

_PokemonTookItemText::
	text "Took @"
	text_ram wStringBuffer1
	text_start
	line "from @"
	text_ram wMonOrItemNameBuffer
	text "."
	prompt

_PokemonAskSwapItemText::
	text_ram wMonOrItemNameBuffer
	text " "
	line "a déjä"

	para "@"
	text_ram wStringBuffer1
	text "."
	line "Echanger objets?"
	done

_ItemCantHeldText::
	text "Cet objet ne peut"
	line "étre tromboné."
	prompt

_MailLoseMessageText::
	text "The MAIL will lose"
	line "its message. OK?"
	done

_MailDetachedText::
	text "MAIL detached from"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_MailNoSpaceText::
	text "There's no space"
	line "for removing MAIL."
	prompt

_MailAskSendToPCText::
	text "Send the removed"
	line "MAIL to your PC?"
	done

_MailboxFullText::
	text "Your PC's MAILBOX"
	line "is full."
	prompt

_MailSentToPCText::
	text "The MAIL was sent"
	line "to your PC."
	prompt

_PokemonNotEnoughHPText::
	text "Not enough HP!"
	prompt

_MayRegisterItemText::
	text "An item in your"
	line "PACK may be"

	para "registered for use"
	line "on SELECT Button."
	done

_OakText1::
	text "Ici la rédaction"
	line "du petit 20e."

	para "J'espére que je ne"
	line "vous dérange pas!"

	para "Cela commence ä"
	line "faire un moment"
	cont "que vous n'avez"

	para "pas pondu un "
	line "article digne "
	cont "de ce nom!"

	para "Remédiez ä cela"
	line "je vous prie."
	prompt

_OakText2::
	text "Peut-étre que "
	line "votre ami le "
	cont "capitaine peut"
	cont "vous aider ä "
	cont "retrouver"
	cont "l'inspiration…@"
	text_end

_OakText3::
	text_promptbutton
	text_end

	text_end ; unused

_OakText4::
	text "Il a sale "
	line "caractére, mais"
	cont "bon fond."

	para "S'il peut au moins"
	line "vous motiver…"

	para "Gare ä sa tendance"
	line "alcoolique, "
	cont "néanmoins!"
	prompt

_OakText5::
	text "Je vous ai ä "
	line "l'oeil. "

	para "Milou ne mangera"
	line "pas votre "
	cont "exercice."

	para "Au boulot, "
	line "que diable!"
	prompt
