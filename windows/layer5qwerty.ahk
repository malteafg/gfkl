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

; Navigation
CapsLock & k::Up
CapsLock & m::Left
CapsLock & j::Down
CapsLock & l::Right
CapsLock & i::^Left
CapsLock & o::^Right
CapsLock & u::Home
CapsLock & p::End
CapsLock & y::PgUp
CapsLock & h::PgDn

CapsLock & '::Delete
CapsLock & `;::Backspace
CapsLock & .::^Delete
CapsLock & ,::^Backspace
CapsLock & n::CapsLock

; Media
CapsLock & q::Media_Play_Pause
CapsLock & w::Media_Prev
CapsLock & e::Media_Next
CapsLock & t::Send {Volume_Up}
CapsLock & g::Send {Volume_Down}
CapsLock & r::Send {Volume_Mute}

; Shortcuts
CapsLock & z::^z
CapsLock & x::^x
CapsLock & c::^c
CapsLock & v::^v
CapsLock & a::^+Tab
CapsLock & s::^Tab
CapsLock & d::^w
CapsLock & f::^t

CapsLock & Space::Space
CapsLock & Enter::Enter
CapsLock & Backspace::Backspace