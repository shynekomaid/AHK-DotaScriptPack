I_Icon = %A_ScriptDir%/icons/sky.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2
; item 3 - atos
; item 6 - discord
; item 2 - eth
; item 1 -dagon
;atos + discord + eth + dagon + procast
d::  
delayT(100)
item(3)
delayT(100)
item(6)
delayT(100)
ability(3)
delayT(100)
item(2)
delayT(100)
item(1)
delayT(150)
ability(6)
delayT(100) 
ability(2)
delay()
ability(1)
delay()
return

;atos + discord + procast  
f:: 
delayT(100)
item(3)
delay()
item(6)
delayT(100)
ability(3)
delayT(150)
ability(6)
delayT(100) 
ability(2)
delay()
ability(1)
delay()
return
