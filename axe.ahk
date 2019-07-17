I_Icon = %A_ScriptDir%/icons/axe.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; item 1 - blademail
; item 3 - blink

f:: 
delay()
Sendinput {%item3%}
SendInput, {%ability1%}
sleep, 410
Sendinput {%item1%}
return