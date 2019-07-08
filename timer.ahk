#NoTrayIcon
#SingleInstance force
#IfWinActive Dota 2
#Persistent

roshanTime = 0
IsPaused = 0 
toChat(msg){
	If WinActive("Dota 2")
	{
		Send, {Enter}
		sleep, 50
		Send, %msg% 
		sleep, 50
		Send, {Enter}
	}
}

toChatAll(msg){
	If WinActive("Dota 2")
	{
		Send, +{Enter}
		sleep, 50
		Send, %msg% 
		sleep, 50
		Send, {Enter}
	}
}
FormatTime, TimeString, T12, Time


toChatAll("Удачи и веселой игры")
toChat("Текуший таймер: + - 0:50")
sleep, 30000
toChat("Руны богатства появятся через 20 секунд!")
sleep 50
toChat("Руна на речке появится через 2 минуты и 20 секунд!")
SetTimer, bountyRunes, 300000, on
SetTimer, riverRunes, 120000, on
return 

NumpadSub::
	SetTimer, roshanTimer, 60000, on
	MouseGetPos, xpos, ypos 
	toChat("Рошан был повержен!")
	Send, {Alt down}
	MouseClick, left, 677, 12
	Send, {Alt up}
	MouseMove, xpos, ypos 
return

roshanTimer:
	roshanTime := roshanTime + 1
	if roshanTime = 4
	{
		toChat("Если аегис еще не использован, то он выпадет через минуту!")
	} else if (roshanTime = 6) {
		toChat("Рошан возродится через: ")
		sleep, 50
		toChat("2-5 минуты, пожалуйста, поставьте варды у логова Рошана!" )
	} else if (roshanTime = 5)  
		toChat("Аегиса больше нет!: ")
	
return

riverRunes:
	toChat("Руна на речке появится через 20 секунд!")
return

bountyRunes:
	sleep 50
	toChat("Руны богатства появятся через 20 секунд!")
return