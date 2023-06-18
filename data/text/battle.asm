BattleText:: ; used only for BANK(BattleText)

BattleText_PlayerPickedUpPayDayMoney:
	text "<PLAYER> ramasse "
	line "¥@"
	text_decimal wPayDayMoney, 3, 6
	text "!"
	prompt

WildPokemonAppearedText:
	text "Une inspiration"
	line "vous prend:"
	para "… @"
	text_ram wEnemyMonNick
	text_start
	text "!"
	prompt

HookedPokemonAttackedText:
	text "L'eau vous inspire:"
	text "@"
	text_ram wEnemyMonNick
	text_start
	cont "!"
	prompt

PokemonFellFromTreeText:
	text "Cet arbre…:"
	text_ram wEnemyMonNick
	text " fell"
	line "out of the tree!"
	prompt

WildCelebiAppearedText:
	text "Mais c'est "
	line "@ !"
	text_ram wEnemyMonNick
	text_start
	line "Eh! oui…"
	line "@ !"
	prompt

WantsToBattleText::
	text "<ENEMY>"
	line "vous inspire!"
	prompt

BattleText_WildFled:
	text "Chassons "
	text "@"
	text_ram wEnemyMonNick
	text_start
	line "de notre esprit!"
	prompt

BattleText_EnemyFled:
	text "Chassons "
	text "@"
	text_ram wEnemyMonNick
	text_start
	line "de notre esprit!"
	prompt

HurtByPoisonText:
	text "<USER>…"
	line "pff… aucun sens!"
	prompt

HurtByBurnText:
	text "<USER>…"
	line "c'est ridicule…"
	prompt

LeechSeedSapsText:
	text "C'est une meilleure"
	line "idee que "
	cont "<USER>!"
	prompt

HasANightmareText:
	text "<USER>"
	line "est un cauchemar!"
	prompt

HurtByCurseText:
	text "<USER>"
	line "est maudit!"
	prompt

SandstormHitsText:
	text "La TEMPETE use"
	line "<USER>!"
	prompt

PerishCountText:
	text "<USER>'s"
	line "PERISH count est @"
	text_decimal wDeciramBuffer, 1, 1
	text "!"
	prompt

BattleText_TargetRecoveredWithItem:
	text "<TARGET>"
	line "se libére de"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_UserRecoveredPPUsing:
	text "<USER>"
	line "retrouve PP par"
	cont "@"
	text_ram wStringBuffer1
	text "."
	prompt

BattleText_TargetWasHitByFutureSight:
	text "<TARGET>"
	line "se prend FUTURE"
	cont "SIGHT!"
	prompt

BattleText_SafeguardFaded:
	text "<USER>"
	line "SAFEGUARD fini!"
	prompt

BattleText_MonsLightScreenFell:
	text_ram wStringBuffer1
	text " #MON"
	line "LIGHT SCREEN fini!"
	prompt

BattleText_MonsReflectFaded:
	text_ram wStringBuffer1
	text " #MON"
	line "REFLECT fini!"
	prompt

BattleText_RainContinuesToFall:
	text "La pluie continue"
	line "de tomber."
	prompt

BattleText_TheSunlightIsStrong:
	text "The soleil"
	line "brille."
	prompt

BattleText_TheSandstormRages:
	text "La TEMPETE"
	line "fait rage."
	prompt

BattleText_TheRainStopped:
	text "La pluie s'arréte."
	prompt

BattleText_TheSunlightFaded:
	text "Le soleil se cache."
	prompt

BattleText_TheSandstormSubsided:
	text "La SANDSTORM"
	line "s'évanouit."
	prompt

BattleText_EnemyMonFainted:
	text "Idée @"
	text_ram wEnemyMonNick
	text_start
	line "abandonnée!"
	prompt

GotMoneyForWinningText:
	text "<PLAYER> a ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "de gains!"
	prompt

BattleText_EnemyWasDefeated:
	text "<ENEMY>"
	line "est ä terre!"
	prompt

TiedAgainstText:
	text "Ligotte"
	line "<ENEMY>!"
	prompt

SentSomeToMomText:
	text "<PLAYER> prend ¥@"
	text_decimal wBattleReward, 3, 6
	text_start
	line "Et en envoie un"
	cont "peu ä Nestor!"
	prompt

SentHalfToMomText:
	text "La moitié ä Nestor!"
	prompt

SentAllToMomText:
	text "Tout pour Nestor!"
	prompt

BattleText_0x80a4f:
	text "<RIVAL>: Mouais."
	line "Pas terrible"
	cont "vos memes!"
	prompt

BattleText_MonFainted:
	text_ram wBattleMonNick
	text_start
	line "fainted!"
	prompt

BattleText_UseNextMon:
	text "Confronter une"
	line "autre #MON?"
	done

BattleText_0x80a93:
	text "<RIVAL>: ä"
	line "moi les"
	cont "royalties!"
	prompt

LostAgainstText:
	text "Faible face ä"
	line "<ENEMY>!"
	prompt

BattleText_EnemyIsAboutToUseWillPlayerChangeMon:
	text "Changeons"
	line "d'idée:"
	cont "@"
	text_ram wEnemyMonNick
	text "."

	para "<PLAYER>, changer "
	line "de brouillon ?"
	done

BattleText_EnemySentOut:
	text "Nouvelle"
	line "idée; voici"
	cont "@"
	text_ram wEnemyMonNick
	text "!"
	done

BattleText_TheresNoWillToBattle:
	text "Ce brouillon est"
	line "déjä foutu!"
	prompt

BattleText_AnEGGCantBattle:
	text "Cette idée est"
	line "trop floue!"
	prompt

BattleText_CantEscape2:
	text "Re-concentre-toi!"
	prompt

BattleText_TheresNoEscapeFromTrainerBattle:
	text "Non! Ecoute un"
	line "peu ce qu'on te"
	cont "raconte!"
	prompt

BattleText_GotAwaySafely:
	text "Oublions ca!"
	prompt

BattleText_UserFledUsingAStringBuffer1:
	text "<USER>"
	line "oublie grace a"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_CantEscape:
	text "Reconcentre toi!"
	prompt

BattleText_UserHurtBySpikes:
	text "<USER>"
	line "est trop pointu!"
	prompt

RecoveredUsingText:
	text "<TARGET>"
	line "se corrige avec"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UsersStringBuffer1Activated:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer1
	text_start
	cont "activé!"
	prompt

BattleText_ItemsCantBeUsedHere:
	text "Pas d'objets"
	line "ici svp."
	prompt

BattleText_MonIsAlreadyOut:
	text_ram wBattleMonNick
	text_start
	line "y est déjä."
	prompt

BattleText_MonCantBeRecalled:
	text_ram wBattleMonNick
	text_start
	line "ne peut étre"
	cont "rappelé!"
	prompt

BattleText_TheresNoPPLeftForThisMove:
	text "Déjä trop"
	line "dit!"
	prompt

BattleText_TheMoveIsDisabled:
	text "Le move est"
	line "DISABLED!"
	prompt

BattleText_MonHasNoMovesLeft:
	text_ram wBattleMonNick
	text_start
	line "est ä sec."
	done

BattleText_TargetsEncoreEnded:
	text "<TARGET>"
	line "ENCORE fini!"
	prompt

BattleText_StringBuffer1GrewToLevel:
	text_ram wStringBuffer1
	text " compte"
	line "désormais @"
	text_decimal wCurPartyLevel, 1, 3
	text "pages!@"
	sound_dex_fanfare_50_79
	text_end

	text_end ; unused

BattleText_WildMonIsEating:
	text "Idée @"
	text_ram wEnemyMonNick
	text_start
	line "s'étoffe!"
	prompt

BattleText_WildMonIsAngry:
	text "L'idée @"
	text_ram wEnemyMonNick
	text_start
	line "est vénère!"
	prompt

FastAsleepText:
	text "<USER>"
	line "roupille!"
	prompt

WokeUpText:
	text "<USER>"
	line "se réveille!"
	prompt

FrozenSolidText:
	text "<USER>"
	line "est gelé!"
	prompt

FlinchedText:
	text "<USER>"
	line "flippe grave!"
	prompt

MustRechargeText:
	text "<USER>"
	line "est ä plat!"
	prompt

DisabledNoMoreText:
	text "<USER>"
	line "n'est plus"
	cont "décactivé!"
	prompt

IsConfusedText:
	text "<USER>"
	line "est confus!"
	prompt

HurtItselfText:
	text "S'emméle les"
	line "pinceaux!"
	prompt

ConfusedNoMoreText:
	text "<USER>"
	line "n'est plus"
	cont "confus!"
	prompt

BecameConfusedText:
	text "<TARGET>"
	line "devient confus!"
	prompt

BattleText_ItemHealedConfusion:
	text "Le @"
	text_ram wStringBuffer1
	text " sauve"
	line "<TARGET>"
	cont "de sa confusion."
	prompt

AlreadyConfusedText:
	text "<TARGET>"
	line "est déjä confus!"
	prompt

BattleText_UsersHurtByStringBuffer1:
	text "<USER>"
	line "est blessé par"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

BattleText_UserWasReleasedFromStringBuffer1:
	text "<USER>"
	line "est libéré de"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

UsedBindText:
	text "<USER>"
	line "utilise BIND sur"
	cont "<TARGET>!"
	prompt

WhirlpoolTrapText:
	text "<TARGET>"
	line "est piégé!"
	prompt

FireSpinTrapText:
	text "<TARGET>"
	line "was trapped!"
	prompt

WrappedByText:
	text "<TARGET>"
	line "est WRAPPED par"
	cont "<USER>!"
	prompt

ClampedByText:
	text "<TARGET>"
	line "est CLAMPED par"
	cont "<USER>!"
	prompt

StoringEnergyText:
	text "<USER>"
	line "prend une tour-"
	cont "nure inspirante!"
	prompt

UnleashedEnergyText:
	text "<USER>"
	line "envoie la sauce"
	cont "facon Linkedin!"
	prompt

HungOnText:
	text "<TARGET>"
	line "piégé par"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

EnduredText:
	text "<TARGET>"
	line "ENDURED le coup!"
	prompt

InLoveWithText:
	text "<USER>"
	line "est amouraché de"
	cont "<TARGET>!"
	prompt

InfatuationText:
	text "<USER>'s"
	line "infatuation l'em-"
	cont "péche d'attaquer!"
	prompt

DisabledMoveText:
	text "<USER>"
	line "@"
	text_ram wStringBuffer1
	text " est"
	cont "DISABLED!"
	prompt

LoafingAroundText:
	text_ram wBattleMonNick
	text " "
	line "fläne."
	prompt

BeganToNapText:
	text_ram wBattleMonNick
	text " "
	line "entäme un somme!"
	prompt

WontObeyText:
	text_ram wBattleMonNick
	text " est"
	line "hors de controle!"
	prompt

TurnedAwayText:
	text_ram wBattleMonNick
	text " se"
	line "détourne!"
	prompt

IgnoredOrdersText:
	text_ram wBattleMonNick
	text " est"
	line "hors sujet!"
	prompt

IgnoredSleepingText:
	text_ram wBattleMonNick
	text " est hors"
	line "sujet…"
	cont "et soporifique!"
	prompt

NoPPLeftText:
	text "Mais cela a déjä"
	line "été trop dit!"
	prompt

HasNoPPLeftText:
	text "<USER>"
	line "n'a plus de PP pour"
	cont "@"
	text_ram wStringBuffer2
	text "!"
	prompt

WentToSleepText:
	text "<USER>"
	line "s'endort!"
	done

RestedText:
	text "<USER>"
	line "fell asleep and"
	cont "became healthy!"
	done

RegainedHealthText:
	text "<USER>"
	line "se restructure!"
	prompt

AttackMissedText:
	text "<USER>"
	line "rate!"
	prompt

AttackMissed2Text:
	text "<USER>"
	line "rate!"
	prompt

CrashedText:
	text "<USER>"
	line "continue et"
	cont "se crash!"
	prompt

UnaffectedText:
	text "<TARGET>"
	line "n'est pas"
	cont "affecté."
	prompt

DoesntAffectText:
	text "Ca n'affecte pas"
	line "<TARGET>!"
	prompt

CriticalHitText:
	text "Quel génie!"
	prompt

OneHitKOText:
	text "Ca, c'est fait!"
	prompt

SuperEffectiveText:
	text "c'est trés"
	line "pertinent!"
	prompt

NotVeryEffectiveText:
	text "Ce n'est pas"
	line "trés pertinent…"
	prompt

TookDownWithItText:
	text "<TARGET>"
	line "took down with it,"
	cont "<USER>!"
	prompt

RageBuildingText:
	text "<USER>"
	line "y réflechit!"
	prompt

GotAnEncoreText:
	text "<TARGET>"
	line "récidive!"
	prompt

SharedPainText:
	text "Les deux drafts"
	line "sont affectés!"
	prompt

TookAimText:
	text "<USER>"
	line "took aim!"
	prompt

SketchedText:
	text "<USER>"
	line "SKETCHED"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

DestinyBondEffectText:
	text "<USER>"
	line "essaie de faire"
	cont "subir le méme"
	para "sort en face!"
	prompt

SpiteEffectText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer1
	text " was"
	cont "reduced by @"
	text_decimal wDeciramBuffer, 1, 1
	text "!"
	prompt

BellChimedText:
	text "Une clochette"
	line "sonne!"
	prompt

FellAsleepText:
	text "<TARGET>"
	line "est soporifique."
	prompt

AlreadyAsleepText:
	text "<TARGET>"
	line "dort déja!"
	prompt

WasPoisonedText:
	text "<TARGET>"
	line "est pourri!"
	prompt

BadlyPoisonedText:
	text "<TARGET>"
	line "est tout pourri!"
	prompt

AlreadyPoisonedText:
	text "<TARGET>"
	line "est déjä pourri!"
	prompt

SuckedHealthText:
	text "plagie"
	line "<TARGET>!"
	prompt

DreamEatenText:
	text "<TARGET>"
	line "voit sa"
	cont "substantifique"
	para "moelle se faire"
	line "voler."
	prompt

WasBurnedText:
	text "<TARGET>"
	line "se consume!"
	prompt

DefrostedOpponentText:
	text "<TARGET>"
	line "se dégéle!"
	prompt

WasFrozenText:
	text "<TARGET>"
	line "est gelé!"
	prompt

WontRiseAnymoreText:
	text "<USER>'s"
	line "@"
	text_ram wStringBuffer2
	text " n'augmente"
	cont "plus!"
	prompt

WontDropAnymoreText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer2
	text " ne diminue"
	cont "plus!"
	prompt

FledFromBattleText::
	text "<USER>"
	line "s'enfuit!"
	prompt

FledInFearText:
	text "<TARGET>"
	line "s'échappe!"
	prompt

BlownAwayText:
	text "<TARGET>"
	line "s'est envolé!"
	prompt

PlayerHitTimesText:
	text "Touché @"
	text_decimal wPlayerDamageTaken, 1, 1
	text " fois!"
	prompt

EnemyHitTimesText:
	text "Touché @"
	text_decimal wEnemyDamageTaken, 1, 1
	text " fois!"
	prompt

MistText:
	text "<USER>'s"
	line "shrouded in MIST!"
	prompt

ProtectedByMistText:
	text "<TARGET>'s"
	line "protected by MIST."
	prompt

GettingPumpedText:
	text_pause
	text "<USER>'s"
	line "getting pumped!"
	prompt

RecoilText:
	text "<USER>"
	line "s'en prend aussi!"
	prompt

MadeSubstituteText:
	text "<USER>"
	line "fait une SUBSTITUT!"
	prompt

HasSubstituteText:
	text "<USER>"
	line "a un SUBSTITUT!"
	prompt

TooWeakSubText:
	text "Trop faible pour"
	line "faire un SUBSTITUT!"
	prompt

SubTookDamageText:
	text "Le SUBSTITUT"
	line "prend les dégät"
	cont "de <TARGET>!"
	prompt

SubFadedText:
	text "<TARGET>'s"
	line "SUBSTITUT tombe!"
	prompt

MimicLearnedMoveText:
	text "<USER>"
	line "aborde"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

WasSeededText:
	text "<TARGET>"
	line "est pompé!"
	prompt

EvadedText:
	text "<TARGET>"
	line "échappe ä"
	cont "l'attaque!"
	prompt

WasDisabledText:
	text "<TARGET>'s"
	line "@"
	text_ram wStringBuffer1
	text " est"
	cont "DISABLED!"
	prompt

CoinsScatteredText:
	text "Des piéces de"
	line "monnaie partout!"
	prompt

TransformedTypeText:
	text "<USER>"
	line "se transforme en"
	cont "@"
	text_ram wStringBuffer1
	text "-type!"
	prompt

EliminatedStatsText:
	text "Tous changement"
	line "de statut"
	cont "disparait!"
	prompt

TransformedText:
	text "<USER>"
	line "se TRANSFORME en"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

LightScreenEffectText:
	text "<USER>'s"
	line "SPCL.DEF rose!"
	prompt

ReflectEffectText:
	text "<USER>'s"
	line "DEFENSE rose!"
	prompt

NothingHappenedText:
	text "Mais rien ne"
	line "se passe."
	prompt

ButItFailedText:
	text "Mais c'est un"
	line "cuisant echec!"
	prompt

ItFailedText:
	text "Echec!"
	prompt

DidntAffect1Text:
	text "Ca n'affecte pa"
	line "<TARGET>!"
	prompt

DidntAffect2Text:
	text "Ca n'affecte pas"
	line "<TARGET>!"
	prompt

HPIsFullText:
	text "<USER>'s"
	line "HP is full!"
	prompt

DraggedOutText:
	text "<USER>"
	line "was dragged out!"
	prompt

ParalyzedText:
	text "<TARGET>"
	line "se paralyse!"
	prompt

FullyParalyzedText:
	text "<USER>"
	line "est paralysé!"
	prompt

AlreadyParalyzedText:
	text "<TARGET>"
	line "est déjä paralysé!"
	prompt

ProtectedByText:
	text "<TARGET>"
	line "est protegé par"
	cont "@"
	text_ram wStringBuffer1
	text "!"
	prompt

MirrorMoveFailedText:
	text "Le MIRROR MOVE"
	next "échoue!"
	prompt

StoleText:
	text "<USER>"
	line "vole @"
	text_ram wStringBuffer1
	text_start
	cont "de lidée!"
	prompt

CantEscapeNowText:
	text "<TARGET>"
	line "ne peut s'en fuir!"
	prompt

StartedNightmareText:
	text "<TARGET>"
	line "entame un gros"
	cont "CAUCHEMARD!"
	prompt

WasDefrostedText:
	text "<USER>"
	line "est dégelé!"
	prompt

PutACurseText:
	text "<USER>"
	line "coupe ses propre HP"

	para "et MAUDIT"
	line "<TARGET>!"
	prompt

ProtectedItselfText:
	text "<USER>"
	line "se PROTEGE!"
	prompt

ProtectingItselfText:
	text "<TARGET>"
	line "se PROTEGE!"
	done

SpikesText:
	text "SPIKES sont dis-"
	line "patchés autour de"
	cont "<TARGET>!"
	prompt

IdentifiedText:
	text "<USER>"
	line "identifie"
	cont "<TARGET>!"
	prompt

StartPerishText:
	text "Les 2 #MON vont"
	line "s'autodétruire"
	cont "dans 3 tours!"
	prompt

SandstormBrewedText:
	text "Une SANDSTORM"
	line "se léve!"
	prompt

BracedItselfText:
	text "<USER>"
	line "se prépare!"
	prompt

FellInLoveText:
	text "<TARGET>"
	line "tombe amoureux!"
	prompt

CoveredByVeilText:
	text "<USER>"
	line "se voile!"
	prompt

SafeguardProtectText:
	text "<TARGET>"
	line "est protégé par"
	cont "SAFEGUARD!"
	prompt

MagnitudeText:
	text "Magnitude @"
	text_decimal wDeciramBuffer, 1, 1
	text "!"
	prompt

ReleasedByText:
	text "<USER>"
	line "est libéré de"
	cont "<TARGET>!"
	prompt

ShedLeechSeedText:
	text "<USER>"
	line "évite LEECH SEED!"
	prompt

BlewSpikesText:
	text "<USER>"
	line "souffle les SPIKES!"
	prompt

DownpourText:
	text "Un déluge"
	line "commence!"
	prompt

SunGotBrightText:
	text "Le soleil brille!"
	prompt

BellyDrumText:
	text "<USER>"
	line "coupe ses HP et"
	cont "maximize ATTACK!"
	prompt

CopiedStatsText:
	text "<USER>"
	line "copie les stat"

	para "changes de"
	line "<TARGET>!"
	prompt

ForesawAttackText:
	text "<USER>"
	line "prédit une attaque"
	prompt

BeatUpAttackText:
	text_ram wStringBuffer1
	text "'s"
	line "attack!"
	done

RefusedGiftText:
	text "<TARGET>"
	line "refuse le cadeau!"
	prompt

IgnoredOrders2Text:
	text "<USER>"
	line "ignore cela!"
	prompt

BattleText_LinkErrorBattleCanceled:
	text "Link error…"

	para "The battle has"
	line "been canceled…"
	prompt

BattleText_0x8188e:
	text "There is no time"
	line "left today!"
	done
