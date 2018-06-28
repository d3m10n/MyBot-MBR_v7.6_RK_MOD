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
	
EndFunc   ;==>ReadConfig_RKMod
