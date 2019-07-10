I_Icon = %A_ScriptDir%/icons/magnus.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


; item 3 - blink
; item 2 - force
; NOTE set camera positions in Dota 2 preference

f:: 
WinGetPos,,,W,H, Dota 2
SendInput, ^{%camera_9%}
SendInput, {%selectHero%}{%selectHero%}
SendInput, ^{%camera_10%}
SendInput, {%camera_9%}
sleep, 100
SendInput, {%item3%}
sleep, 100
SendInput, {%camera_10%}
MouseGetPos, X, Y
MouseMove, W/2, H/2
SendInput, {%move_to%}
MouseClick, left
sleep, 100
SendInput, {%ability6%}
sleep, 100
SendInput, {%camera_9%}
MouseMove, X, Y
sleep, 300
SendInput, {%stop%}
return

d::

WinGetPos,,,W,H, Dota 2
SendInput, ^{%camera_9%}
SendInput, {%selectHero%}{%selectHero%}
SendInput, ^{%camera_10%}
SendInput, {%camera_9%}
sleep, 100
SendInput , {%directional_move% down}
sleep, 25
SendInput, {RButton}
sleep, 25
SendInput, {%directional_move% up}
sleep, 100
SendInput, {alt down}
sleep, 25
SendInput, {%item2%}
sleep, 25
SendInput, {alt up}
sleep, 400
SendInput, {%item3%}
sleep, 100
SendInput, {%camera_10%}
MouseGetPos, X, Y
MouseMove, W/2, H/2
SendInput, {%move_to%}
MouseClick, left
sleep, 100
SendInput, {%ability6%}
sleep, 100
SendInput, {%camera_9%}
MouseMove, X, Y
sleep, 300
SendInput, {%stop%}
return