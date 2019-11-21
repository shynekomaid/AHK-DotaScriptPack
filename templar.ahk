I_Icon = %A_ScriptDir%/icons/templar.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


; item 4 - pt



f:: ; automeld
sleep, 20
SendInput {%ability2%}
sleep, 50
SendInput {%attack%}
sleep, 50
MouseClick, left
sleep, 300

return


e:: ; quick trap
SendInput {%ability6%}
sleep, 320
SendInput {%item4%}
sleep, 50
SendInput {%item4%}
sleep, 50
SendInput {%ability4%}
sleep, 50
SendInput {%item4%}
return

