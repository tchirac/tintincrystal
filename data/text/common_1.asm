_FruitBearingTreeText::
	text "On dirait un"
	line "bougainvillier."
	done

_HeyItsFruitText::
	text "Hey! C'est une"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ObtainedFruitText::
	text "<PLAYER> cueille"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_FruitPackIsFullText::
	text "Mais le sac est"
	line "plein…"
	done

_NothingHereText::
	text "Il n'y a rien"
	line "ici…"
	done

_WhichApricornText::
	text "Quelle APRICORN"
	line "dois-je utiliser?"
	done

_HowManyShouldIMakeText::
	text "Combien dois-je"
	line "en faire?"
	done

_RecoveredSomeHPText::
	text_ram wStringBuffer1
	text_start
	line "recovered @"
	text_decimal wCurHPAnimDeltaHP, 2, 3
	text "HP!"
	done

_CuredOfPoisonText::
	text_ram wStringBuffer1
	text "'s"
	line "cured of poison."
	done

_RidOfParalysisText::
	text_ram wStringBuffer1
	text "'s"
	line "rid of paralysis."
	done

_BurnWasHealedText::
	text_ram wStringBuffer1
	text "'s"
	line "burn was healed."
	done

_WasDefrostedText::
	text_ram wStringBuffer1
	text_start
	line "was defrosted."
	done

_WokeUpText::
	text_ram wStringBuffer1
	text_start
	line "woke up."
	done

_HealthReturnedText::
	text_ram wStringBuffer1
	text "'s"
	line "health returned."
	done

_RevitalizedText::
	text_ram wStringBuffer1
	text_start
	line "is revitalized."
	done

_GrewToLevelText::
	text_ram wStringBuffer1
	text " grew to"
	line "level @"
	text_decimal wCurPartyLevel, 1, 3
	text "!@"
	sound_dex_fanfare_50_79 ; plays SFX_DEX_FANFARE_50_79, identical to SFX_LEVEL_UP
	text_promptbutton
	text_end

	text_end ; unused

_CameToItsSensesText::
	text_ram wStringBuffer1
	text " came"
	line "to its senses."
	done

_EnterNewPasscodeText::
	text "Please enter any"
	line "four-digit number."
	done

_ConfirmPasscodeText::
	text "Enter the same"
	line "number to confirm."
	done

_PasscodesNotSameText::
	text "That's not the"
	line "same number."
	done

_PasscodeSetText::
	text "Your PASSCODE has"
	line "been set."

	para "Enter this number"
	line "next time to open"
	cont "the CARD FOLDER."

	para ""
	done

_FourZerosInvalidText::
	text "0000 is invalid!"

	para ""
	done

_EnterPasscodeText::
	text "Enter the CARD"
	next "FOLDER PASSCODE."
	done

_IncorrectPasscodeText::
	text "Incorrect"
	line "PASSCODE!"

	para ""
	done

_CardFolderOpenText::
	text "CARD FOLDER open.@"
	text_end

_OakTimeWokeUpText::
	text "<……><……><……><……><……><……>"
	line "<……><……><……><……><……><……>"

	para "Zzz… Hm? Hmm…?"
	line "Sapristi!"

	para "Quelle heure"
	line "est-il?"
	prompt

_OakTimeWhatTimeIsItText::
	text "Heure?"
	done

_OakTimeWhatHoursText::
	text "Comment!?@"
	text_end

_OakTimeHoursQuestionMarkText::
	text "?"
	done

_OakTimeHowManyMinutesText::
	text "Combien de "
	line "minutes?"
	done

_OakTimeWhoaMinutesText::
	text "Quoi? @"
	text_end

_OakTimeMinutesQuestionMarkText::
	text "?"
	done

_OakTimeOversleptText::
	text "!"
	line "J'ai trop dormi!"
	done

_OakTimeYikesText::
	text "!!"
	line "Quel paresseux"
	cont "je fais!"
	done

_OakTimeSoDarkText::
	text " Ah!"
	line "Cela explique"
	cont "l'obscurité !"
	done

_OakTimeWhatDayIsItText::
	text "Quel jour"
	line "sommes-nous ?"
	done

_OakTimeIsItText::
	text ", n'est ce"
	line "pas?"
	done

; Mobile Adapter

UnknownText_0x1bc384::
	text "Il n'y a rien"
	line "de connecté."
	done

UnknownText_0x1bc3a1::
	text "Check cell phone"
	line "adapter."
	done

UnknownText_0x1bc3bc::
	text "Check CDMA"
	line "adapter."
	done

UnknownText_0x1bc3d1::
	text "Check DOCOMO PHS"
	line "adapter."
	done

UnknownText_0x1bc3ec::
	text "Check DDI PHS"
	line "adapter."
	done

UnknownText_0x1bc404::
	text "Check unlimited"
	line "battle mobile"
	cont "adapter."
	done

UnknownText_0x1bc42c::
	text "Mot de passe:"
	line ""
	done

UnknownText_0x1bc43f::
	text "Est-ce OK?"
	done

UnknownText_0x1bc44c::
	text "Entrez le"
	line "ID no."
	done

; Mobile Adapter End

UnknownText_0x1bc45e::
	text "Entrez la"
	line "quantité."
	done

_NothingToChooseText::
	text "Il n'y a rien"
	line "ä choisir."
	prompt

_WhichSidePutOnText::
	text "De quel côté"
	line "le mettre?"
	done

_WhichSidePutAwayText::
	text "De quelle côté"
	line "le ranger?"
	done

_PutAwayTheDecoText::
	text "Ranger le"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_NothingToPutAwayText::
	text "Il n'y a rien"
	line "ä ranger."
	prompt

_SetUpTheDecoText::
	text "Mettre le"
	line "@"
	text_ram wStringBuffer3
	text "."
	prompt

_PutAwayAndSetUpText::
	text "Ranger le"
	line "@"
	text_ram wStringBuffer3
	text_start

	para "et mettre the"
	line "@"
	text_ram wStringBuffer4
	text "."
	prompt

_AlreadySetUpText::
	text "C'est déjä"
	line "installé"
	prompt

_LookTownMapText::
	text "C'est la carte."
	done

_LookPikachuPosterText::
	text "C'est un poster"
	line "de Bianca"
	done

_LookClefairyPosterText::
	text "C'est un poster"
	line "de Nestor"
	done

_LookJigglypuffPosterText::
	text "C'est un poster"
	line "du Capitaine"
	done

_LookAdorableDecoText::
	text "It's an adorable"
	line "@"
	text_ram wStringBuffer3
	text "."
	done

_LookGiantDecoText::
	text "Une poupée gonflée"
	line "animomorphe."
	done

_MomHiHowAreYouText::
	text "<PLAYER>!!!!"
	line "Ca va mon garcon?"
	prompt

_MomFoundAnItemText::
	text "Je vous ai acheté"
	line "une surprise."
	prompt

_MomBoughtWithYourMoneyText::
	text "Je l'ai payée"
	line "avec votre argent."
	prompt

_MomItsInPCText::
	text "Récupérez-la"
	line "depuis un PC!"
	done

_MomFoundADollText::
	text "J'ai commandé une"
	line "poupée gonflable"
	cont "avec votre argent"
	prompt

_MomItsInYourRoomText::
	text "Elle est chez vous"
	line "Vous adorerez!"
	done

_MonWasSentToText::
	text_ram wPlayerTrademonSpeciesName
	text " was"
	line "sent to @"
	text_ram wOTTrademonSenderName
	text "."
	done

_MonNameSentToText::
	text_start
	done

_BidsFarewellToMonText::
	text_ram wOTTrademonSenderName
	text " bids"
	line "farewell to"
	done

_MonNameBidsFarewellText::
	text_ram wOTTrademonSpeciesName
	text "."
	done

_TakeGoodCareOfMonText::
	text "Prenez soin de"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_ForYourMonSendsText::
	text "For @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text ","
	done

_OTSendsText::
	text_ram wOTTrademonSenderName
	text " envoie"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_WillTradeText::
	text_ram wOTTrademonSenderName
	text " va"
	line "échanger @"
	text_ram wOTTrademonSpeciesName
	text_end

	text_end ; unused

_ForYourMonWillTradeText::
	text "for @"
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text "."
	done

_MobilePlayerWillTradeMonText::
	text_ram wPlayerTrademonSenderName
	text " will"
	line "trade @"
	text_ram wPlayerTrademonSpeciesName
	text_end

	text_end ; unused

_MobileForPartnersMonText::
	text "for @"
	text_ram wOTTrademonSenderName
	text "'s"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

; unused
_MobilePlayersMonTradeText::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

_MobileTakeGoodCareOfMonText::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobilePlayersMonTrade2Text::
	text_ram wPlayerTrademonSenderName
	text "'s"
	line "@"
	text_ram wPlayerTrademonSpeciesName
	text " trade…"
	done

_MobileTakeGoodCareOfText::
	text "Take good care of"
	line "@"
	text_ram wOTTrademonSpeciesName
	text "."
	done

_MobileTradeCameBackText::
	text_ram wOTTrademonSpeciesName
	text " est"
	line "revenu!"
	done

; Oak's Pokémon Talk

_OPT_IntroText1::
	text_start
	line "Bonjour, c'est"
	done

_OPT_IntroText2::
	text_start
	line "N. Sarkozylle,"
	done

_OPT_IntroText3::
	text_start
	line "et je vais vous"
	done

_OPT_OakText1::
	text_start
	line "lire le tonnerre"
;	line "de @"
;	text_ram wMonOrItemNameBuffer
	text_end

	text_end ; unused

_OPT_OakText2::
	text_start
	line "de Brest des "
	done

_OPT_OakText3::
	text_start
	line "tempétes." ;@"
;	text_ram wStringBuffer1
	text "."
	done

_OPT_MaryText1::
	text_start
	line "MARY: @"
	text_ram wStringBuffer1
	text "'s"
	done

_OPT_SweetAdorablyText::
	text_start
	line "sweet and adorably"
	done

_OPT_WigglySlicklyText::
	text_start
	line "wiggly and slickly"
	done

_OPT_AptlyNamedText::
	text_start
	line "aptly named and"
	done

_OPT_UndeniablyKindOfText::
	text_start
	line "undeniably kind of"
	done

_OPT_UnbearablyText::
	text_start
	line "so, so unbearably"
	done

_OPT_WowImpressivelyText::
	text_start
	line "wow, impressively"
	done

_OPT_AlmostPoisonouslyText::
	text_start
	line "almost poisonously"
	done

_OPT_SensuallyText::
	text_start
	line "ooh, so sensually"
	done

_OPT_MischievouslyText::
	text_start
	line "so mischievously"
	done

_OPT_TopicallyText::
	text_start
	line "so very topically"
	done

_OPT_AddictivelyText::
	text_start
	line "sure addictively"
	done

_OPT_LooksInWaterText::
	text_start
	line "looks in water is"
	done

_OPT_EvolutionMustBeText::
	text_start
	line "evolution must be"
	done

_OPT_ProvocativelyText::
	text_start
	line "provocatively"
	done

_OPT_FlippedOutText::
	text_start
	line "so flipped out and"
	done

_OPT_HeartMeltinglyText::
	text_start
	line "heart-meltingly"
	done

_OPT_CuteText::
	text_start
	line "cute."
	done

_OPT_WeirdText::
	text_start
	line "weird."
	done

_OPT_PleasantText::
	text_start
	line "pleasant."
	done

_OPT_BoldSortOfText::
	text_start
	line "bold, sort of."
	done

_OPT_FrighteningText::
	text_start
	line "frightening."
	done

_OPT_SuaveDebonairText::
	text_start
	line "suave & debonair!"
	done

_OPT_PowerfulText::
	text_start
	line "powerful."
	done

_OPT_ExcitingText::
	text_start
	line "exciting."
	done

_OPT_GroovyText::
	text_start
	line "groovy!"
	done

_OPT_InspiringText::
	text_start
	line "inspiring."
	done

_OPT_FriendlyText::
	text_start
	line "friendly."
	done

_OPT_HotHotHotText::
	text_start
	line "hot, hot, hot!"
	done

_OPT_StimulatingText::
	text_start
	line "stimulating."
	done

_OPT_GuardedText::
	text_start
	line "guarded."
	done

_OPT_LovelyText::
	text_start
	line "lovely."
	done

_OPT_SpeedyText::
	text_start
	line "speedy."
	done

_OPT_PokemonChannelText::
	text "#MON"
	done

_PokedexShowText::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

; Pokémon Music Channel / Pokémusic

_BenIntroText1::
	text_start
	line "BEN: #MON MUSIC"
	done

_BenIntroText2::
	text_start
	line "CHANNEL!"
	done

_BenIntroText3::
	text_start
	line "It's me, DJ BEN!"
	done

_FernIntroText1::
	text_start
	line "FERN: #MUSIC!"
	done

_FernIntroText2::
	text_start
	line "With DJ FERN!"
	done

_BenFernText1::
	text_start
	line "Today's @"
	text_today
	text ","
	done

_BenFernText2A::
	text_start
	line "so let us jam to"
	done

_BenFernText2B::
	text_start
	line "so chill out to"
	done

_BenFernText3A::
	text_start
	line "#MON March!"
	done

_BenFernText3B::
	text_start
	line "#MON Lullaby!"
	done

; Lucky Channel

_LC_Text1::
	text_start
	line "REED: Yeehaw! How"
	done

_LC_Text2::
	text_start
	line "y'all doin' now?"
	done

_LC_Text3::
	text_start
	line "Whether you're up"
	done

_LC_Text4::
	text_start
	line "or way down low,"
	done

_LC_Text5::
	text_start
	line "don't you miss the"
	done

_LC_Text6::
	text_start
	line "LUCKY NUMBER SHOW!"
	done

_LC_Text7::
	text_start
	line "This week's Lucky"
	done

_LC_Text8::
	text_start
	line "Number is @"
	text_pause
	text_ram wStringBuffer1
	text "!"
	done

_LC_Text9::
	text_start
	line "I'll repeat that!"
	done

_LC_Text10::
	text_start
	line "Match it and go to"
	done

_LC_Text11::
	text_start
	line "the RADIO TOWER!"
	done

_LC_DragText1::
	text_start
	line "…Repeating myself"
	done

_LC_DragText2::
	text_start
	line "gets to be a drag…"
	done

; Places and People

_PnP_Text1::
	text_start
	line "PLACES AND PEOPLE!"
	done

_PnP_Text2::
	text_start
	line "Brought to you by"
	done

_PnP_Text3::
	text_start
	line "me, DJ LILY!"
	done

_PnP_Text4::
	text_start
	line "@"
	text_ram wStringBuffer2
	text " @"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_PnP_CuteText::
	text_start
	line "is cute."
	done

_PnP_LazyText::
	text_start
	line "is sort of lazy."
	done

_PnP_HappyText::
	text_start
	line "is always happy."
	done

_PnP_NoisyText::
	text_start
	line "is quite noisy."
	done

_PnP_PrecociousText::
	text_start
	line "is precocious."
	done

_PnP_BoldText::
	text_start
	line "is somewhat bold."
	done

_PnP_PickyText::
	text_start
	line "is too picky!"
	done

_PnP_SortOfOKText::
	text_start
	line "is sort of OK."
	done

_PnP_SoSoText::
	text_start
	line "is just so-so."
	done

_PnP_GreatText::
	text_start
	line "is actually great."
	done

_PnP_MyTypeText::
	text_start
	line "is just my type."
	done

_PnP_CoolText::
	text_start
	line "is so cool, no?"
	done

_PnP_InspiringText::
	text_start
	line "is inspiring!"
	done

_PnP_WeirdText::
	text_start
	line "is kind of weird."
	done

_PnP_RightForMeText::
	text_start
	line "is right for me?"
	done

_PnP_OddText::
	text_start
	line "is definitely odd!"
	done

_PnP_Text5::
	text_start
	line "@"
	text_ram wStringBuffer1
	text_end

	text_end ; unused

_RocketRadioText1::
	text_start
	line "… …Ahem, ici"
	done

_RocketRadioText2::
	text_start
	line "LA TEAM ROCKET!"
	done

_RocketRadioText3::
	text_start
	line "Aprés 3 ans"
	done

_RocketRadioText4::
	text_start
	line "de preparation,"
	done

_RocketRadioText5::
	text_start
	line "nous renaissons"
	done

_RocketRadioText6::
	text_start
	line "de nos cendres!"
	done

_RocketRadioText7::
	text_start
	line "GIOVANNI! @"
	text_pause
	text "Vous"
	done

_RocketRadioText8::
	text_start
	line "captez?@"
	text_pause
	text " We did it!"
	done

_RocketRadioText9::
	text_start
	line "@"
	text_pause
	text "Boss?"
	done

_RocketRadioText10::
	text_start
	line "@"
	text_pause
	text "Ou étes vous?"
	done

_BuenaRadioText1::
	text_start
	line "BUENA: ici BUENA!"
	done

_BuenaRadioText2::
	text_start
	line "Le mot de passe"
	done

_BuenaRadioText3::
	text_start
	line "est"
	done

_BuenaRadioText4::
	text_start
	line "@"
	text_ram wStringBuffer1
	text "!"
	done

_BuenaRadioText5::
	text_start
	line "Ne l'oubliez pas!"
	done

_BuenaRadioText6::
	text_start
	line "RDV ä Bruxelles"
	done

_BuenaRadioText7::
	text_start
	line "RADIO TOWER!"
	done

_BuenaRadioMidnightText1::
	text_start
	line "BUENA: Oh my…"
	done

_BuenaRadioMidnightText2::
	text_start
	line "il est minuit!"
	done

_BuenaRadioMidnightText3::
	text_start
	line "Je dois fermer!"
	done

_BuenaRadioMidnightText4::
	text_start
	line "Thanks for tuning"
	done

_BuenaRadioMidnightText5::
	text_start
	line "in to the end! But"
	done

_BuenaRadioMidnightText6::
	text_start
	line "don't stay up too"
	done

_BuenaRadioMidnightText7::
	text_start
	line "late! Presented to"
	done

_BuenaRadioMidnightText8::
	text_start
	line "you by DJ BUENA!"
	done

_BuenaRadioMidnightText9::
	text "I'm outta here!"
	done

_BuenaRadioMidnightText10::
	text "…"
	done

_BuenaOffTheAirText::
	text_start
	line ""
	done

_EnemyWithdrewText::
	text "<ENEMY>"
	line "withdrew"
	cont "@"
	text_ram wEnemyMonNick
	text "!"
	prompt

_EnemyUsedOnText::
	text "<ENEMY>"
	line "used @"
	text_ram wMonOrItemNameBuffer
	text_start
	cont "on @"
	text_ram wEnemyMonNick
	text "!"
	prompt

Text_ThatCantBeUsedRightNow::
	text "Pas maintenant,"
	line "voyons!"
	prompt

Text_ThatItemCantBePutInThePack::
	text "Ca ne rentre pas"
	line "dans le sac."
	done

Text_TheItemWasPutInThePack::
	text "Le @"
	text_ram wStringBuffer1
	text_start
	line "est mis dans "
	cont "le sac."
	done

Text_RemainingTime::
	text "Temps restant"
	done

Text_YourMonsHPWasHealed::
	text "La deadline est"
	line "étendue."
	prompt

Text_Warping::
	text "Emballage…"
	done

UnknownText_0x1bd05e::
	text "Quel nombre"
	line "doit étre changé?"
	done

UnknownText_0x1bd07f::
	text "Will you play with"
	line "@"
	text_ram wStringBuffer2
	text "?"
	done

UnknownText_0x1bd09a::
	text "Il faut 2 #-"
	line "MON pour breeding."
	prompt

Text_BreedingIsNotPossible::
	text "Breeding is not"
	line "possible."
	prompt

UnknownText_0x1bd0d8::
	text "The compatibility"
	line "is @"
	text_decimal wBreedingCompatibility, 1, 3
	text "."
	cont "Should they breed?"
	done

UnknownText_0x1bd109::
	text "Pas de caramel mou"
	line ""
	prompt

UnknownText_0x1bd11c::
	text "Ca me dirais bien"
	line "un truc!"
	prompt

UnknownText_0x1bd131::
	text "Test event"
	line "@"
	text_decimal wStringBuffer2, 1, 2
	text "?"
	done

UnknownText_0x1bd145::
	text "c'est parti!"
	done

UnknownText_0x1bd14d::
	text "Fin!"
	done

UnknownText_0x1bd153::
	text "Pour un mäle!"
	done

UnknownText_0x1bd15f::
	text "Pour une fille!"
	done

UnknownText_0x1bd16c::
	text "C'est pas pour"
	line "les garcons!"
	done

UnknownText_0x1bd188::
	text "La case est pleine!"
	done

UnknownText_0x1bd19a::
	text "Une carte est arrivée"
	line "de @"
	text_ram wStringBuffer2
	text "."
	done

UnknownText_0x1bd1ba::
	text "Mettre cette carte"
	line "dans le portecarte?"
	done

UnknownText_0x1bd1dd::
	text_ram wStringBuffer2
	text "'s CARD was"
	line "listed as no.@"
	text_decimal wStringBuffer1, 1, 2
	text "."
	prompt

UnknownText_0x1bd201::
	text "Starting link."
	done

UnknownText_0x1bd211::
	text "Link terminated."
	done

UnknownText_0x1bd223::
	text "Closing link."
	done

UnknownText_0x1bd232::
	text "Clear the time"
	line "limit?"
	done

UnknownText_0x1bd249::
	text "The time limit was"
	line "cleared."
	done

UnknownText_0x1bd266::
	text "Pick which packet"
	line "as an error?"
	done

UnknownText_0x1bd286::
	text "Trading @"
	text_ram wStringBuffer2
	text_start
	line "for @"
	text_ram wStringBuffer1
	text "…"
	done

UnknownText_0x1bd2a0::
	text "Vous obtenez le"
	line "PIN'sVOLTOR!"
	done

_AskFloorElevatorText::
	text "Quel étage?"
	done

_BugCatchingContestTimeUpText::
	text "ANNONCE: BIIP!"

	para "Trop tard!"
	done

_BugCatchingContestIsOverText::
	text "ANNONCE: Le"
	line "concours est fini!"
	done

_RepelWoreOffText::
	text "Les effets de la"
	line "weed s'estompent."
	done

_PlayerFoundItemText::
	text "<PLAYER> trouve"
	line "@"
	text_ram wStringBuffer3
	text "!"
	done

_ButNoSpaceText::
	text "Mais <PLAYER> ne"
	line "va pas assez ä" 
	cont "la salle…"
	done

_JustSawSomeRareMonText::
	text "Je viens de voir"
	line "un rare @"
	text_ram wStringBuffer1
	text " dans"
	cont "@"
	text_ram wStringBuffer2
	text "."

	para "Je t'appelle si"
	line "je pense ä un"
	cont "autre, OK?"
	prompt

_SavingRecordText::
	text "SAUVEGARDE…"
	line "NE PAS ETEINDRE!"
	done

_ReceiveItemText::
	text_ram wPlayerName
	text " recoit"
	line "@"
	text_ram wStringBuffer1
	text "!@"
	sound_item
	text_promptbutton
	text_end

	text_end ; unused

_NoCoinsText::
	text "Vous n'avez"
	line " pas les jetons!"
	prompt

_NoCoinCaseText::
	text "Il vous faut une"
	line "boite ä jetons."
	prompt

_NPCTradeCableText::
	text "OK, connecte le"
	line "Game Link Cable."
	prompt

Text_NPCTraded::
	text "<PLAYER> échange"
	line "@"
	text_ram wMonOrItemNameBuffer
	text " pour"
	cont "@"
	text_ram wStringBuffer2
	text ".@"
	text_end

_NPCTradeFanfareText::
	sound_dex_fanfare_80_109
	text_pause
	text_end

	text_end ; unused

_NPCTradeIntroText1::
	text "Je lis beaucoup."
	line "Avez-vous écrit"
	cont "sur @"
	text_ram wStringBuffer1
	text "?"

	para "En échange, j'ai "
	line "du @"
	text_ram wStringBuffer2
	text ", ok?"
	done

_NPCTradeCancelText1::
	text "Vous ne voulez pas"
	line "partager? Ohhh…"
	done

_NPCTradeWrongText1::
	text "Cornegidouille!"
	line "Ce n'est pas"
	cont "un @"
	text_ram wStringBuffer1
	text ". "
	cont "Je suis deg'…"
	done

_NPCTradeCompleteText1::
	text "Waw! Merci"
	line "@"
	text_ram wStringBuffer1
	text "!"
	cont "Excellent!"
	done

_NPCTradeAfterText1::
	text "Hé, Alors, ce"
	line "@"
	text_ram wStringBuffer2
	text "? Pas mal, hein?"
	done

_NPCTradeIntroText2::
	text "Hi, I'm looking"
	line "for this #MON."

	para "If you have"
	line "@"
	text_ram wStringBuffer1
	text ", would"

	para "you trade it for"
	line "my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText2::
	text "You don't have"
	line "one either?"

	para "Gee, that's really"
	line "disappointing…"
	done

_NPCTradeWrongText2::
	text "You don't have"
	line "@"
	text_ram wStringBuffer1
	text "? That's"
	cont "too bad, then."
	done

_NPCTradeCompleteText2::
	text "Great! Thank you!"

	para "I finally got"
	line "@"
	text_ram wStringBuffer1
	text "."
	done

_NPCTradeAfterText2::
	text "Hi! The @"
	text_ram wMonOrItemNameBuffer
	text_start
	line "you traded me is"
	cont "doing great!"
	done

_NPCTradeIntroText3::
	text_ram wMonOrItemNameBuffer
	text "'s cute,"
	line "but I don't have"

	para "it. Do you have"
	line "@"
	text_ram wStringBuffer1
	text "?"

	para "Want to trade it"
	line "for my @"
	text_ram wStringBuffer2
	text "?"
	done

_NPCTradeCancelText3::
	text "You don't want to"
	line "trade? Oh, darn…"
	done

_NPCTradeWrongText3::
	text "That's not"
	line "@"
	text_ram wStringBuffer1
	text "."

	para "Please trade with"
	line "me if you get one."
	done

_NPCTradeCompleteText3::
	text "Wow! Thank you!"
	line "I always wanted"
	cont "@"
	text_ram wMonOrItemNameBuffer
	text "!"
	done

_NPCTradeAfterText3::
	text "How is that"
	line "@"
	text_ram wStringBuffer2
	text " I"
	cont "traded you doing?"

	para "Your @"
	text_ram wMonOrItemNameBuffer
	text "'s"
	line "so cute!"
	done

_NPCTradeCompleteText4::
	text "Uh? What happened?"
	done

_NPCTradeAfterText4::
	text "Trading is so odd…"

	para "I still have a lot"
	line "to learn about it."
	done

_MomLeavingText1::
	text "Cher"
	line "M.<PLAYER>!"

	para "…"

	para "Vous partez"
	line "donc"
	cont "ä l'adventure…"

	para "Fort bien!"
	line "Je vais vous"
	cont "aider."

	para "Que puis-je faire"
	line "pour vous?"

	para "Je sais! Je vais"
	line "garder votre"
	cont "argent."

	para "Pour l'aventure, "
	line "l'argent, c'est "
	cont "important."

	para "Voulez-vous que"
	line "je garde votre"
	cont "argent?"
	done

_MomLeavingText2::
	text "Bien, je vais"
	line "garder l'argent!!"

	para "<……><……><……>"
	prompt

_MomLeavingText3::
	text "Prenez garde,"
	line "M.<PLAYER>."

	para "Un grand danger"
	line "vous attend."

	para "Bonne route!"
	done

_MomIsThisAboutYourMoneyText::
	text "Ha! Mon garcon!"
	line "Un peu de reconfort"
	cont "!"

	para "Est-ce a propos"
	line "de l'argent?"
	done

_MomBankWhatDoYouWantToDoText::
	text "Que voulez-vous"
	line "faire?"
	done

_MomStoreMoneyText::
	text "Combien souhaitez"
	line "economiser?"
	done

_MomTakeMoneyText::
	text "Recuperer"
	line "Combien?"
	done

_MomSaveMoneyText::
	text "Voulez-vous"
	line "economiser?"
	done

_MomHaventSavedThatMuchText::
	text "Mon pauvre vous"
	line "etes fauches!"
	prompt

_MomNotEnoughRoomInWalletText::
	text "Vous voulez me "
	line "ruiner?!"
	prompt

_MomInsufficientFundsInWalletText::
	text "Vous n'avez pas cette"
	line "somme."
	prompt

_MomNotEnoughRoomInBankText::
	text "Ce serait trop"
	line "pour moi."
	prompt

_MomStartSavingMoneyText::
	text "OK, je garde votre "
	line "argent mon garcon!"

	para "<PLAYER>, courage"
	line "!"
	done

_MomStoredMoneyText::
	text "Votre argent est entre"
	line "de bonnes mains!"
	done

_MomTakenMoneyText::
	text "<PLAYER>, ne baissez"
	line "pas les bras!"
	done

_MomJustDoWhatYouCanText::
	text "Restez "
	line "raisonnable."
	done

_DaycareDummyText::
	text_start
	done

_DayCareManIntroText::
	text "Je suis auteur"
	line "sans inspi."

	para "Mais je peux "
	line "étre votre"
	cont "négre."
	done

_DayCareManOddEggText::
	text "Je suis auteur,"
	line "mais j'ai des "
	cont "problémes d'inspi."

	para "La page blanche"
	line "mec, quelle"
	cont "angoisse!"

	para "Si seulement"
	line "j'avais un truc"

	para "pour trouver"
	line "l'inspi."

	para "Oh, j'ai essayé"
	line "l'herbe, bien sur!"

	para "Mais rien"
	line "n'y fait!"

	para "Tu en as des"
	line "idées, toi? Des"
	cont "#, peut-étre?"
	done

_DayCareLadyIntroText::
	text "Je suis auteur"
	line ".re.trice.esse"
	cont "sans inspi."

	para "Mais je peux "
	line "étre votre"
	cont "préte-plume."
	done

_DayCareLadyOddEggText::
	text "Je suis auteur"
	line ".re.trice.esse"
	cont "sans inspi."

	para "Avec mon mari,"
	line "nous avons tout"
	cont "essayé."

	para "Puis-je étre"
	line "votre"
	cont "préte-plume?"
	done

_WhatShouldIRaiseText::
	text "Sur quel article"
	line "travailler?"
	prompt

_OnlyOneMonText::
	text "Oh? But you have"
	line "just one #MON."
	prompt

_CantAcceptEggText::
	text "Désolé, les"
	line "caramels mous"

	para "me font mal"
	line "aux dents."
	prompt

_RemoveMailText::
	text "Remove MAIL before"
	line "you come see me."
	prompt

_LastHealthyMonText::
	text "C'est votre seul"
	line "article!"

	para "Vous étes vrai"
	line "-ment un sac ä"
	cont "merde, <PLAYER>!"
	prompt

_IllRaiseYourMonText::
	text "OK. Je vais étof"
	line "-fer @"
	text_ram wStringBuffer1
	text "."
	prompt

_ComeBackLaterText::
	text "Revener plus"
	line "tard."
	done

_AreWeGeniusesText::
	text "Are we geniuses or"
	line "what? Want to see"
	cont "your @"
	text_ram wStringBuffer1
	text "?"
	done

_YourMonHasGrownText::
	text "Votre @"
	text_ram wStringBuffer1
	text_start
	line "s'est étoffé."

	para "Son nombre de"
	line "pages a pris @"
	text_decimal wStringBuffer2 + 1, 1, 3
	text "."

	para "Si tu veux"
	line "revoir ta #,"
	cont "c'est ¥@"
	text_decimal wStringBuffer2 + 2, 3, 4
	text "."
	done

_PerfectHeresYourMonText::
	text "Parfait! Voici"
	line "ta #."
	prompt

_GotBackMonText::
	text "<PLAYER> reprend"
	line "@"
	text_ram wStringBuffer1
	text "."
	prompt

_BackAlreadyText::
	text "Hein? Déjä?"
	line "Ton @"
	text_ram wStringBuffer1
	text_start
	para "va nous prendre"
	line "du temps!"

	para "If you want your"
	line "#MON back, it"
	cont "will cost ¥100."
	done

_HaveNoRoomText::
	text "You have no room"
	line "for it."
	prompt

_NotEnoughMoneyText::
	text "T'es fauché"
	line "mec ou quoi?"
	prompt

_OhFineThenText::
	text "Oh, trés bien."
	prompt

_ComeAgainText::
	text "Repassez."
	done

_NotYetText::
	text "Pas encore…"
	done

_FoundAnEggText::
	text "Ah, C'est toi!"

	para "On rédigeait"
	line "tes #, et"

	para "bon sang,"
	line "l'inspi!"

	para "On a eu une"
	line "idée de génie!"
	cont "Tu la veux?"
	done

_ReceivedEggText::
	text "<PLAYER> note"
	line "l'idée!"
	done

_TakeGoodCareOfEggText::
	text "Tu pourras en"
	line "fair une #."
	done

_IllKeepItThanksText::
	text "Super, je la"
	line "garde pour moi!"
	cont "Ci-mer!"
	done

_NoRoomForEggText::
	text "Pas de place"
	line "pour cette idée,"
	cont "on dirait."
	done

_WhichMonPhotoText::
	text "Which #MON"
	line "should I photo-"
	cont "graph?"
	prompt

_HoldStillText::
	text "All righty. Hold"
	line "still for a bit."
	prompt

_PrestoAllDoneText::
	text "Presto! All done."
	line "Come again, OK?"
	done
