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

	; ================================================== CSV SPEED PART - Added By rulesss ================================ ;

	IniReadS($icmbCSVSpeed[$LB], $g_sProfileConfigPath, "RK CSV Speed", "cmbCSVSpeed[LB]", 2, "Int")
	IniReadS($icmbCSVSpeed[$DB], $g_sProfileConfigPath, "RK CSV Speed", "cmbCSVSpeed[DB]", 2, "Int")

; ================================================== Super XP PART - Added By rulesss ==================================== ;

	IniReadS($ichkEnableSuperXP, $g_sProfileConfigPath, "RK GoblinXP", "EnableSuperXP", 0, "int")
	IniReadS($irbSXTraining, $g_sProfileConfigPath, "RK GoblinXP", "SXTraining", 1, "int")
	IniReadS($itxtMaxXPtoGain, $g_sProfileConfigPath, "RK GoblinXP", "MaxXptoGain", 500, "int")
	IniReadS($ichkSXBK, $g_sProfileConfigPath, "RK GoblinXP", "SXBK", $eHeroNone)
	IniReadS($ichkSXAQ, $g_sProfileConfigPath, "RK GoblinXP", "SXAQ", $eHeroNone)
    IniReadS($ichkSXGW, $g_sProfileConfigPath, "RK GoblinXP", "SXGW", $eHeroNone)
     
	;================================================== Forecast PART - Added By rulesss ================================= ;
	
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
	
	;==================================================== Skip Request CC - Added By rulesss ============================ ;
	$g_bSkipRequestCC = (IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC", "0") = "1")
	$g_iSkipRequestCCTroop = Int(IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC_Troop", "0"))
	$g_iSkipRequestCCSpell = Int(IniRead($g_sProfileConfigPath, "donate", "SkipRequestCC_Spell", "0"))
    
	;================================================== Move the Request CC Troops - Added By rulesss =================== ;
	
	IniReadS($g_bReqCCFirst, $g_sProfileConfigPath, "planned", "ReqCCFirst", $g_bReqCCFirst, "Bool")
	
EndFunc   ;==>ReadConfig_RKMod

Func SaveConfig_RKMod()  ; due to mini mode no guitCtrols Reads in this function
	ApplyConfig_RKMod(GetApplyConfigSaveAction())
	

	; ================================================== CSV SPEED PART - Added By rulesss =============================== ;


	_Ini_Add("RK CSV Speed", "cmbCSVSpeed[LB]", $icmbCSVSpeed[$LB])
	_Ini_Add("RK CSV Speed", "cmbCSVSpeed[DB]", $icmbCSVSpeed[$DB])

	; ================================================== Super XP PART - Added By rulesss ================================ ;

	_Ini_Add("RK GoblinXP", "EnableSuperXP", $ichkEnableSuperXP)
	_Ini_Add("RK GoblinXP", "SXTraining",  $irbSXTraining)
	_Ini_Add("RK GoblinXP", "SXBK", $ichkSXBK)
	_Ini_Add("RK GoblinXP", "SXAQ", $ichkSXAQ)
	_Ini_Add("RK GoblinXP", "SXGW", $ichkSXGW)
	_Ini_Add("RK GoblinXP", "MaxXptoGain", GUICtrlRead($txtMaxXPtoGain))
    
    
	 ; ================================================== Forecast PART - Added By rulesss  ============================== ;
	
	_Ini_Add("RK Forecast", "txtForecastBoost", GUICtrlRead($txtForecastBoost))
	_Ini_Add("RK Forecast", "txtForecastPause", GUICtrlRead($txtForecastPause))
	_Ini_Add("RK Forecast", "cmbForecastHopingSwitchMax", _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMax))
	_Ini_Add("RK Forecast", "txtForecastHopingSwitchMax", GUICtrlRead($txtForecastHopingSwitchMax))
	_Ini_Add("RK Forecast", "cmbForecastHopingSwitchMin", _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMin))
	_Ini_Add("RK Forecast", "txtForecastHopingSwitchMin", GUICtrlRead($txtForecastHopingSwitchMin))
	_Ini_Add("RK Forecast", "chkForecastBoost", $iChkForecastBoost ? 1 : 0)
	_Ini_Add("RK Forecast", "chkForecastPause", $iChkForecastPause ? 1 : 0)
	_Ini_Add("RK Forecast", "chkForecastHopingSwitchMax", $ichkForecastHopingSwitchMax ? 1 : 0)
	_Ini_Add("RK Forecast", "chkForecastHopingSwitchMin", $ichkForecastHopingSwitchMin ? 1 : 0)
	_Ini_Add("RK Forecast", "cmbSwLang", _GUICtrlComboBox_GetCurSel($cmbSwLang))
	
	 ; ================================================== Skip Request CC - Added By rulesss  ============================ ;
	_Ini_Add("donate", "SkipRequestCC", $g_bSkipRequestCC ? 1 : 0)
	_Ini_Add("donate", "SkipRequestCC_Troop", $g_iSkipRequestCCTroop)
	_Ini_Add("donate", "SkipRequestCC_Spell", $g_iSkipRequestCCSpell)
    
	;================================================== Move the Request CC Troops - Added By rulesss ==================== ;
	
	_Ini_Add("planned", "ReqCCFirst", $g_bReqCCFirst)

EndFunc   ;==>SaveConfig_RKMod

Func ApplyConfig_RKMod($TypeReadSave)

	Switch $TypeReadSave

		Case "Save"

			; ================================================== CSV SPEED PART - Added By rulesss ========================= ;

		     $icmbCSVSpeed[$LB] = _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$LB])
			 $icmbCSVSpeed[$DB] = _GUICtrlComboBox_GetCurSel($cmbCSVSpeed[$DB])

		
			; ================================================== Super XP PART - Added By rulesss ========================== ;

			$ichkEnableSuperXP = GUICtrlRead($chkEnableSuperXP) = $GUI_CHECKED ? 1 : 0
			$irbSXTraining = GUICtrlRead($rbSXTraining) = $GUI_CHECKED ? 1 : 2
			$ichkSXBK = (GUICtrlRead($chkSXBK) = $GUI_CHECKED) ? $eHeroKing : $eHeroNone
			$ichkSXAQ = (GUICtrlRead($chkSXAQ) = $GUI_CHECKED) ? $eHeroQueen : $eHeroNone
			$ichkSXGW = (GUICtrlRead($chkSXGW) = $GUI_CHECKED) ? $eHeroWarden : $eHeroNone
			$itxtMaxXPtoGain = Int(GUICtrlRead($txtMaxXPtoGain))
            
			; ================================================== Forecast PART - Added By rulesss =========================== ;
			
			$iChkForecastBoost = GUICtrlRead($chkForecastBoost) = $GUI_CHECKED ? 1 : 0
			$iTxtForecastBoost = GUICtrlRead($txtForecastBoost)
			$iChkForecastPause = GUICtrlRead($chkForecastPause) = $GUI_CHECKED ? 1 : 0
			$iTxtForecastPause = GUICtrlRead($txtForecastPause)
			$ichkForecastHopingSwitchMax = (GUICtrlRead($chkForecastHopingSwitchMax) = $GUI_CHECKED)
			$icmbForecastHopingSwitchMax = _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMax)
			$itxtForecastHopingSwitchMax = GUICtrlRead($txtForecastHopingSwitchMax)
			$ichkForecastHopingSwitchMin = (GUICtrlRead($chkForecastHopingSwitchMin) = $GUI_CHECKED)
			$icmbForecastHopingSwitchMin = _GUICtrlComboBox_GetCurSel($cmbForecastHopingSwitchMin)
			$itxtForecastHopingSwitchMin = GUICtrlRead($txtForecastHopingSwitchMin)
			$icmbSwLang = _GUICtrlComboBox_GetCurSel($cmbSwLang)
			$iTxtForecastPause = GUICtrlRead($txtForecastPause)
			
			; ================================================== ; Skip Request CC  - Added by rulesss ======================= ;
			$g_bSkipRequestCC = (GUICtrlRead($g_hChkSkipRequestCC) = $GUI_CHECKED)
			$g_iSkipRequestCCTroop = GUICtrlRead($g_hTxtSkipRequestCCTroop)
			$g_iSkipRequestCCSpell = GUICtrlRead($g_hTxtSkipRequestCCSpell)
			
			; =============================================== Move the Request CC Troops - Added by rulesss =================== ;
			
			$g_bReqCCFirst = (GUICtrlRead($g_hChkReqCCFirst) = $GUI_CHECKED)
			
		Case "Read"

	
			; ================================================== CSV SPEED PART - Added by rulesss ============================  ;

			 _GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$LB], $icmbCSVSpeed[$LB])
			 _GUICtrlComboBox_SetCurSel($cmbCSVSpeed[$DB], $icmbCSVSpeed[$DB])

			; ================================================== Super XP PART - Added by rulesss ============================== ;

			GUICtrlSetState($chkEnableSuperXP, $ichkEnableSuperXP = 1 ? $GUI_CHECKED : $GUI_UNCHECKED)

			chkEnableSuperXP()

			GUICtrlSetState($rbSXTraining, ($irbSXTraining = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($rbSXIAttacking, ($irbSXTraining = 2) ? $GUI_CHECKED : $GUI_UNCHECKED)

			GUICtrlSetData($txtMaxXPtoGain, $itxtMaxXPtoGain)

			GUICtrlSetState($chkSXBK, $ichkSXBK = $eHeroKing ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($chkSXAQ, $ichkSXAQ = $eHeroQueen ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetState($chkSXGW, $ichkSXGW = $eHeroWarden ? $GUI_CHECKED : $GUI_UNCHECKED)
            
			; ================================================= Classic Foure Fingers - Added by rulesss ========================= ;
			cmbStandardDropSidesAB()
			Bridge()
			
			; ================================================== Forecast PART - Added by rulesss ================================ ;
			
			GUICtrlSetState($chkForecastBoost, ($iChkForecastBoost = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($txtForecastBoost, $iTxtForecastBoost)
			chkForecastBoost()
			GUICtrlSetState($chkForecastPause, ($iChkForecastPause = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($txtForecastPause, $iTxtForecastPause)
			chkForecastPause()
			GUICtrlSetState($chkForecastHopingSwitchMax, ($ichkForecastHopingSwitchMax = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($cmbForecastHopingSwitchMax, $icmbForecastHopingSwitchMax)
			GUICtrlSetData($txtForecastHopingSwitchMax, $itxtForecastHopingSwitchMax)
			chkForecastHopingSwitchMax()
			GUICtrlSetState($chkForecastHopingSwitchMin, ($ichkForecastHopingSwitchMin = 1) ? $GUI_CHECKED : $GUI_UNCHECKED)
			_GUICtrlComboBox_SetCurSel($cmbForecastHopingSwitchMin, $icmbForecastHopingSwitchMin)
			GUICtrlSetData($txtForecastHopingSwitchMin, $itxtForecastHopingSwitchMin)
			chkForecastHopingSwitchMin()
			_GUICtrlComboBox_SetCurSel($cmbSwLang, $icmbSwLang)
			
			; ================================================== Skip Request CC - Added by rulesss ============================= ;
			
			GUICtrlSetState($g_hChkSkipRequestCC, $g_bSkipRequestCC ? $GUI_CHECKED : $GUI_UNCHECKED)
			GUICtrlSetData($g_hTxtSkipRequestCCTroop, $g_iSkipRequestCCTroop)
			GUICtrlSetData($g_hTxtSkipRequestCCSpell, $g_iSkipRequestCCSpell)
             
			; ================================================== Move the Request CC Troops - Added by rulesss ================== ;
			
			GUICtrlSetState($g_hChkReqCCFirst, $g_bReqCCFirst = True ? $GUI_CHECKED : $GUI_UNCHECKED)

	EndSwitch

EndFunc   ;==>ApplyConfig_RKMod
