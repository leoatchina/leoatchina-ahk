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


#IfWinActive ahk_exe nvim-qt.exe
{
	^Space::^\
	return
}
#IfWinActive

#IfWinActive ahk_exe gvim.exe
{
	^Space::^\
	return
}
#IfWinActive

#IfWinActive ahk_class CASCADIA_HOSTING_WINDOW_CLASS
{
	^Space::^\
	return
}
#IfWinActive


+Capslock::Esc 
^Capslock::Capslock 			; make shift+Caps-Lock the Caps Lock toggle
Capslock::Control  





