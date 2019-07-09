I_Icon = %A_ScriptDir%/icons/sky.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


; item 3 - atos
; item 6 - discord
; item 2 - eth
; item 1 -dagon



;atos + discord + procast  
f:: 
direct()
sleep, 200
Send, {%item3%}
Send, {%item6%}
sleep, 100
SendPlay, {%ability3%}
sleep, 150
SendPlay, {%ability2%}
sleep, 50
SendPlay, {%ability1%}
sleep, 100
SendPlay, {%ability6%}
return
;atos + discord + eth + dagon + procastw
d:: 
direct()
sleep, 200
Send, {%item3%}
Send, {%item6%}
sleep, 50
Send, {%item2%}
sleep, 50
Send, {%item1%}
sleep, 100
SendPlay, {%ability3%}
sleep, 150
SendPlay, {%ability2%}
sleep, 50
SendPlay, {%ability1%}
sleep, 100
SendPlay, {%ability6%}
return