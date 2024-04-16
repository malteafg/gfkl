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
CapsLock & e::Up
CapsLock & h::Left
CapsLock & n::Down
CapsLock & i::Right
CapsLock & u::^Left
CapsLock & y::^Right
CapsLock & f::Home
CapsLock & `;::End
CapsLock & z::PgUp
CapsLock & p::PgDn

CapsLock & '::Delete
CapsLock & o::Backspace
CapsLock & .::^Delete
CapsLock & ,::^Backspace
CapsLock & b::CapsLock

; Media
CapsLock & q::Media_Play_Pause
CapsLock & c::Media_Prev
CapsLock & l::Media_Next
CapsLock & k::Send {Volume_Up}
CapsLock & g::Send {Volume_Down}
CapsLock & m::Send {Volume_Mute}

; Shortcuts
CapsLock & v::^z
CapsLock & w::^x
CapsLock & d::^c
CapsLock & j::^v
CapsLock & a::^+Tab
CapsLock & s::^Tab
CapsLock & r::^w
CapsLock & t::^t

CapsLock & Space::Space
CapsLock & Enter::Enter
CapsLock & Backspace::Backspace