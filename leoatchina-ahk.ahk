#persistent
RAlt & w::
	SEND, {Up}
	Return
RAlt & a::
	SEND, {Left}
	Return
RAlt & s::
	SEND, {Down}
	Return
RAlt & d::
	SEND, {Right}
	Return

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