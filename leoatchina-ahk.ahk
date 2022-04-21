#Persistent
SetCapsLockState, AlwaysOff
; ----------------
; Explorer
; ----------------
Capslock & o::Run explorer.exe
; ----------------
; Input method control
; ----------------
; XXX: https://r.nf/smbrx4
SetInputLang(Lang)
{
    WinExist("A")
    ControlGetFocus, CtrlInFocus
    PostMessage, 0x50, 0, % Lang, %CtrlInFocus%
}
Capslock & u::SetInputLang(0x0409) ; English
Capslock & y::^' ; NOTE:ctrl + ' is used to invoke sogouwubi
Capslock & space::#space ; toggle input method
; ----------------
; MicrosoftTODO
; ----------------
Capslock & q::RUN shell:AppsFolder\Microsoft.Todos_8wekyb3d8bbwe!App
; ----------------
; Copy & paste
; ----------------
Capslock & v::Send {Shift down}{Ins}{Shift up}
Capslock & c::Send {Ctrl down}{Ins}{Ctrl up}
Capslock & e::^+!space ; call utools clipboard
; ----------------
; Top of all
; ----------------
Capslock & t::Send, #+!t
; ----------------
; Run taskmrg
; ----------------
Capslock & g::Run, C:\Windows\system32\taskmgr.exe
; ----------------
; Reload ahk scripts
; ----------------
Capslock & r::Reload
; ----------------
; Volume control
; ----------------
Capslock & m::Send {Volume_Mute}
Capslock & ]::Send {Volume_Up}
Capslock & [::Send {Volume_Down}
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
; Esc
; ----------------
Capslock & `::SendInput {Blind}{Esc DownTemp}
Capslock & ` up::SendInput {Blind}{Esc Up}
Capslock & Tab::SendInput {Blind}{Esc DownTemp}
Capslock & Tab up::SendInput {Blind}{Esc Up}
Capslock & Esc::SendInput {Blind}{Esc DownTemp}
Capslock & Esc up::SendInput {Blind}{Esc Up}
Capslock & Enter::SendInput {Blind}{Esc DownTemp}
Capslock & Enter up::SendInput {Blind}{Esc Up}
; ----------------
; BS Del
; ----------------
Capslock & x::SendInput {Blind}{Del DownTemp}
Capslock & x up::SendInput {Blind}{Del Up}
Capslock & z::SendInput {Blind}{BS DownTemp}
Capslock & z up::SendInput {Blind}{BS Up}
Capslock & BS::SendInput {Blind}{Del DownTemp}
Capslock & BS up::SendInput {Blind}{Del Up}
; ----------------
; Capslock toggle
; ----------------
Capslock & \::SendInput {Blind}{Capslock DownTemp}
Capslock & \ up::SendInput {Blind}{Capslock Up}
; ----------------
; Insert
; ----------------
Capslock & i::SendInput {Blind}{Insert DownTemp}
Capslock & i up::SendInput {Blind}{Insert Up}
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
