; #FUNCTION# ====================================================================================================================
; Name ..........: RK Config
; Description ...: This file Read/Save/Apply RK MODs settings
; Syntax ........: ---
; Parameters ....: ---
; Return values .: ---
; Author ........: RoroTiti
; Modified ......: 08/05/2017
; Remarks .......: This file is part of MyBot, previously known as ClashGameBot. Copyright 2015-2017
;                  MyBot is distributed under the terms of the GNU GPL
; Related .......: ---
; Link ..........: https://github.com/MyBotRun/MyBot/wiki
; Example .......: ---
; ===============================================================================================================================

Func ReadConfig_RKMod()


	; ================================================== CSV SPEED PART Added By rulesss ================================================== ;

	IniReadS($icmbCSVSpeed[$LB], $g_sProfileConfigPath, "RK CSV Speed", "cmbCSVSpeed[LB]", $icmbCSVSpeed[$LB], "Int")
	IniReadS($icmbCSVSpeed[$DB], $g_sProfileConfigPath, "RK CSV Speed", "cmbCSVSpeed[DB]", $icmbCSVSpeed[$DB], "Int")

	; ================================================== Super XP PART Added By rulesss ================================================== ;

	IniReadS($ichkEnableSuperXP, $g_sProfileConfigPath, "RK GoblinXP", "EnableSuperXP", 0, "int")
	IniReadS($irbSXTraining, $g_sProfileConfigPath, "RK GoblinXP", "SXTraining", 1, "int")
	IniReadS($itxtMaxXPtoGain, $g_sProfileConfigPath, "RK GoblinXP", "MaxXptoGain", 500, "int")
	IniReadS($ichkSXBK, $g_sProfileConfigPath, "RK GoblinXP", "SXBK", $eHeroNone)
	IniReadS($ichkSXAQ, $g_sProfileConfigPath, "RK GoblinXP", "SXAQ", $eHeroNone)
	IniReadS($ichkSXGW, $g_sProfileConfigPath, "RK GoblinXP", "SXGW", $eHeroNone)
    
	; ================================================== Forecast PART Added By rulesss ================================================== ;
	
	IniReadS($iChkForecastBoost, $g_sProfileConfigPath, "RK Forecast", "chkForecastBoost", 0, "Int")
	IniReadS($iChkForecastPause, $g_sProfileConfigPath, "RK Forecast", "chkForecastPause", 0, "Int")
	IniReadS($iTxtForecastBoost, $g_sProfileConfigPath, "RK Forecast", "txtForecastBoost", 6, "Int")
	IniReadS($iTxtForecastPause, $g_sProfileConfigPath, "RK Forecast", "txtForecastPause", 2, "Int")
	IniReadS($ichkForecastHopingSwitchMax, $g_sProfileConfigPath, "RK Forecast", "chkForecastHopingSwitchMax", 0, "Int")
	IniReadS($icmbForecastHopingSwitchMax, $g_sProfileConfigPath, "RK Forecast", "cmbForecastHopingSwitchMax", 0, "Int")
	IniReadS($itxtForecastHopingSwitchMax, $g_sProfileConfigPath, "RK Forecast", "txtForecastHopingSwitchMax", 2, "Int")
	IniReadS($ichkForecastHopingSwitchMin, $g_sProfileConfigPath, "RK Forecast", "chkForecastHopingSwitchMin", 0, "Int")
	IniReadS($icmbForecastHopingSwitchMin, $g_sProfileConfigPath, "RK Forecast", "cmbForecastHopingSwitchMin", 0, "Int")
	IniReadS($itxtForecastHopingSwitchMin, $g_sProfileConfigPath, "RK Forecast", "txtForecastHopingSwitchMin", 2, "Int")
	IniReadS($icmbSwLang, $g_sProfileConfigPath, "RK Forecast", "cmbSwLang", 1, "int")
	
	;==================================================; Skip Request CC - Demen Added By rulesss ==================== ;
	
	$g_bSkipRequestCC = (IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC", "0") = "1")
	$g_iSkipRequestCCTroop = Int(IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC_Troop", "0"))
	$g_iSkipRequestCCSpell = Int(IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC_Spell", "0"))
	
	;================================================== Move the Request CC Troops - Added By rulesss ==================== ;
	
	IniReadS($g_bReqCCFirst, $g_sProfileConfigPath, "planned", "ReqCCFirst", $g_bReqCCFirst, "Bool")
	
	IniReadS($g_iChkAutoCamp, $g_sProfileConfigPath, "troop", "ChkAutoCamp", $g_iChkAutoCamp, "Int")
	
	;================================================== Stop For War - Added By rulesss ==================== ;
	
	IniReadS($g_bStopForWar, $g_sProfileConfigPath, "war preparation", "Enable", False, "Bool")
	IniReadS($g_iStopTime, $g_sProfileConfigPath, "war preparation", "Stop Time", 0, "Int")
	IniReadS($g_bStopBeforeBattle, $g_sProfileConfigPath, "war preparation", "Stop Before", True, "Bool")
	IniReadS($g_iReturnTime, $g_sProfileConfigPath, "war preparation", "Return Time", 0, "Int")
	IniReadS($g_bTrainWarTroop, $g_sProfileConfigPath, "war preparation", "Train War Troop", False, "Bool")
	IniReadS($g_bUseQuickTrainWar, $g_sProfileConfigPath, "war preparation", "QuickTrain War Troop", False, "Bool")
	IniReadS($g_aChkArmyWar[0], $g_sProfileConfigPath, "war preparation", "QuickTrain War Army1", False, "Bool")
	IniReadS($g_aChkArmyWar[1], $g_sProfileConfigPath, "war preparation", "QuickTrain War Army2", False, "Bool")
	IniReadS($g_aChkArmyWar[2], $g_sProfileConfigPath, "war preparation", "QuickTrain War Army3", False, "Bool")

	For $i = 0 To $eTroopCount - 1
		IniReadS($g_aiWarCompTroops[$i], $g_sProfileConfigPath, "war preparation", $g_asTroopShortNames[$i], 0, "Int")
	Next
	For $j = 0 To $eSpellCount - 1
		IniReadS($g_aiWarCompSpells[$j], $g_sProfileConfigPath, "war preparation", $g_asSpellShortNames[$j], 0, "Int")
	Next

	IniReadS($g_bRequestCCForWar, $g_sProfileConfigPath, "war preparation", "RequestCC War", False, "Bool")
	$g_sTxtRequestCCForWar = IniRead($g_sProfileConfigPath, "war preparation", "RequestCC War Text", "War troop please")
	
	;================================================== Bot Humanization - Added By rulesss ==================== ;
	
	IniReadS($g_ichkUseBotHumanization, $g_sProfileConfigPath, "Bot Humanization", "chkUseBotHumanization", $g_ichkUseBotHumanization, "int")
	IniReadS($g_ichkUseAltRClick, $g_sProfileConfigPath, "Bot Humanization", "chkUseAltRClick", $g_ichkUseAltRClick, "int")
	IniReadS($g_ichkCollectAchievements, $g_sProfileConfigPath, "Bot Humanization", "chkCollectAchievements", $g_ichkCollectAchievements, "int")
	IniReadS($g_ichkLookAtRedNotifications, $g_sProfileConfigPath, "Bot Humanization", "chkLookAtRedNotifications", $g_ichkLookAtRedNotifications, "int")
	For $i = 0 To 12
		IniReadS($g_iacmbPriority[$i], $g_sProfileConfigPath, "Bot Humanization", "cmbPriority[" & $i & "]", $g_iacmbPriority[$i], "int")
	Next
	For $i = 0 To 1
		IniReadS($g_iacmbMaxSpeed[$i], $g_sProfileConfigPath, "Bot Humanization", "cmbMaxSpeed[" & $i & "]", $g_iacmbMaxSpeed[$i], "int")
	Next
	For $i = 0 To 1
		IniReadS($g_iacmbPause[$i], $g_sProfileConfigPath, "Bot Humanization", "cmbPause[" & $i & "]", $g_iacmbPause[$i], "int")
	Next
	For $i = 0 To 1
		IniReadS($g_iahumanMessage[$i], $g_sProfileConfigPath, "Bot Humanization", "humanMessage[" & $i & "]", $g_iahumanMessage[$i])
	Next
	IniReadS($g_icmbMaxActionsNumber, $g_sProfileConfigPath, "Bot Humanization", "cmbMaxActionsNumber", $g_icmbMaxActionsNumber, "int")
	IniReadS($g_ichallengeMessage, $g_sProfileConfigPath, "Bot Humanization", "challengeMessage", $g_ichallengeMessage)
	
EndFunc   ;==>ReadConfig_RKMod
