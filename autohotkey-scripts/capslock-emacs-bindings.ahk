; Simple script that simulates some of Mac OS X's global Emacs-like text-movement
; keyboard shortcuts (like Control-f) on Windows, by substituting Control with CapsLock.
; See https://support.apple.com/en-us/HT201236 for a reference of all Mac OS X keyboard shortcuts.

#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

CapsLock & f:: ; Control-f, Move one character forward
Send, {Right}
return

CapsLock & b:: ; Control-b, Move one character backward
Send, {Left}
return

CapsLock & p:: ; Control-p, Move up one line
Send, {Up}
return

CapsLock & n:: ; Control-n, Move down one line
Send, {Down}
return

CapsLock & e:: ; Control-e, Move to the end of the line
Send, {End}
return

CapsLock & a:: ; Control-a, Move to the beginning of the line
Send, {Home}
return

CapsLock & d:: ; Control-d, Delete one character to the right of the cursor
Send, {Delete}
return

CapsLock & h:: ; Control-h, Delete one character to the left of the cursor
Send, {BackSpace}
return

CapsLock & k:: ; Control-k, Delete the line after the cursor
Send, {ShiftDown}{End}{ShiftUp}{Del}
return

; Media controls
; Temporarily removing these behaviors because they interfere with existing
; key combinations too much (e.g. the current handling of Shift + P means
; combos like ctrl + shift + p aren't sent in apps like VS Code).
; Solutions should include 1.) finding a way to send the "default" inputs
; 2.) just binding the media controls to another, less problematic key combination
; Maybe just overriding the default LWin key behavior is enough? Do I really ever send
; stuff to the feedback hub?
; 
; Shift & p:: ; Win-shift-p, Media play/pause
; If GetKeyState("LWin","p")
;  Send {Media_Play_Pause}
; else
;   Send P
; return

; ; LWin & f:: ; Win-shift-f, Media forward
; Shift & f:: ; Win-shift-f, Media forward
; If GetKeyState("LWin","p")
;  Send {Media_Next}
; else
;  Send F
; return

; Shift & b:: ; Win-shift-b, Media backward
; If GetKeyState("LWin","p")
;  Send {Media_Prev}
; else
;  Send B
; return

; Extras
CapsLock & -:: ; Insert an em dash
Send, —
return
