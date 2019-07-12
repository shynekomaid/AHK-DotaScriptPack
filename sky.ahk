I_Icon = %A_ScriptDir%/icons/sky.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


; item 3 - atos
; item 6 - discord
; item 2 - eth
; item 1 - dagon

; need start from 2 skill after item, when 2 skill damege, enemy was under 3!!!

;atos + discord + procast  
f:: 
Send, {%item3%}
Send, {%item6%}
sleep, 100
; swap 2 and 3!!

SendInput, {%ability2%}
sleep, 50
SendInput, {%ability3%}
sleep, 150
SendInput, {%ability6%}
SendInput, {%ability1%}
sleep, 100
return
;atos + discord + eth + dagon + procast
d:: 
direct()
sleep, 200
Send, {%item3%}
Send, {%item6%}
sleep, 50
Send, {%item2%}

sleep, 100
; swap 2 and 3!!
SendInput, {%ability2%}
sleep, 50
SendInput, {%ability3%}
sleep, 150
Send, {%item1%}
sleep, 50
SendInput, {%ability6%}
SendInput, {%ability1%}
sleep, 100
return