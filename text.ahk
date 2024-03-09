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
		loop 3
		{
			SendInput {bs}
			SendInput {bs}
			SendInput {ENTER}
			SendInput {CTRL DOWN}
			sleep 2
			SendInput {RIGHT}{CTRL UP}
			sleep 2
		}
		SendInput {RIGHT}
		SendInput {CTRL DOWN}
		sleep 5
		SendInput {RIGHT}
		sleep 5
		SendInput {CTRL UP}
		sleep 5
	}
	if GetKeyState("Esc", "P")
	{
		ExitApp
	}
}