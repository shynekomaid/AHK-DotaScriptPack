# -AHK-DotaScriptPack-
# New scripts soon - see ToDo.list

Need AutoHotKey (current version) to work. -DIRECT LINK- https://www.autohotkey.com/download/ahk-install.exe

Configured to 16:9 [1366x768] display, some features may don`t work on  another display, but you can configure to you display.

1. Enable quikcast`s on dota preference !important!
2. Configure ability and item hotkey on file utility.ahk as you Dota 2 preference.
3. Load need scripts (launch skripts file, or from running utility.ahk press {space & Numpad0} (hold space and press 0) and type scripts name (like kun for kunka, sky for skywrath mage, etc.
4. After loading game, a 50 second on time !BEFORE! starts first creeps wave, if need, press f7 to load timer notifications to chat (on russian, but you can configure strings) and item slots analyser (for abuse item drop on fountain, or item swap on shrine), or f6, to load only tem slots analyser. If tem slots analyser dont work, read instructions below this file.
5. Read %scripts_name%.ahk file to understand how use chosen script.

Hotkey on utility.ahk and timer.ahk:
space + mouseMidButton -- abuse item on shrine.
alt + mouseMidButton -- abuse item on fountain.
left win -- spam left mouse key.
space + Numpad0 -- enable launch scripts by name.
Numpad0 -- suspend (dont stop timer.ahk, but stop another scrips enable utility.ahk)
F7 -- Load timer notifications to chat (runes and roshan, after press {numpad -} [timer.ahk]); item slots analyser.
F6 -- Item slots analyser.
LAlt + Numpad0 -- reload scripts (dont reload timer.ahk)
space + F7 -- off timer notifications to chat (dont save state!)
PgUp -- pause timer notifications to chat (use when game paused!)
space + 3 -- instant tp to base

---------- NOTE FOR CONFIGURE FOR ALL DISPLAY ----------

1. Launch Dota 2 and start demo hero (any hero).
2. On empty inventar and backpack make scrinshoot.
3. Edit scrinshoot like file on /bmp/backpack.bmp !important! no one pixel from 3,4,5 itemslots mast be on you file.
4. Save scrinshoot instead of /bmp/backpack.bmp 
6. Change the variables iX1, iY1,iX2,iY2 in the imageLoad() function of the utility.ahk file so that your inventory and backpack will fit into the rectangle according to the coordinates of the upper left corner: iX1, iY1, iY1 and lower right corner: iX2,iY2, FULLY. It is better to take with reserve, not afraid, if you go beyond the screen.
7. Change the variable displayX, displayY on top utility.ahk file.
8. ???????????
9. PROFIT.


