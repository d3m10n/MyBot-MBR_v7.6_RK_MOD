; #FUNCTION# ====================================================================================================================
; Name ..........: RK MOD Global Variables
; Description ...: This file Includes several files in the current script and all Declared variables, constant, or create an array.
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



; ================================================== CSV SPEED PART - Added by rulesss =========================================== ;

Global $cmbCSVSpeed[2] = [$LB, $DB]
Global $icmbCSVSpeed[2] = [2, 2]
Global $g_CSVSpeedDivider = 1

; ================================================== Goblin XP PART - Added by rulesss =========================================== ;

;SuperXP / GoblinXP
Global $ichkEnableSuperXP = 0, $irbSXTraining = 1, $ichkSXBK = 0, $ichkSXAQ = 0, $ichkSXGW = 0, $iStartXP = 0, $iCurrentXP = 0, $iGainedXP = 0, $iGainedXPHour = 0, $itxtMaxXPtoGain = 500
Global $DebugSX = 0

; [0] = Queen, [1] = Warden, [2] = Barbarian King
; [0][0] = X, [0][1] = Y, [0][2] = XRandomOffset, [0][3] = YRandomOffset
Global $g_DpGoblinPicnic[3][4] = [[300, 205, 5, 5], [340, 140, 5, 5], [290, 220, 5, 5]]
Global $g_BdGoblinPicnic[3] = [0, "5000-7000", "6000-8000"] ; [0] = Queen, [1] = Warden, [2] = Barbarian King
Global $g_ActivatedHeroes[3] = [False, False, False] ; [0] = Queen, [1] = Warden, [2] = Barbarian King , Prevent to click on them to Activate Again And Again
Global Const $g_minStarsToEnd = 1
Global $g_canGainXP = False

; ================================================ Forecast - (modification by rulesss,kychera) - Added by rulesss =============== ;
Global Const $COLOR_DEEPPINK = 0xFF1493
Global Const $COLOR_DARKGREEN = 0x006400
Global $oIE = ObjCreate("Shell.Explorer.2")
Global $grpForecast
Global $ieForecast
Global $dtStamps[0]
Global $lootMinutes[0]
Global $timeOffset = 0
Global $TimerForecast = 0
Global $lootIndexScaleMarkers
Global $currentForecast
Global $chkForecastBoost = 0, $txtForecastBoost = 0
Global $iChkForecastBoost = 0, $iTxtForecastBoost = 6
Global $chkForecastPause = 0, $txtForecastPause = 0
Global $iChkForecastPause = 0, $iTxtForecastPause = 2
Global $cmbForecastHopingSwitchMax = 0, $cmbForecastHopingSwitchMin = 0
Global $chkForecastHopingSwitchMax = 0, $lblForecastHopingSwitchMax = 0, $txtForecastHopingSwitchMax = 2, $chkForecastHopingSwitchMin = 0, $lblForecastHopingSwitchMin = 0, $txtForecastHopingSwitchMin = 0
Global $ichkForecastHopingSwitchMax = 0, $icmbForecastHopingSwitchMax = 0 , $itxtForecastHopingSwitchMax = 2, $ichkForecastHopingSwitchMin = 0, $icmbForecastHopingSwitchMin = 0, $itxtForecastHopingSwitchMin = 2
Global $icmbSwLang = 0
Global $cmbSwLang = 0

; ================================================ Skip Request CC - Added rulesss =================================================== ;

Global $g_bSkipRequestCC, $g_iSkipRequestCCTroop, $g_iSkipRequestCCSpell 

; ================================================ move the Request CC Troops - Added rulesss ======================================== ;

Global $g_bReqCCFirst = False

; ================================================ AF_SCID - Added rulesss ======================================== ;

;Glabal Variables for Debugging
Global $g_DebugLogAF = 0
Global $g_DebugImageAF = 0

;Global Variables to hold Function Data
Global $g_SwitchSCIDAccFatalErrorAF = False
Global $g_ClkSCIDDisConnBtnAF[4] = [370,215,500,230]
Global $g_ClkSCIDLogOutBtnAF[4] = [605,285,710,310]
Global $g_ClkSCIDConfirmBtnAF[4] = [455,430,615,455]
Global $g_ClkSCIDLoginBtnAF[4] = [120,675,405,700]

Global Const $g_sImgSCIDCross =		@ScriptDir & "\RK MOD\RK AF_SCID\Images\ImgMIS\Cross"
Global Const $g_sImgSCIDAccs =		@ScriptDir & "\RK MOD\RK AF_SCID\Images\ImgAccs"
Global Const $g_sImgSCIDOr =		@ScriptDir & "\RK MOD\RK AF_SCID\Images\ImgMIS\Or"

Global $g_bChkAltuFaltuSCID = False        