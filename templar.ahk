I_Icon = %A_ScriptDir%/icons/templar.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; configure new refraction key there
global newRefraction = "z"

; item 4 - pt

q::
SendInput {%item4%}
sleep, 20
SendInput {%item4%}
sleep, 50
SendInput {%ability1%}
sleep, 50
SendInput {%item4%}
sleep, 20
SendInput {shift up}
return



f:: ; automeld
sleep, 50	
SendInput {%item4%}
sleep, 20
SendInput {%item4%}
sleep, 20
SendInput {%ability2%}
sleep, 50
SendInput {%attack%}
sleep, 50
MouseClick, left
sleep, 300
SendInput {%item4%}
return


e:: ; quick trap
SendInput {%ability6%}
sleep, 320
SendInput {%item4%}
sleep, 50
SendInput {%item4%}
sleep, 30
SendInput {%ability4%}
sleep, 50
SendInput {%item4%}
return

