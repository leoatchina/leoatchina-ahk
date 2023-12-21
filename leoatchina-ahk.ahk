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
CapsLock & `::SendInput {Blind}{Esc DownTemp}
CapsLock & ` up::SendInput {Blind}{Esc Up}
CapsLock & [::SendInput {Blind}{Esc DownTemp}
CapsLock & [ up::SendInput {Blind}{Esc Up}
CapsLock & ]::SendInput {Blind}{Esc DownTemp}
CapsLock & ] up::SendInput {Blind}{Esc Up}
; ----------------
; Del
; ----------------
CapsLock & backspace::SendInput {Blind}{Del DownTemp}
CapsLock & backspace up::SendInput {Blind}{Del Up}
; ----------------
; CapsLock toggle
; ----------------
CapsLock & Tab::SendInput {Blind}{CapsLock DownTemp}
CapsLock & Tab up::SendInput {Blind}{CapsLock Up}
; ----------------
; MicrosoftTODO
; ----------------
CapsLock & t::RUN shell:AppsFolder\Microsoft.Todos_8wekyb3d8bbwe!App
; ----------------
; Volume control
; ----------------
CapsLock & m::Send {Volume_Mute}
CapsLock & p::Send {Volume_Up}
CapsLock & n::Send {Volume_Down}
; ----------------
; Run taskmgr
; ----------------
CapsLock & u::Run "C:\Windows\system32\taskmgr.exe"
; ----------------
; Explorer
; ----------------
CapsLock & o::Run explorer.exe
; ----------------
; Left, Down, Up, Right
; ----------------
CapsLock & h::Send {Blind}{Left DownTemp}
CapsLock & h up::Send {Blind}{Left Up}
CapsLock & a::Send {Blind}{Left DownTemp}
CapsLock & a up::Send {Blind}{Left Up}
CapsLock & j::Send {Blind}{Down DownTemp}
CapsLock & j up::Send {Blind}{Down Up}
CapsLock & s::Send {Blind}{Down DownTemp}
CapsLock & s up::Send {Blind}{Down Up}
CapsLock & k::Send {Blind}{Up DownTemp}
CapsLock & k up::Send {Blind}{Up Up}
CapsLock & w::Send {Blind}{Up DownTemp}
CapsLock & w up::Send {Blind}{Up Up}
CapsLock & l::Send {Blind}{Right DownTemp}
CapsLock & l up::Send {Blind}{Right Up}
CapsLock & d::Send {Blind}{Right DownTemp}
CapsLock & d up::Send {Blind}{Right Up}
; ----------------
; Home End
; ----------------
CapsLock & b::SendInput {Blind}{Home DownTemp}
CapsLock & b up::SendInput {Blind}{Home Up}
CapsLock & f::SendInput {Blind}{End DownTemp}
CapsLock & f up::SendInput {Blind}{End Up}
; ----------------
; PgUp PgDn
; ----------------
CapsLock & q::SendInput {Blind}{PgUp DownTemp}
CapsLock & q up::SendInput {Blind}{PgUp Up}
CapsLock & e::SendInput {Blind}{PgDn DownTemp}
CapsLock & e up::SendInput {Blind}{PgDn Up}
; ----------------
; BS Del
; ----------------
CapsLock & y::SendInput {Blind}{BS DownTemp}
CapsLock & y up::SendInput {Blind}{BS Up}
CapsLock & x::SendInput {Blind}{Del DownTemp}
CapsLock & x up::SendInput {Blind}{Del Up}
; ----------------
; Insert
; ----------------
CapsLock & \::SendInput {Blind}{Insert DownTemp}
CapsLock & \ up::SendInput {Blind}{Insert Up}
; ----------------
; Fn
; ----------------
CapsLock & 1::SendInput    {Blind}{F1 DownTemp}
CapsLock & 1 up::SendInput {Blind}{F1 Up}
CapsLock & 2::SendInput    {Blind}{F2 DownTemp}
CapsLock & 2 up::SendInput {Blind}{F2 Up}
CapsLock & 3::SendInput    {Blind}{F3 DownTemp}
CapsLock & 3 up::SendInput {Blind}{F3 Up}
CapsLock & 4::SendInput    {Blind}{F4 DownTemp}
CapsLock & 4 up::SendInput {Blind}{F4 Up}
CapsLock & 5::SendInput    {Blind}{F5 DownTemp}
CapsLock & 5 up::SendInput {Blind}{F5 Up}
CapsLock & 6::SendInput    {Blind}{F6 DownTemp}
CapsLock & 6 up::SendInput {Blind}{F6 Up}
CapsLock & 7::SendInput    {Blind}{F7 DownTemp}
CapsLock & 7 up::SendInput {Blind}{F7 Up}
CapsLock & 8::SendInput    {Blind}{F8 DownTemp}
CapsLock & 8 up::SendInput {Blind}{F8 Up}
CapsLock & 9::SendInput    {Blind}{F9 DownTemp}
CapsLock & 9 up::SendInput {Blind}{F9 Up}
CapsLock & 0::SendInput    {Blind}{F10 DownTemp}
CapsLock & 0 up::SendInput {Blind}{F10 Up}
CapsLock & -::SendInput    {Blind}{F11 DownTemp}
CapsLock & - up::SendInput {Blind}{F11 Up}
CapsLock & =::SendInput    {Blind}{F12 DownTemp}
CapsLock & = up::SendInput {Blind}{F12 Up}
; ------------------------------------
; Reload ahk scripts
; ------------------------------------
CapsLock & r::Reload
; ------------------------------------
; GoldenDict
; ------------------------------------
CapsLock & g::^!+g
CapsLock & i::^!+i
; ------------------------------------
; zeal
; ------------------------------------
CapsLock & z::^!+z
; ------------------------------------
; Input method control change
; ------------------------------------
CapsLock & Enter::
  Send {LWin Down}{Space Down}
  KeyWait, Enter
  Send {LWin Up}{Space Up}
Return
CapsLock & Space::
  Send {Ctrl Down}{Shift Down}
  KeyWait, Space
  Send {Ctrl Up}{Shift Up}
Return
CapsLock & Shift::
  Send {Ctrl Down}{Space Down}
  KeyWait, Shift
  Send {Ctrl Up}{Space Up}
Return
CapsLock & Ctrl::
  Send {Shift Down}{Alt Down}
  KeyWait, Ctrl
  Send {Shift Up}{Alt Up}
Return
Shift & CapsLock::Send {Ctrl Down}{Space Down}{Space Up}{Ctrl Up}
; ------------------------------------
; ctrl+shift+`set to ditto paste
; ------------------------------------
CapsLock & alt::^`
CapsLock & v::Send {Shift down}{Ins}{Shift up}
CapsLock & c::Send {Ctrl down}{Ins}{Ctrl up}
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
