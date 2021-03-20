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
Capslock & Shift::SendInput {Blind}{Esc Down}
Capslock & Shift up::SendInput {Blind}{Esc Up}
Capslock & Enter::SendInput {Blind}{Esc Down}
Capslock & Enter up::SendInput {Blind}{Esc Up}
Shift & Capslock::SendInput {Blind}{Esc Down}
Shift & Capslock up::SendInput {Blind}{Esc Up}
; del backspace
Capslock & x::SendInput {Blind}{Del Down}
Capslock & x up::SendInput {Blind}{Del Up}
Capslock & a::SendInput {Blind}{BS Down}
Capslock & a up::SendInput {Blind}{BS Up}
; copy & paste
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
; Caps Lock toggle
^Capslock::Capslock


; 去除复制来的内容里的回车
!#c::
    tmp := RegExReplace(clipboard, "(\S.*?)\R(.*?\S)", "$1 $2")
    clipboard := tmp
    ; StringReplace clipboard, clipboard, % " ", % "", A
    clipwait 0.1
return
