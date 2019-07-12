I_Icon = %A_ScriptDir%/icons/io.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2
SetBatchLines -1

;space + q (or w), skill and move (need, when you support seeker and another speedfull carry).
;overlay, when tethered to hero, display tether cooldown

space & q::
SendInput, {%ability1%}
if gui_disableQ = 0
{
	Gui, Destroy
	gui_disableQ = 1
} else {
	overlayQ(600,670,12)
	gui_disableQ = 0
}
SendInput, {%move_to%}
MouseClick, left
;600,670

return


q::
SendInput, {%ability1%}
if gui_disableQ = 0
{
	Gui, Destroy
	gui_disableQ = 1
} else {
	overlayQ(600,670,12)
	gui_disableQ = 0
}
return

	
space & w::
SendInput, {%ability2%}
SendInput, {%move_to%}
MouseClick, left
;600,670
	
overlayQ(x,y,t){
	global
	Gui, Color, 0x000000
	;Gui +hWndhMainWnd +Resize
	Gui, Font, s14 q5 cWhite, Verdana
	Gui, +LastFound +AlwaysOnTop +ToolWindow -caption
	;; WinSet, TransColor, FFFFFF
	Gui, Margin, 0, 0
	Gui, Add, Text, hWndhTxtText vtime x0 y0 w42 h42 +0x200 +0x1, %t%
	WinSet, ExStyle, +0x00000020 ;, Overlay
	WinSet, Transparent, 180
	Gui, show, NoActivate ;, Overlay
	WinMove, x,y
	SetTimer, timer1000Q, 1000, On
	timerQ := t
	return
	timer1000Q:
		if (timerQ == 1)
		{
			SetTimer, timer1000Q, Off
			Gui, Destroy
			gui_disableQ = 1
		}
		
		timerQ--
		GuiControl,Text, time, %timerQ%
	return
	
}