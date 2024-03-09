#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; only one instance of script can run

titleXPos:=0
titleYPos:=0

pubXPos:=0
pubYPos:=0

percent:=55
price:=9
salePrice:=4.05

;GUI, Add, Text,, percent off:
;GUI, Add, Edit, r1 w100 vPercent, 50
;GUI, Add, Text,, original price:
;GUI, Add, Edit, r1 w100 vPrice, 4.00
;GUI, Add, Button, default, OK
;GUI, Show

;guiEdit = true
;return

;ButtonOK:
;GuiClose:
;GuiEscape:
;Gui, Submit

;return

loop
{
	if GetKeyState("1", "P") ; press 1 to change title location (by mouse position)
	{
		MouseGetPos, titleXPos, titleYPos
	}
	if GetKeyState("2", "P") ; press 2 to change publish location (by mouse position)
	{
		MouseGetPos, pubXPos, pubYPos
	}
	if GetKeyState("RButton", "P") ; press right-click to open product in new tab
	{
		BlockInput On
		sleep 50
		Send t
	}
	if GetKeyState("q", "P") ; press q for automation
	{
		BlockInput On
		SendInput {Click %titleXPos%, %titleYPos%} ; click on title
		SendInput {Home} ; or {End}
		
		send %percent%
		SendRaw `% OFF Holiday Sale - 
		send {Space}
		SendInput {TAB 9}
		SendInput %salePrice% 
		; update price. need to verify
		
		SendInput {TAB 5}
		
		SendInput 2016 Holiday Sale {ENTER}
		SendRaw From December 1st, 2016 until December 29th, 2016 enjoy the Holiday Sale with items UP TO 60`% OFF!
		Send {ENTER 2}
		SendRaw Original Price: $
		SendInput %price%
		send {Enter 2}
		SendRaw Sale Price: $
		SendInput %salePrice%
		SendInput {ENTER 2}
		SendRaw --------------------------------------------------
		SendInput {ENTER 2}
		
		SendInput {Click %pubXPos%, %pubYPos%} ; click publish
	}
	
	if GetKeyState("p", "P") ; press p to exit app
	{
		ExitApp
	}
	
}

return