I_Icon = %A_ScriptDir%/icons/wind.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; item 4 - iron branch
;  when use, move mouse back of the hero

f::
SendInput, {%item4%}
SendInput, {%ability1%}
return