#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

loop
{
	if GetKeyState("Capslock", "P")
	{
		SendInput {CTRL DOWN}
		SendInput {RIGHT}{CTRL UP}
		SendInput {CTRL DOWN}{SHIFT DOWN}
		SendInput {RIGHT}{CTRL UP}{SHIFT UP}
		Send {BS 3}
		Send {RIGHT}
	}
	if 1 = 2
	{
		SendInput {CTRL DOWN}
		SendInput {RIGHT}{CTRL UP}
		SendInput {CTRL DOWN}{SHIFT DOWN}
		SendInput {LEFT}{CTRL UP}{SHIFT UP}
		Send {BS}
		SendInput {CTRL DOWN}
		SendInput {RIGHT}{CTRL UP}
		Send {RIGHT}
		SLEEP 2
	}
	;SendInput {del 5}
	;SendInput {DOWN}
	;sleep 1
	if GetKeyState("Esc", "P")
	{
		ExitApp
	}
}