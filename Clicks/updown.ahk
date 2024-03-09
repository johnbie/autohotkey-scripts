#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

loop
{
	send {UP}
	sleep 1000
	if GetKeyState("Esc", "P")
	{
		ExitApp
	}
	send {DOWN}
	sleep 1000
	if GetKeyState("Esc", "P")
	{
		ExitApp
	}
}