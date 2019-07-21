I_Icon = %A_ScriptDir%/icons/bristleback.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; item 4 - pt
; d to on spam w
; space & d to off spam w


global pt_abuse = 1


d::

SoundBeep, 1000,75
spam_w = 0
Loop
{
	if !spam_w	
	{
	sendPlay, {%item4%}	
	sleep, 20
	Sendplay, {%ability2%}	
	sleep 50
	Sendplay, {%ability2%}
	sleep, 20
	sendPlay, {%item4%}	
	sleep, 20
	sendPlay, {%item4%}	
	sleep, 20
	sleep 3000
	}
	else
	{
		break
	}
	
}



return

space & d::
{
	SoundBeep, 1000,75
	sleep, 50
	SoundBeep, 1000,75
	spam_w = 1
}
return


