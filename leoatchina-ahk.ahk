#Persistent
SetCapsLockState, AlwaysOff
; ----------------
; map for snipaste
; ----------------
#f::Send ^{F1}
#u::Send ^{F2}
#b::Send !{F1}
; ----------------
; Esc
; ----------------
Capslock & `::SendInput {Blind}{Esc DownTemp}
Capslock & ` up::SendInput {Blind}{Esc Up}
Capslock & Enter::SendInput {Blind}{Esc DownTemp}
Capslock & Enter up::SendInput {Blind}{Esc Up}
; ----------------
; Capslock toggle
; ----------------
Capslock & Tab::SendInput {Blind}{Capslock DownTemp}
Capslock & Tab up::SendInput {Blind}{Capslock Up}
; ----------------
; Input method control change
; ----------------
Capslock & space::Send #{Space}
Capslock & '::Send {Ctrl down}{Shift}{Ctrl up}
; ----------------
; MicrosoftTODO
; ----------------
Capslock & t::RUN shell:AppsFolder\Microsoft.Todos_8wekyb3d8bbwe!App
; ----------------
; Copy & paste
; ----------------
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
; ctrl + alt + shift + win + v is set to evoke registers in ditto
Capslock & alt::^+!#v
; ----------------
; GoldenDict
; ----------------
Capslock & g::^!+g
Capslock & q::^!+q
; ----------------
; zeal
; ----------------
Capslock & z::^!+z
; ----------------
; Run taskmrg
; ----------------
Capslock & m::Run "C:\Windows\system32\taskmgr.exe"
; ----------------
; ----------------
; Explorer
; ----------------
Capslock & e::Run explorer.exe
; ----------------
; Reload ahk scripts
; ----------------
Capslock & r::Reload
; ----------------
; Volume control
; ----------------
Capslock & o::Send {Volume_Mute}
Capslock & u::Send {Volume_Up}
Capslock & i::Send {Volume_Down}
; ----------------
; Left, Down, Up, Right
; ----------------
Capslock & h::Send {Blind}{Left DownTemp}
Capslock & h up::Send {Blind}{Left Up}
Capslock & a::Send {Blind}{Left DownTemp}
Capslock & a up::Send {Blind}{Left Up}
Capslock & j::Send {Blind}{Down DownTemp}
Capslock & j up::Send {Blind}{Down Up}
Capslock & s::Send {Blind}{Down DownTemp}
Capslock & s up::Send {Blind}{Down Up}
Capslock & k::Send {Blind}{Up DownTemp}
Capslock & k up::Send {Blind}{Up Up}
Capslock & w::Send {Blind}{Up DownTemp}
Capslock & w up::Send {Blind}{Up Up}
Capslock & l::Send {Blind}{Right DownTemp}
Capslock & l up::Send {Blind}{Right Up}
Capslock & d::Send {Blind}{Right DownTemp}
Capslock & d up::Send {Blind}{Right Up}
; ----------------
; Home End
; ----------------
Capslock & b::SendInput {Blind}{Home DownTemp}
Capslock & b up::SendInput {Blind}{Home Up}
Capslock & f::SendInput {Blind}{End DownTemp}
Capslock & f up::SendInput {Blind}{End Up}
; ----------------
; PgUp PgDn
; ----------------
Capslock & p::SendInput {Blind}{PgUp DownTemp}
Capslock & p up::SendInput {Blind}{PgUp Up}
Capslock & n::SendInput {Blind}{PgDn DownTemp}
Capslock & n up::SendInput {Blind}{PgDn Up}
; ----------------
; BS Del
; ----------------
Capslock & y::SendInput {Blind}{BS DownTemp}
Capslock & y up::SendInput {Blind}{BS Up}
Capslock & x::SendInput {Blind}{Del DownTemp}
Capslock & x up::SendInput {Blind}{Del Up}
Capslock & backspace::SendInput {Blind}{Del DownTemp}
Capslock & backspace up::SendInput {Blind}{Del Up}
; ----------------
; Insert
; ----------------
Capslock & \::SendInput {Blind}{Insert DownTemp}
Capslock & \ up::SendInput {Blind}{Insert Up}
; ----------------
; Fn
; ----------------
Capslock & 1::SendInput    {Blind}{F1 DownTemp}
Capslock & 1 up::SendInput {Blind}{F1 Up}
Capslock & 2::SendInput    {Blind}{F2 DownTemp}
Capslock & 2 up::SendInput {Blind}{F2 Up}
Capslock & 3::SendInput    {Blind}{F3 DownTemp}
Capslock & 3 up::SendInput {Blind}{F3 Up}
Capslock & 4::SendInput    {Blind}{F4 DownTemp}
Capslock & 4 up::SendInput {Blind}{F4 Up}
Capslock & 5::SendInput    {Blind}{F5 DownTemp}
Capslock & 5 up::SendInput {Blind}{F5 Up}
Capslock & 6::SendInput    {Blind}{F6 DownTemp}
Capslock & 6 up::SendInput {Blind}{F6 Up}
Capslock & 7::SendInput    {Blind}{F7 DownTemp}
Capslock & 7 up::SendInput {Blind}{F7 Up}
Capslock & 8::SendInput    {Blind}{F8 DownTemp}
Capslock & 8 up::SendInput {Blind}{F8 Up}
Capslock & 9::SendInput    {Blind}{F9 DownTemp}
Capslock & 9 up::SendInput {Blind}{F9 Up}
Capslock & 0::SendInput    {Blind}{F10 DownTemp}
Capslock & 0 up::SendInput {Blind}{F10 Up}
Capslock & -::SendInput    {Blind}{F11 DownTemp}
Capslock & - up::SendInput {Blind}{F11 Up}
Capslock & =::SendInput    {Blind}{F12 DownTemp}
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
