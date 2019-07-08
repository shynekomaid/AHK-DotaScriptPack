I_Icon = %A_ScriptDir%/icons/sf.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2


;1
space & q::
  direct()
  Send, q  
  delay()
  Send, {%attack%}   
return 

;2
space & w::  
  direct()
  Send, w
  delay()
  Send, {%attack%}  
return

;3
space & e::  
  direct()
  Send, e
  delay()
  Send, {%attack%}  
return

;Eul + blink combo
space & d::
  direct()
  item(2) ;eul    		
  Sleep, 830 			
  Send, {%stop%}    	
  item(3) ;blink			
  delay() 				
  ability(6)			
return

;Eul + blink + bkb combo
d & f::
  direct()
  item(2) ;eul    	  		
  Sleep, 830 			
  Send, {%stop%}    	
  item(3) ;blink		
  delay() 
  item(6) ;bkb
  delay() 				 
  ability(6)			
return

;Blink + bkb + sb combo
space & f::   	  				  	
  item(3) ;blink		
  delay() 
  item(6) ;bkb
  delay() 		
  item(5) ;shadow blade
  delay()  
  ability(6)	
 return
 
 ;eul + blink + shadow tpOut
 space & 4::
	altItem(2) ;eul
	delayT(1500)
	altItem(3) ;blink
	delay()
	item(5) ;shadow
	delay()
	tpBase()
 return
 
 ;blink + shadow tpOut
4::
	altItem(3) ;blink
	delay()
	item(5) ;shadow
	delay()
	tpBase()
 return
 
 