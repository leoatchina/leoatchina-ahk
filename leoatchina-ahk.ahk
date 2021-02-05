; Autohotkey Capslock Remapping Script
; - Deactivates capslock for normal (accidental) use.
; - Hold Capslock and drag anywhere in a window to move it (not just the title bar).
; - Access the following functions when pressing Capslock:
    ;Cursor keys        - h, j, k, l
    ;Home,End           - N, ;
    ;Page up,down       - - =
    ;Esc                - CapsLock only
    ;CapsLock           - Space

#Persistent
SetCapsLockState, AlwaysOff

; Capslock + hjkl (left, down, up, right)
Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}

Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}

Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}

Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}
; Home End
Capslock & b::SendInput {Blind}{Home Down}
Capslock & b up::SendInput {Blind}{Home Up}

Capslock & f::SendInput {Blind}{End Down}
Capslock & f up::SendInput {Blind}{End Up}
; PgUp PgDn
Capslock & u::SendInput {Blind}{PgUp Down}
Capslock & u up::SendInput {Blind}{PgUp Up}

Capslock & d::SendInput {Blind}{PgDn Down}
Capslock & d up::SendInput {Blind}{PgDn Up}
; Esc
Capslock & c::SendInput {Blind}{Esc Down}
Capslock & c up::SendInput {Blind}{Esc Up}
RCtrl & Space::SendInput {Blind}{Esc Down}
RCtrl & Space up::SendInput {Blind}{Esc Up}
; insert del
Capslock & i::SendInput {Blind}{Insert Down}
Capslock & i up::SendInput {Blind}{Insert Up}
Capslock & x::SendInput {Blind}{Del Down}
Capslock & x up::SendInput {Blind}{Del Up}

; make ctrl+Caps-Lock the Caps Lock toggle
^Capslock::Capslock
