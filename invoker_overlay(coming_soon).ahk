#SingleInstance Force
SetWorkingDir %A_ScriptDir%
;StartThere


SetBatchLines -1

;
global active_spheres_1 := 0
global active_spheres_2 := 0
global active_spheres_3 := 0
global left_spell := 0
global right_spell := 0
global can_invoke := 1

;
global picture_size := 25
global spacing := 2
global mode := 0

global x_overlay := 600
global y_overlay := 575

global centered := 1
global gui_alpha := 175

; ini
global x_current := 0
global y_current := 0
global current_spacing := 0 
global loop_count := 0
global picture_array := ["cold_snap", "ghost_walk", "ice_wall", "EMP", "tornado", "alacrity", "sun_strike", "forge_spirit", "chaos_meteor", "deafening_blast"] 

Gui, Color, 0x2d323b
Gui, +LastFound +AlwaysOnTop +ToolWindow -caption
Gui, Font, s14 q5 cWhite, Verdana
Gui, Margin, 0, 0
WinSet, ExStyle, +0x00000020
WinSet, Transparent, %gui_alpha%


if (mode = 0)
{
    loop, 10
    {
        x_current := (loop_count) * (picture_size + spacing)
        loop_count ++
        un_array := picture_array[loop_count]
        Gui Add, Picture, x%x_current% y0 w%picture_size% h%picture_size%, %A_ScriptDir%\bmp\invoker\%un_array%.png 
    }
    
    windows_w_current := picture_size * 10 + spacing * 9
    if (centered)  
    {
        Gui, Show, w%windows_w_current% h%picture_size% xCenter y%y_overlay% NoActivate, invok
    }
    else
    {
        Gui, Show, w%windows_w_current% h%picture_size% x%x_overlay% y%y_overlay% NoActivate, invok
    }
}
if (mode = 1)
{
    loop, 10
    {
        x_current := (loop_count) * (picture_size + spacing)
        loop_count ++
        un_array := picture_array[loop_count]
        Gui Add, Picture, x0 y%x_current% w%picture_size% h%picture_size%, %A_ScriptDir%\bmp\invoker\%un_array%.png 
    }

    windows_w_current := picture_size * 10 + spacing * 9
    if (centered)  
    {
        Gui, Show, h%windows_w_current% w%picture_size% yCenter x%y_overlay% NoActivate, invok
    }
    else
    {
        Gui, Show, h%windows_w_current% w%picture_size% x%x_overlay% y%y_overlay% NoActivate, invok
        }
}

I_Icon = %A_ScriptDir%/icons/invoker.png
#Include %A_ScriptDir%/utility.ahk



alt & 1::
    ; aghanim 
    global aghanim := 1
return

q::
    SendInput {%ability1%}
    add_sphere(1)
return

w::
    SendInput {%ability2%}
    add_sphere(2)
return

e::
    SendInput {%ability3%}
    add_sphere(3)
return

r:: 
    SendInput {%ability6%}
    invoke()

return


t::
    ;MsgBox, %left_spell% %right_spell%
    
return

invoke(){
    if aghanim
    {
        SetTimer, invoke_cold_down, 2000, on
    }
    else
    {
        SetTimer, invoke_cold_down, 6000, on
    }

    
    global spell_cost := active_spheres_1 + active_spheres_2 + active_spheres_3
    if spell_cost = 3
        add_spell(1)
    if spell_cost = 6
        add_spell(2)
    if spell_cost = 19
        add_spell(3)
    if spell_cost = 12
        add_spell(4)
    if spell_cost = 9
        add_spell(5)
    if spell_cost = 25
        add_spell(6)
    if spell_cost = 51
        add_spell(7)
    if spell_cost = 35
        add_spell(8)
    if spell_cost = 38
        add_spell(9)
    if spell_cost = 22
        add_spell(10)
    


}

add_spell(spell_num){

    if (can_invoke and !(spell_num = left_spell or spell_num = right_spell))
    {
        right_spell := left_spell
        left_spell = %spell_num% 
        can_invoke := 0
    } 
    else
    {
        if (spell_num = right_spell)
        {
            temp := right_spell
            right_spell := left_spell
            left_spell := temp 
        }
    }
    return
}


add_sphere(sphere_type){
    if sphere_type = 1
        sphere_cost = 1
    if sphere_type = 2
        sphere_cost = 4
    if sphere_type = 3
        sphere_cost = 17
    temp_spheres := active_spheres_2
    active_spheres_2 := active_spheres_3
    active_spheres_1 := temp_spheres
    active_spheres_3 := sphere_cost
    return
}

invoke_cold_down:
    can_invoke := 1
    SetTimer, invoke_cold_down, Off
return




