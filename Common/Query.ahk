#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

Add := 22

xPos:=0
yPos:=0

xMovePos:=1108
yMovePos:=460

loop
{
	if GetKeyState("1", "P")
	{
		MouseGetPos, xPos, yPos
	}
	if GetKeyState("2", "P")
	{
		yPosTemp:=0
		MouseGetPos, 0, yPosTemp
		yDifTemp:=yPosTemp-yPos
		Add:=yDifTemp/13
	}
	if GetKeyState("3", "P")
	{
		yPosTemp:=0
		MouseGetPos, 0, yPosTemp
		yDifTemp:=yPosTemp-yPos
		Add:=yDifTemp/16
	}
	if GetKeyState("4", "P")
	{
		MouseGetPos, xMovePos, yMovePos
	}
	if GetKeyState("s", "P")
	{
		BlockInput On
		MouseGetPos, xPos, yPos
		yPos:= yPos + Add
		SendInput {Click %xMovePos%, %yMovePos%}
		SendInput {CTRL DOWN}
		sleep 50
		SendInput {a}{v}
		SendInput {CTRL UP}
		SendInput {CTRL DOWN}
		SendInput {a}{v}
		SendInput {CTRL UP}
		sleep 100
		SendInput {Click %xPos%, %yPos%}
		BlockInput Off
	}
	if GetKeyState("d", "P")
	{
		BlockInput On
		MouseGetPos, xPos, yPos
		yPos:= yPos + Add
		SendInput {Click %xMovePos%, %yMovePos%}
		SendInput {CTRL DOWN}
		sleep 50
		SendInput {a}{v}
		SendInput {CTRL UP}
		sleep 100
		SendInput {Click %xPos%, %yPos%}
		BlockInput Off
	}
	if GetKeyState("Esc", "P")
	{
		ExitApp
	}
}