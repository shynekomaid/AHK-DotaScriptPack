#NoEnv
#SingleInstance force
SendMode Input 
SetNumlockState, AlwaysOn
SetCapsLockState, Off
SetWorkingDir %A_ScriptDir%
#IfWinActive Dota 2	
SetTitleMatchMode, 2
DetectHiddenWindows, On

;var
timerPaused = 0
workStatus = 1
runStatus = 0

displayX = 1366
displayY = 768
;icon
I_Default = icons/dota2.png
IfExist, %I_Icon%
Menu, Tray, Icon, %I_Icon%
IfNotExist, %I_Icon%
Menu, Tray, Icon, %I_Default%

;Config
;------------------------------
global directional_move = "h"
global attack = "a"
global stop = "s"
global selectHero = "{f1}"
;Item
global item1 = "t"
global item2 = "WheelUp"
global item3 = "WheelDown"
global item4 = "x"
global item5 = "c"
global item6 = "v"

;teleport
global tp = "3"

;Ability
global ability1 = "q"
global ability2 = "w"
global ability3 = "e"
global ability4 = "d"
global ability5 = "f"
global ability6 = "r"

;coordinates to search backpack


; kill another script
CloseScript(Name)
{
	DetectHiddenWindows On
	SetTitleMatchMode RegEx
	IfWinExist, i)%Name%.* ahk_class AutoHotkey
		{
		WinClose
		WinWaitClose, i)%Name%.* ahk_class AutoHotkey, , 2
		If ErrorLevel
			return "Unable to close " . Name
		else
			return "Closed " . Name
		}
	else
		return Name . " not found"
}

F7::
	imageLoad()
	run timer.ahk
	return

space & F7::
	CloseScript("timer.ahk")    
	return
	
F6::
	imageLoad()
	return

PgUp::
gosub timerOff
return


imageLoad()
{
	iX1 = 700
	iY1 = 700
	iX2 = 1200
	iY2 = 800

	imageToSearch = %A_ScriptDir%/bmp/backpack.bmp
	ImageSearch, findX, findY, %iX1%, %iY1%, %iX2%, %iY2%, %imageToSearch%
	global slot4x := findX + 26
	global slot4y := findY - 16
	
	global slot1x := slot4x
	global slot1y := slot4y - 35
	
	global slot2x := slot1x + 45
	global slot2y := slot1y
	
	global slot3x := slot2x + 45
	global slot3y := slot2y
	
	global slot5x := slot4x + 45
	global slot5y := slot4y
	
	global slot6x := slot5x + 45
	global slot6y := slot5y
	
	; backpack
	
	global slot7x := slot4x
	global slot7y := findY + 14
	
	global slot8x := slot7x + 45
	global slot8y := slot7y
	
	global slot9x := slot8x + 45
	global slot9y := slot7y
	return
}

;Delay
delay()
{	
	Sleep, 50
}

long_delay()
{	
	Sleep, 100
}

delayT(delayTime)
{
    Sleep, %delayTime%
}

;Direct
direct()
{  	
	Send, {%directional_move% Down}{Click, R}{%directional_move% Up}       
}

directedAbility(i)
{  
	direct()
	sleep, 50
	ability(i)    
}

directedItem(i)
{  
	direct()
	sleep, 50
	item(i)    
}

;Press Item

item(i)
{	
	delay()
	if i = 1	
		Send, {%item1%}	
	else if i = 2		
		Send, {%item2%} 	
    else if i = 3		
		Send, {%item3%} 	
    else if i = 4	
		Send, {%item4%} 	
    else if i = 5		
		Send, {%item5%} 	
    else if i = 6	
		Send, {%item6%}	
}

altItem(i)
{	
	delay()
	Send, {Alt down}
	delay()
	if i = 1	
		Send, {%item1%}	
	else if i = 2		
		Send, {%item2%} 	
    else if i = 3		
		Send, {%item3%} 	
    else if i = 4	
		Send, {%item4%} 	
    else if i = 5		
		Send, {%item5%} 	
    else if i = 6	
		Send, {%item6%}	
	delay()
	Send, {Alt up}
}

ability(i)
{		
	delay()
	if i = 1	
		Send, {%ability1%}	
	else if i = 2	
		Send, {%ability2%} 	
    else if i = 3	
		Send, {%ability3%} 	
    else if i = 4	
		Send, {%ability4%} 	
    else if i = 5	
		Send, {%ability5%} 	
    else if i = 6	
		Send, {%ability6%} 	
}

altAbility(i)
{	
	delay()
	Send, {Alt down}
	delay()
	if i = 1	
		Send, {%ability1%}	
	else if i = 2	
		Send, {%ability2%} 	
    else if i = 3	
		Send, {%ability3%} 	
    else if i = 4	
		Send, {%ability4%} 	
    else if i = 5	
		Send, {%ability5%} 	
    else if i = 6	
		Send, {%ability6%} 	
	delay()
	Send, {Alt up}
}

tpBase()
{
	Send, {Alt down}
	delay()
	Send, {%tp%}
	delay()
	Send, {Alt up}
}

repeater(key, host)
{	
  Loop
  { 
	Send, {%key%}
    sleep 10
    If (!GetKeyState(host,"p"))
      break
  } 
}


drag(x1,y1,x2,y2)
{ 		
	;Sleep,200
	SendEvent {Click %x1%, %y1%, down}{click %x2%, %y2%, up}	
}
dragr(x2,y2,x1,y1)
{ 		
	;Sleep,200
	SendEvent {Click %x1%, %y1%, down}{click %x2%, %y2%, up} ; reversed	
}


alt & MButton::
	Send, %selectHero%
	delay()
	Send, %selectHero%
	drag(slot1x, slot1y, displayX/2 -20, displayY/2 -30)
	drag(slot2x, slot2y, displayX/2 -20, displayY/2 -20)
	drag(slot3x, slot3y, displayX/2 -20 , displayY/2 -15)
	drag(slot4x, slot4y, displayX/2 +20, displayY/2 -30)
	drag(slot5x, slot5y, displayX/2 +20, displayY/2 -20)
	drag(slot6x, slot6y, displayX/2 +20, displayY/2 -15)
	sleep, 3000
	Send, %selectHero%
	delay()
	Send, %selectHero%
	delay()
	mouseMove, displayX/2 -20, displayY/2 -30
	Send, {RButton}
	mouseMove, displayX/2 -20, displayY/2 -20
	Send, {RButton}
	mouseMove, displayX/2 -20 , displayY/2 -15
	Send, {RButton}
	mouseMove, displayX/2 +20, displayY/2 -30
	Send, {RButton}
	mouseMove, displayX/2 +20, displayY/2 -20
	Send, {RButton}
	mouseMove, displayX/2 +20, displayY/2 -15
	mouseMove, displayX/2 +20, displayY/2 -15
	Send, {RButton}
	

return
space & MButton::
	Send, %selectHero%
	delay()
	Send, %selectHero%
	delay()
	drag(slot1x, slot1y, slot7x, slot7y)
	delay()
	drag(slot2x, slot2y, slot8x, slot8y)
	delay()
	drag(slot3x, slot3y, slot9x, slot9y)
	delay()
	dragr(slot1x, slot1y, slot7x, slot7y)
	delay()
	dragr(slot2x, slot2y, slot8x, slot8y)
	delay()
	dragr(slot3x, slot3y, slot9x, slot9y)
	delay()
	drag(slot4x, slot4y, slot7x, slot7y)
	delay()
	drag(slot5x, slot5y, slot8x, slot8y)
	delay()
	drag(slot6x, slot6y, slot9x, slot9y)
	delay()
	dragr(slot4x, slot4y, slot7x, slot7y)
	delay()
	dragr(slot5x, slot5y, slot8x, slot8y)
	delay()
	dragr(slot6x, slot6y, slot9x, slot9y)
	delay()
return



; Right click spammer (10ms delay) 
$LWin::  
  repeater("RButton","LWin")	 
return

; Switcher
space & Numpad0::
	if runStatus
		runStatus = 0
	else
		runStatus = 1

return

:*:kun::
	if runStatus
	{
		loadedScript = kunka.ahk
		Run %loadedScript%
		runStatus = 0
		loadText = Kunka will be loaded beep
		displayText(loadText)
		sleep, 2000
		SoundBeep, 200, 200
		ExitApp
	}
return

:*:sf::
	if runStatus
	{
		loadedScript = sf.ahk
		Run %loadedScript%
		runStatus = 0
		loadText = Shadow Field will be loaded after beep
		displayText(loadText)
		sleep, 2000
		SoundBeep, 200, 200
		ExitApp
	}
return

:*:sky::
	if runStatus
	{
		loadedScript = sky.ahk
		Run %loadedScript%
		runStatus = 0
		loadText = Sky will be loaded after beep
		displayText(loadText)
		sleep, 2000
		SoundBeep, 200, 200
		ExitApp
	}
return

;Display Text
displayText(textToDisplay)
{
	#Persistent
	ToolTip, %textToDisplay% 
}



; Pause / Unpause Script
Numpad0::
    suspend
	if workStatus
	{
		SoundBeep, 444, 100
		sleep, 80
		SoundBeep, 555, 90
		sleep, 80
		SoundBeep, 333, 80
		sleep, 80
		workStatus = 0
	}
	else
	{
		
		SoundBeep, 640, 120
		sleep, 55
		SoundBeep, 400, 80
		workStatus = 1
	}
return

timerOff:
	PostMessage, 0x111, 65306,,, timer.ahk ahk_class AutoHotkey ; Pause, Toggle
	if timerPaused
	{
		SoundBeep, 700, 120
		sleep, 100
		SoundBeep, 700, 180
		timerPaused = 0
	}
	else 
	{
		SoundBeep, 700, 120
		sleep, 200
		SoundBeep, 500, 120
		sleep, 200
		SoundBeep, 400, 120
		timerPaused = 1
	}
return


LAlt & Numpad0::	
    Reload
return

; start there


