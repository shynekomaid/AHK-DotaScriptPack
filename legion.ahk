I_Icon = %A_ScriptDir%/icons/legion.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


; item 4 - bkb
; item 5 - armlet
; item 3 - blink
; item 1 - blademail

f::
Send, {%item5%}
sleep, 50
SendPlay, {alt down}{%ability2%}{alt up}
sleep, 210
SendPlay, {%ability1%}
sleep, 310
Send, {%item1%}
sleep, 70
;Send {%item4%}
Send {%item3%}
Send, {%item1%}
Send, {%ability6%}
return	

space & f::
Send, {%item5%}
sleep, 50
SendPlay, {alt down}{%ability2%}{alt up}
sleep, 210
SendPlay, {%ability1%}
sleep, 310
Send, {%item1%}
sleep, 70
Send {%item4%}
Send {%item3%}
Send, {%item1%}
Send, {%ability6%}
return	