~LButton::

Loop {
LButtonDown := GetKeyState("LButton","P")
               If (!LButtonDown)
               Break
}

WaitTime:=DllCall("GetDoubleClickTime")/4000

KeyWait, LButton, D T%WaitTime%
If errorlevel=0
GoSub, Routine
Return


Routine:
{

  ifwinactive ahk_class CabinetWClass
  {
    return
  }

  clipboard =
    send ,^c
    ClipWait,1

    StringLen, cliplen, clipboard
    if cliplen > 20
    {
      ;避免不是英文單字的東西送到GoldenDict去翻譯。
        return
    }

  if cliplen < 2
  {
    ;避免不是英文單字的東西送到GoldenDict去翻譯。
      return
  }


  ; send,{Ctrl down}cc{Ctrl up} 可用這行，也可用下行

    run C:\tools\GoldenDict\GoldenDict.exe  %clipboard%

}

return
