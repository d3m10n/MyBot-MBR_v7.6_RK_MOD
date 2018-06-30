#cs ----------------------------------------------------------------------------

 AutoIt Version: 3.3.14.5
 Author:         myName

 Script Function:
	Template AutoIt script.

#ce ----------------------------------------------------------------------------

; Script Start - Add your code below here


Func CheckAutoCamp() ; Only first Run and th5 + (Then every time he does the troops he will do it alone.)
	Local $dbg = 0
	If $dbg = 1 Then Setlog($g_iTotalSpellValue)
	Local $iCmpSpell = StringCompare($g_iTotalSpellValue, "0")
        If $iCmpSpell = 0 And $g_iTownHallLevel >= 5 Then ; Spell camp
            click(30, 584)
            if _sleep(1000) then return 
            click(407, 132)
            if _sleep(1000) then return 
			Local $NewSpellOCR = getArmyCapacityOnTrainTroops(48, 160) ; Check spell camps
            click(280, 132)
            if _sleep(1000) then return 
			Local $NewCampOCR = getArmyCapacityOnTrainTroops(48, 160) ; Check army camps
				click(825, 122)
			if _sleep(1000) then return 
		Endif
EndFunc   ;==>CheckAutoCamp

Func chkAutoCamp()
	If GUICtrlRead($g_hChkAutoCamp) = $GUI_CHECKED Then
	$g_iChkAutoCamp = 1		
	Else
	$g_iChkAutoCamp = 0		
	EndIf
EndFunc ;==>chkLabCheck