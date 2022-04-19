#Persistent
SetCapsLockState, AlwaysOff
; ----------------
; Input method control
; ----------------
Capslock & o::Send {Ctrl down}{Shift}{Ctrl up}
; ctrl+' invoke sogoupinyin
Capslock & y::Send,^,
; ctrl+, invoke sogouwubi
Capslock & g::Send,^'
; ----------------
; Copy & paste
; ----------------
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
; ----------------
; Top
; ----------------
Capslock & t::Send,#+!t
; ----------------
; Run
; ----------------
Capslock & r::Send,#s
; ----------------
; Volume control 
; ----------------
Capslock & m::Send {Mute}
Capslock & ]::Send {Volume_Up}
Capslock & [::Send {Volume_Down}
; ----------------
; Left, Down, Up, Right
; ----------------
Capslock & h::Send {Blind}{Left Down}
Capslock & h up::Send {Blind}{Left Up}
Capslock & a::Send {Blind}{Left Down}
Capslock & a up::Send {Blind}{Left Up}
Capslock & j::Send {Blind}{Down Down}
Capslock & j up::Send {Blind}{Down Up}
Capslock & s::Send {Blind}{Down Down}
Capslock & s up::Send {Blind}{Down Up}
Capslock & k::Send {Blind}{Up Down}
Capslock & k up::Send {Blind}{Up Up}
Capslock & w::Send {Blind}{Up Down}
Capslock & w up::Send {Blind}{Up Up}
Capslock & l::Send {Blind}{Right Down}
Capslock & l up::Send {Blind}{Right Up}
Capslock & d::Send {Blind}{Right Down}
Capslock & d up::Send {Blind}{Right Up}
; ----------------
; Home End
; ----------------
Capslock & b::SendInput {Blind}{Home Down}
Capslock & b up::SendInput {Blind}{Home Up}
Capslock & f::SendInput {Blind}{End Down}
Capslock & f up::SendInput {Blind}{End Up}
; ----------------
; PgUp PgDn
; ----------------
Capslock & p::SendInput {Blind}{PgUp Down}
Capslock & p up::SendInput {Blind}{PgUp Up}
Capslock & n::SendInput {Blind}{PgDn Down}
Capslock & n up::SendInput {Blind}{PgDn Up}
; ----------------
; Esc
; ----------------
Capslock & q::SendInput {Blind}{Esc Down}
Capslock & q up::SendInput {Blind}{Esc Up}
Capslock & Tab::SendInput {Blind}{Esc Down}
Capslock & Tab up::SendInput {Blind}{Esc Up}
Capslock & Enter::SendInput {Blind}{Esc Down}
Capslock & Enter up::SendInput {Blind}{Esc Up}
; ----------------
; BS Del
; ----------------
Capslock & z::SendInput {Blind}{BS Down}
Capslock & z up::SendInput {Blind}{BS Up}
Capslock & x::SendInput {Blind}{Del Down}
Capslock & x up::SendInput {Blind}{Del Up}
Capslock & BS::SendInput {Blind}{Del Down}
Capslock & BS up::SendInput {Blind}{Del Up}
; ----------------
; Capslock toggle
; ----------------
Capslock & u::SendInput {Blind}{Capslock Down}
Capslock & u up::SendInput {Blind}{Capslock Up}
; ----------------
; Insert
; ----------------
Capslock & i::SendInput {Blind}{Insert Down}
Capslock & i up::SendInput {Blind}{Insert Up}
; ----------------
; Fn
; ----------------
Capslock & 1::SendInput    {Blind}{F1 Down}
Capslock & 1 up::SendInput {Blind}{F1 Up}
Capslock & 2::SendInput    {Blind}{F2 Down}
Capslock & 2 up::SendInput {Blind}{F2 Up}
Capslock & 3::SendInput    {Blind}{F3 Down}
Capslock & 3 up::SendInput {Blind}{F3 Up}
Capslock & 4::SendInput    {Blind}{F4 Down}
Capslock & 4 up::SendInput {Blind}{F4 Up}
Capslock & 5::SendInput    {Blind}{F5 Down}
Capslock & 5 up::SendInput {Blind}{F5 Up}
Capslock & 6::SendInput    {Blind}{F6 Down}
Capslock & 6 up::SendInput {Blind}{F6 Up}
Capslock & 7::SendInput    {Blind}{F7 Down}
Capslock & 7 up::SendInput {Blind}{F7 Up}
Capslock & 8::SendInput    {Blind}{F8 Down}
Capslock & 8 up::SendInput {Blind}{F8 Up}
Capslock & 9::SendInput    {Blind}{F9 Down}
Capslock & 9 up::SendInput {Blind}{F9 Up}
Capslock & 0::SendInput    {Blind}{F10 Down}
Capslock & 0 up::SendInput {Blind}{F10 Up}
Capslock & -::SendInput    {Blind}{F11 Down}
Capslock & - up::SendInput {Blind}{F11 Up}
Capslock & =::SendInput    {Blind}{F12 Down}
Capslock & = up::SendInput {Blind}{F12 Up}
; ----------------
; 去除复制来的内容里的回车, 按win+alt+c,  # 是win, ! 是alt
; ----------------
#!c::
    tmp := RegExReplace(clipboard, "(\S.*?)\R(.*?\S)", "$1 $2")
    clipboard := tmp
    ; StringReplace clipboard, clipboard, % " ", % "", A
    clipwait 0.1
return
; ----------------
; NOTE: For proe 两侧键作为中键
; ----------------
#NoEnv
#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
#UseHook
#IfWinActive ahk_exe xtop.exe
	XButton1::MButton
	XButton2::MButton
