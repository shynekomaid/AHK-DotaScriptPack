I_Icon = %A_ScriptDir%/icons/kunka.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

;; Use torrent, if wanna procast, movemouse to x mark and press d or f

d::  
  Send, q		; use torrent 
  sleep, 1600
  Send, e		; return x-mark   
return

f::  
  Send, r		; use ship 
  Sleep, 2690
  Send, e 		; return x-mark 
  Sleep, 100
  Send, q		; use torrent 
return

; Double tap Armlet
; On armlet and use its
space::  
  item(6) 		
  Sleep, 60
  item(6)
return