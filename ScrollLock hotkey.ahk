#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#if GetKeyState("ScrollLock", "T")
{
SoundBeep
c::Run "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"
f::Run "https://www.facebook.com/"
d:: Run, Explorer "D:\Downloads"

; Windows on Top
t:: Winset, Alwaysontop, , A
return

; Custom volume buttons
NumpadAdd:: Send {Volume_Up} ;shift + numpad plus
NumpadSub:: Send {Volume_Down} ;shift + numpad minus
break::Send {Volume_Mute} ; Break key mutes
return
}