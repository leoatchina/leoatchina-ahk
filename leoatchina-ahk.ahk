; XButton1是回退， XButton2是前进
; 先侧键再右键同时按作为中键
; XButton1 & RButton::SendInput {Blind}{MButton Down}
; XButton1 & RButton up::SendInput {Blind}{MButton Up}
; RButton & XButton1::MButton

; 音量调节
; XButton1 & WheelUp::Send {Volume_Up}
; XButton1 & WheelDown::Send {Volume_Down}

#Persistent
SetCapsLockState, AlwaysOff
; Capslock + hjkl (left, down, up, right)
Capslock & h::Send {Blind}{Left Down}
Capslock & h up::Send {Blind}{Left Up}
Capslock & j::Send {Blind}{Down Down}
Capslock & j up::Send {Blind}{Down Up}
Capslock & k::Send {Blind}{Up Down}
Capslock & k up::Send {Blind}{Up Up}
Capslock & l::Send {Blind}{Right Down}
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
Shift & Capslock::SendInput {Blind}{Esc Down}
Shift & Capslock up::SendInput {Blind}{Esc Up}
Capslock & Enter::SendInput {Blind}{Esc Down}
Capslock & Enter up::SendInput {Blind}{Esc Up}
Capslock & \::SendInput {Blind}{Esc Down}
Capslock & \ up::SendInput {Blind}{Esc Up}
; del BS
Capslock & x::SendInput {Blind}{Del Down}
Capslock & x up::SendInput {Blind}{Del Up}
Capslock & BS::SendInput {Blind}{Del Down}
Capslock & BS up::SendInput {Blind}{Del Up}
; copy & paste
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
; Caps Lock toggle
Capslock & Ctrl::SendInput {Blind}{Capslock Down}
Capslock & Ctrl up::SendInput {Blind}{Capslock Up}
Ctrl & Capslock::SendInput {Blind}{Capslock Down}
Ctrl & Capslock up::SendInput {Blind}{Capslock Up}

; Shift & Esc::SendInput {Blind}{Shift & ~ Down}
; Shift & Esc up::SendInput {Blind}{Shift & ~ Up}
; Esc & Shift::SendInput {Blind}{Shift & ~ Down}
; Esc & Shift up::SendInput {Blind}{Shift & ~ Up}

; Esc::SendInput {Blind}{~ Down}
; Esc up::SendInput {Blind}{~ Up}
; xbUTTON1是回退， XButton2是前进
; 先侧键再右键同时按作为中键
; XButton1 & RButton::SendInput {Blind}{MButton}
; 音量调节
; XButton1 & WheelUp::Send {Volume_Up}
; XButton1 & WheelDown::Send {Volume_Down}

; 去除复制来的内容里的回车, 按win+alt+c, ! 是alt ,  # 是win
!#c::
    tmp := RegExReplace(clipboard, "(\S.*?)\R(.*?\S)", "$1 $2")
    clipboard := tmp
    ; StringReplace clipboard, clipboard, % " ", % "", A
    clipwait 0.1
return

; proe 两侧键作为中键
#NoEnv
#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
#UseHook
#IfWinActive ahk_exe xtop.exe
	XButton1::MButton
	XButton2::MButton
