#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
CoordMode, Mouse, Screen ; makes mouse coordinates to be relative to screen.

loop
{
	if GetKeyState("CapsLock", "T")
	{
		sleep 10
		send {CTRL DOWN} {SHIFT DOWN} {s}
		sleep 10
		send {CTRL UP} {SHIFT UP}
		sleep 400
		send {TAB}
		sleep 30
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 1
		send p
		sleep 0
		send {ENTER}
		sleep 10
		send {ENTER}
		sleep 10
		send {ENTER}
		sleep 10
		send {ENTER}
		sleep 300
		send {CTRL DOWN} {w}
		sleep 10
		send {CTRL UP}
		sleep 300
		send {n}
		sleep 200
	}
	if GetKeyState("p", "P")
	{
		ExitApp
	}
}