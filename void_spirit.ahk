I_Icon = %A_ScriptDir%/icons/inai.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2
SetBatchLines -1
; item 1 - mjollnir
; item 3 - bloodthron
; item 4 - bkb
; item 6 - discord

q::
{
   Send q
   KeyWait, q
   Send q
}
return

space & q::
SendInput, {%ability1%}
SendInput, {%ability1%}

return

alt & q::
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
return

space & w::
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
SendInput, {%ability1%}
SendInput, {%ability1%}
sleep 50
SendInput, {%ability2%}

return

alt & w::
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
sleep 50
SendInput, {%ability2%}
return

Space & e::
SendInput, {%ability2%}
sleep, 1560
SendInput, {%ability3%}
sleep 50
SendInput, {%ability3%}
sleep 50
SendInput, {%ability3%}
return

Alt & e::
SendInput, {%item6%}
sleep 50
SendInput, {%ability2%}
sleep, 1560
SendInput, {%ability3%}
sleep 50
SendInput, {%ability3%}
sleep 50
SendInput, {%ability3%}
sleep 50
SendInput, {%ability3%}
return

space & r::
SendInput, {%ability6%}
SendInput, {%item3%}
SendInput, {%item6%}
SendInput, {%ability3%}

return

alt & r::
SendInput, {%pickCourier%}
SendInput, {%pickCourier%}
sleep, 50
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
SendInput, {%selectAll%}
SendInput, {%ability6%}
sleep, 300
SendInput, {%selectHero%}
SendInput, {%selectHero%}
return

alt & t::
SendInput, {%ability2%}
sleep, 1560
SendInput, {%pickCourier%}
SendInput, {%pickCourier%}
sleep, 50
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
SendInput, {%selectAll%}
SendInput, {%ability6%}

sleep, 300
SendInput, {%selectHero%}
SendInput, {%selectHero%}
SendInput, {%ability6%}
sleep, 350
SendInput, {%selectHero%}
SendInput, {%selectHero%}

return


f::
SendInput, {%ability6%}
sleep 50
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
sleep 65
SendInput, {%ability3%}
sleep 300
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
sleep 400
SendInput, {%selectHero%}
SendInput, {%selectHero%}
altItem(1)

return

alt & f::
SendInput, {%ability6%}
sleep 50
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
sleep 65
SendInput, {%ability3%}
sleep 300
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
sleep 400
SendInput, {%selectHero%}
SendInput, {%selectHero%}
altItem(1)
SendInput, {%ability6%}

return

d::
SendInput, {%item4%}
sleep 50
SendInput, {%ability6%}
sleep 50
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
sleep 65
SendInput, {%ability3%}
sleep 300
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
sleep 400
SendInput, {%selectHero%}
SendInput, {%selectHero%}
altItem(1)

return

alt & d::
SendInput, {%item4%}
sleep 50
SendInput, {%ability6%}
sleep 50
SendInput, {%item3%}
sleep 50
SendInput, {%item6%}
sleep 65
SendInput, {%ability3%}
sleep 300
SendInput, {%ability1%}
sleep 50
SendInput, {%selectHero%}
sleep 50
CoordMode, Mouse, Screen
MouseMove, (A_ScreenWidth // 2), (A_ScreenHeight // 2)
sleep 50
SendInput, {%ability1%}
sleep 400
SendInput, {%selectHero%}
SendInput, {%selectHero%}
altItem(1)
SendInput, {%ability6%}

return
