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
Capslock & [::SendInput {Blind}{Esc DownTemp}
Capslock & [ up::SendInput {Blind}{Esc Up}
Capslock & ]::SendInput {Blind}{Esc DownTemp}
Capslock & ] up::SendInput {Blind}{Esc Up}
; ----------------
; Del
; ----------------
Capslock & backspace::SendInput {Blind}{Del DownTemp}
Capslock & backspace up::SendInput {Blind}{Del Up}
; ----------------
; Capslock toggle
; ----------------
Capslock & Tab::SendInput {Blind}{Capslock DownTemp}
Capslock & Tab up::SendInput {Blind}{Capslock Up}
; ----------------
; MicrosoftTODO
; ----------------
Capslock & t::RUN shell:AppsFolder\Microsoft.Todos_8wekyb3d8bbwe!App
; ----------------
; Volume control
; ----------------
Capslock & m::Send {Volume_Mute}
Capslock & p::Send {Volume_Up}
Capslock & n::Send {Volume_Down}
; ----------------
; Run taskmgr
; ----------------
Capslock & u::Run "C:\Windows\system32\taskmgr.exe"
; ----------------
; Explorer
; ----------------
Capslock & o::Run explorer.exe
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
Capslock & q::SendInput {Blind}{PgUp DownTemp}
Capslock & q up::SendInput {Blind}{PgUp Up}
Capslock & e::SendInput {Blind}{PgDn DownTemp}
Capslock & e up::SendInput {Blind}{PgDn Up}
; ----------------
; BS Del
; ----------------
Capslock & y::SendInput {Blind}{BS DownTemp}
Capslock & y up::SendInput {Blind}{BS Up}
Capslock & x::SendInput {Blind}{Del DownTemp}
Capslock & x up::SendInput {Blind}{Del Up}
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
; ------------------------------------
; Reload ahk scripts
; ------------------------------------
Capslock & r::Reload
; ------------------------------------
; GoldenDict
; ------------------------------------
Capslock & g::^!+g
Capslock & i::^!+i
; ------------------------------------
; zeal
; ------------------------------------
Capslock & z::^!+z
; ------------------------------------
; Input method control change
; ------------------------------------
CapsLock & Enter::
  Send {LWin Down}{Space Down}
  KeyWait, Enter
  Send {LWin Up}{Space Up}
Return
CapsLock & Space::
  Send {Ctrl Down}{Space Down}
  KeyWait, Space
  Send {Ctrl Up}{Space Up}
Return
CapsLock & Shift::
  Send {Ctrl Down}{. Down}
  KeyWait, Shift
  Send {Ctrl Up}{. Up}
Return
CapsLock & Ctrl::
  Send {Shift Down}{Alt Down}
  KeyWait, Ctrl
  Send {Shift Up}{Alt Up}
Return
; ------------------------------------
; ctrl+shift+`set to ditto paste
; ------------------------------------
Capslock & alt::^!`
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
; ------------------------------------
; 去除复制来的内容里的回车, 按win+alt+c,  # 是win, ! 是alt
; ------------------------------------
#!c::
tmp := RegExReplace(clipboard, "(\S.*?)\R(.*?\S)", "$1 $2")
clipboard := tmp
; StringReplace clipboard, clipboard, % " ", % "", A
clipwait 0.1
return
; ------------------------------------
; proe ONLY, 两侧键作为中键
; ------------------------------------
#NoEnv
#SingleInstance Force
#InstallKeybdHook
#InstallMouseHook
#UseHook
#IfWinActive ahk_exe xtop.exe
XButton1::MButton
XButton2::MButton
