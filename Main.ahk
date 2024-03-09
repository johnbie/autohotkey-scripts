#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force ; only one instance of script can run
#Persistent ; to make it run indefinitely

; escape
; !#Esc:: ExitApp

; Folders
AutohotkeyDir:="E:\06_Data\01_Cloud\Google Drive\00_Workspace\Macro"
^!1::Run, %AutohotkeyDir%
^!#R::RUN "C:\RECYCLE"

; AutoHotKey Scripts
^!Numpad0::Run %AutohotkeyDir%\Main.ahk
^!Numpad1::Run %AutohotkeyDir%\Common\DementedMouseCord.ahk
^!Numpad2::Run %AutohotkeyDir%\Common\Query.ahk
^!Numpad3::Run %AutohotkeyDir%\Common\TFS_Update.ahk

; AutoHotKey Commands
; #Z::Click down
; #C::Click right
; `::0