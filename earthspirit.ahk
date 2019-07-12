I_Icon = %A_ScriptDir%/icons/earthspirit.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2
; item 6 - diskord
; item 3 - glimmer
; item 2 - force
space & a::
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}
sleep, 600
SendInput, {%ability1%}
sleep, 50
Sendinput {%item6%}
return

Space & s::
direct()
sleep, 50
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
SendInput {alt up}
sleep, 50
SendInput, {%ability2%}
SendInput, {%selectHero% down}
sleep, 2000
SendInput {alt down}
sleep, 50
Sendinput {%item3%}
sleep, 50
Sendinput {%item2%}
sleep, 50
SendInput {alt up}
sleep, 50
tpBase()
SendInput, {%selectHero% up}
return

space & d::
SendInput, {%ability2%}
sleep, 100
SendInput, {%ability4%}
sleep, 100
Sendinput {%item6%}
sleep, 50
SendInput, {%ability3%}

return

space & f::
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}
sleep, 600
SendInput, {%ability1%}
sleep, 50
Sendinput {%item6%}
sleep, 450
SendInput, {%ability4%}
sleep, 50
SendInput, {%ability3%}
sleep, 50
SendInput {alt up}
sleep, 50
SendInput, {%ability6%}
return


Space & q::
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
sleep, 50
SendInput {alt up}
SendInput, {%ability1%}
return

Space & w::
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
sleep, 50
SendInput {alt up}
SendInput, {%ability2%}
return

Space & e::
SendInput, {%ability4%}
sleep, 50
SendInput, {%ability3%}
return

Space & r::
SendInput {alt down}
sleep, 50
SendInput, {%ability4%}
sleep, 50
SendInput {alt up}
SendInput, {%ability6%}
return