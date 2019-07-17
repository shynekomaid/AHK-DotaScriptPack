I_Icon = %A_ScriptDir%/icons/sand.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; item 3 - blink
; item 6 - diskord
; item 1 - shiva
f:: 
delay()
SendInput, {%ability6%}
sleep, 2050
Sendinput {%item3%}
sleep, 50
Sendinput {%item6%}
sleep, 50
Sendinput {%item1%}
sleep, 80
SendInput, {%ability2%}
return


d:: 
delay()
sleep, 70
SendInput, {%ability1%}
sleep, 50
Sendinput {%item6%}
sleep, 50
Sendinput {%item1%}
sleep, 80
SendInput, {%ability2%}
return

space & d:: 
delay()
Sendinput {%item3%}
sleep, 50
Sendinput {%item6%}
sleep, 50
Sendinput {%item1%}
sleep, 80
SendInput, {%ability2%}
return