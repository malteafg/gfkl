#NoEnv                      ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                     ; Enable warnings to assist with detecting common errors.
#SingleInstance FORCE       ; Skip invocation dialog box and silently replace previously executing instance of this script.
SendMode Input              ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


;================================================================================================
;  CapsLock processing.  Must double tap CapsLock to toggle CapsLock mode on or off.
;================================================================================================
; Must double tap CapsLock to toggle CapsLock mode on or off.
CapsLock::
    KeyWait, CapsLock                                                   ; Wait forever until Capslock is released.
    
return



;================================================================================================
; Hot keys with CapsLock modifier.  See https://autohotkey.com/docs/Hotkeys.htm#combo
;================================================================================================

; GOOGLE the selected text.
; CapsLock & g::
;     ClipboardGet()
;     ClipboardRestore()
; Return

; Navigation
CapsLock & e::Up
CapsLock & l::Left
CapsLock & n::Down
CapsLock & i::Right
CapsLock & u::^Left
CapsLock & y::^Right
CapsLock & (::^Down
CapsLock & )::^Up
CapsLock & f::Home
CapsLock & `;::End
CapsLock & =::PgUp
CapsLock & -::PgDn
; CapsLock & e::WheelUp
; CapsLock & d::WheelDown

CapsLock & '::Delete
CapsLock & o::Backspace
CapsLock & .::^Delete
CapsLock & ,::^Backspace
CapsLock & w::CapsLock
CapsLock & m::Insert
CapsLock & +::AppsKey

; Media
CapsLock & q::Media_Play_Pause
CapsLock & c::Media_Prev
CapsLock & h::Media_Next
CapsLock & k::Send {Volume_Up}
CapsLock & g::Send {Volume_Down}
CapsLock & p::Send {Volume_Mute}

; Shortcuts
CapsLock & z::^z
CapsLock & x::^x
CapsLock & d::^c
CapsLock & v::^v
CapsLock & a::^a
CapsLock & s::^s
CapsLock & r::^f
CapsLock & t::^t

; Top row
CapsLock & [::^+Tab
CapsLock & ]::^Tab
CapsLock & *::^F4

CapsLock & Space::Space
CapsLock & Enter::Enter
CapsLock & Backspace::Backspace
CapsLock & Tab::Run chrome.exe
CapsLock & Esc::!F4


;+++++++++++++++++++++++++++++++++++++++++++++++++++++++++

;================================================================================================
; Clipboard helper functions.
;================================================================================================
ClipboardGet()
{
    OldClipboard:= ClipboardAll                         ;Save existing clipboard.
    Clipboard:= ""
    Send, ^c                                            ;Copy selected test to clipboard
	ClipWait 0
    If ErrorLevel
        {
        Run chrome.exe
        Return
        }
	Else {
		Run http://www.google.com/search?q=%clipboard%             ; Launch with contents of clipboard
		Return
	}
}


ClipboardRestore()
{
    Clipboard:= OldClipboard
}


