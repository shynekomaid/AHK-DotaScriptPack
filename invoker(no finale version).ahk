I_Icon = %A_ScriptDir%/icons/invoker.png

#Include %A_ScriptDir%/utility.ahk
#SingleInstance force
#IfWinActive Dota 2

; MButton + [a,s,d,f,g,z,x,c,v] - prepare cast
; alt + [a,s,d,f,g,z,x,c,v] - instant cast
; space + [a,s,d,f,g,z,x,c,v] - procast
; alt + 1 - buy aghanim
; space + [q,w,e] - quick x3 spheres

; item 1 - urn
; item 2 - eul
; item 2 - blink

global eee_after_casts := 1
global aghanim := 0


alt & 1::
aghanim := 1
return


space & q::
SendPlay, qqq
return

space & w::
SendPlay, www
return

space & e::
SendPlay, eee
return

space & s:: ; meteor+blast
SendPlay, eewr
sleep, 25
SendPlay, eee
if aghanim
{
	sleep 2000
	sleep 25
	SendPlay, ewqre
	SoundBeep, 500, 100
	return
}
else
{
	sleep 6000
	sleep 25
	SendPlay, ewqre
	SoundBeep, 500, 100
	return
}
return 

space & d:: ; meteor+blast+ tornado+ sunstrike _use_4_to_cast_ and space+4 after tornado
SendPlay, wwqr
sleep, 25
SendPlay, eee
if aghanim
{
	sleep 2000
	sleep 25
	SendPlay, eewr
	sleep 2000
	SendPlay,qwe
	SoundBeep, 500, 100
	return
}
else
{
	sleep 6000
	sleep 25
	SendPlay, eewr
	sleep 6000
	SendPlay,qwe
	SoundBeep, 500, 100
	return
}
return 

4:: 
SendPlay, freee
return

space & 4::
SendPlay, dfeeer
return


space & z:: ;_basic_ forge+alacrity
SendPlay, wwer
sleep, 25
SendPlay, eee
if aghanim
{
	sleep 2000
	sleep 25
	SendPlay, eeqre
	SoundBeep, 500, 100
	return
}
else
{
	sleep 6000
	sleep 25
	SendPlay, eeqre
	SoundBeep, 500, 100
	return
}
return 

space & x:: ;_!!hand!!_ emp + tornado
SendPlay, wwwr
sleep, 25
SendPlay, eee
if aghanim
{
	sleep 2000
	sleep 25
	SendPlay, wwq reee
	SoundBeep, 500, 100
	return
}
else
{
	sleep 6000
	sleep 25
	SendPlay, wwq reee
	SoundBeep, 500, 100
	return
}
return 

space & a:: ;_hand_ forge+coldsnap
SendPlay, qqqr
sleep, 25
SendPlay, eee
if aghanim
{
	sleep 2000
	sleep 25
	SendPlay, eeqre
	SoundBeep, 500, 100
	return
}
else
{
	sleep 6000
	sleep 25
	SendPlay, eeqre
	SoundBeep, 500, 100
	return
}
return

space & f:: ;run out
sendInput {alt down}
sleep, 25
sendInput {%item3%}
sleep, 25
sendInput {alt up}
sleep, 100
SendPlay, qqwr
sleep, 25
SendPlay, r
sleep, 25
SendPlay, wwwd
sleep, 100
SendPlay {%selectHero%}
return

space & g:: ;tp out
sendInput {alt down}
sleep, 25
sendInput {%item3%}
sleep, 25
sendInput {alt up}
sleep, 100
SendPlay, qqwr
sleep, 25
SendPlay, r
sleep, 25
SendPlay, qqq
sleep, 25
tpBase()
sleep, 100
SendPlay, d
sleep, 25
SendPlay {%selectHero%}
sleep, 2975
SendPlay {%selectHero%}
return

space & r:: ;cast _basic_ procast
cast_all(1)
SendPlay, eee
sleep, 25
SendInput, {ctrl down}
sleep, 25
MouseClick, right
sleep, 25
SendInput, {ctrl up}
return



cast_all(urn){
	if urn 
	{
		sleep, 55
		SendPlay, {%item1%}
	}	
	SendPlay, d
	sleep, 55
	SendPlay, f
	
}

alt & a:: ; cold snap
	SendPlay, qqqr
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & s:: ; ghost walk
	SendPlay, qqwr
	sleep, 100
	SendPlay, d
	;~ if eee_after_casts
		;~ sleep, 100
		;~ SendPlay eee
return

alt & d:: ; ice wall
	SendPlay, qqer
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & f:: ; emp
	SendPlay, wwwr
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & g:: ; tornado	
	SendPlay, wwqr
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & z:: ; alacrity
	SendPlay, wwer
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & x:: ; sunstrike
	SendPlay, eeer
	sleep, 100
	SendPlay, d
	;~ if eee_after_casts
		;~ sleep, 100
		;~ SendPlay eee
return

alt & c:: ; forge spirit
	SendPlay, eeqr
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & v:: ; chaos meteor
	SendPlay, eewr
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

alt & b:: ; deafening blast
	SendPlay, qwer
	sleep, 100
	SendPlay, d
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & a:: ; cold snap
	SendPlay, qqqr
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & s:: ; ghost walk
	SendPlay, qqwr
	sleep, 100
	;~ if eee_after_casts
		;~ sleep, 100
		;~ SendPlay eee
return

MButton & d:: ; ice wall
	SendPlay, qqer
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & f:: ; emp
	SendPlay, wwwr
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & g:: ; tornado	
	SendPlay, wwqr
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & z:: ; alacrity
	SendPlay, wwer
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & x:: ; sunstrike
	SendPlay, eeer
	sleep, 100
	;~ if eee_after_casts
		;~ sleep, 100
		;~ SendPlay eee
return

MButton & c:: ; forge spirit
	SendPlay, eeqr
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & v:: ; chaos meteor
	SendPlay, eewr
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return

MButton & b:: ; deafening blast
	SendPlay, qwer
	sleep, 100
	if eee_after_casts
		sleep, 100
		SendPlay eee
return