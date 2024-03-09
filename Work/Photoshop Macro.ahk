#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

guiEdit:=false
click:=false
mouse:="n"
Array[]:=xPositions
Array[]:=yPositions
Array[]:=MouseClickTypes
Array[]:=SleepLengths
ClickCount:=1
newClickCount:=1

loop
{
	if !GetKeyState("CapsLock", "T")
	{
		if GetKeyState("RALT", "P")
		{
			mouse:="left"
			click:=true
		}
		else if GetKeyState("RCTRL", "P")
		{
			mouse:="middle"
			click:=true
		}
		else if GetKeyState("RSHIFT", "P")
		{
			mouse:="right"
			click:=true
		} 
		if (click)
		{
			MouseGetPos, xpos, ypos
			
			GUI, Add, Text,, Sleep length:
			GUI, Add, Edit, r1 w10, sleepLength, 10
			Gui, Add, Button, default, OK
			GUI, Show
			
			guiEdit = true
			return
			
			ButtonOK:
			GuiClose:
			GuiEscape:
			Gui, Submit
			xPositions.InsertAt(xpos)
			xPositions.InsertAt(ypos)
			MouseClickTypes.InsertAt(mouse)
			SleepLengths.InsertAt(sleepLength)
			
			ClickCount:=ClickCount + 1
			click=false
			sleep 100
		}
	}
	else
	{
		loop
		{
			loop ClickCount
			{
				click MouseClickTypes[newClickCount] xPositions[newClickCount] yPositions[newClickCount]
				sleep SleepLengths[newClickCount]
				newClickCount:=newClickCount+=1
			}
			send {CTRL DOWN} {TAB}
			sleep 10
			Send {CTRL UP}
			sleep 100
		}
	}
}
	