#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

GUI, Add, Text,, Number of objects to rename:
GUI, Add, Edit, r1 w100 vAmount, 0
GUI, Add, Text,, Pretext:
GUI, Add, Edit, r1 w100 vPretext, pre_
GUI, Add, Text,, Initial number:
GUI, Add, Edit, r1 w100 vInitial, 1
GUI, Add, Text,, Increment number:
GUI, Add, Edit, r1 w100 vIncrement, 1
GUI, Add, Text,, Aftertext:
GUI, Add, Edit, r1 w100 vAftertext, _after
Gui, Add, Button, default, OK
GUI, Show

guiEdit = true
return

ButtonOK:
GuiClose:
GuiEscape:
Gui, Submit
ready:=false
vNumber:=vInitial
sleep 5000

if GetKeyState("CapsLock", "T")
{
	loop
	{
		send vNumber
		vNumber:= vNumber + vIncrement
		sleep 10
		send {TAB}
		sleep 300
	}
}