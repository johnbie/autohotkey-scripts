#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; only one instance of script can run

number:=0





sleep 1000
Send {NumLock ON}

while number < 256 ; get the numbers in
{
	write_alt_text(number)
	number:=number+1
}

write_alt_text(num) 
{
	first:=SubStr(num,1,1)
	second:=SubStr(num,2,1)
	third:=SubStr(num,3,1)
	SendInput {ALT DOWN}
	sleep 2
	get_to_numpad(first)
	get_to_numpad(second)
	get_to_numpad(third)
	SendInput {ALT UP}
	sleep 2
	SendInput {ENTER}
	sleep 1
}

get_to_numpad(CHAR)
{
	if CHAR = 0 
		SendInput {NUMPAD0}
	if CHAR = 1 
		SendInput {NUMPAD1}
	if CHAR = 2 
		SendInput {NUMPAD2}
	if CHAR = 3 
		SendInput {NUMPAD3}
	if CHAR = 4 
		SendInput {NUMPAD4}
	if CHAR = 5 
		SendInput {NUMPAD5}
	if CHAR = 6 
		SendInput {NUMPAD6}
	if CHAR = 7 
		SendInput {NUMPAD7}
	if CHAR = 8 
		SendInput {NUMPAD8}
	if CHAR = 9 
		SendInput {NUMPAD9}
}
ExitApp