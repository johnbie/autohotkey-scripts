#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

	;Query Rename
	if GetKeyState("RButton", "P")
	{
		MouseGetPos, xpos, ypos
		sleep 200
		;send t
		ypos:=ypos+130
		send {Click %xpos%, %ypos%}
		sleep 200
		ypos:=ypos-130
		MouseMove %xpos%, %ypos%
	}