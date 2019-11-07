#persistent
#InstallKeybdHook

Capslock::
Send {LControl Down}
KeyWait, Capslock
Send {LControl Up}
if ( A_PriorKey = "Capslock" )
{
	Send {Esc}
}
return