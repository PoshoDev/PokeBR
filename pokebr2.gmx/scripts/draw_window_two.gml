///draw_window_two(x, y, target)

var targ = argument2;

var px = argument0 + rand(-targ.shake*2, targ.shake*2);
var py = argument1 + rand(-targ.shake*2, targ.shake*2);

var pw = 1920/5*2;
var ph = 1080;

var mx = px+(pw/2);
var fth = pw/4; // One fourth of the window.

if (argument0 < 1920/2)
{
    var s1 = px + pw/2;
    var s2 = px;
}
else
{
    var s1 = px;
    var s2 = px + pw/2 -8;
}

var s1m = s1+fth;
var sw = pw/2;

if (instance_exists(targ))
{
    draw_set_alpha(0.75);
    
    if (targ.consuming_id != -1)
        draw_set_color(c_green);
    else if (targ.shake)
        draw_set_color(c_maroon);
    else
        draw_set_color(c_black);
    
    // Initial Square
    draw_roundrect(px+8, py, px+pw-8, ph-8, false);
    
    draw_set_alpha(1);
    draw_set_color(c_white)
    
    draw_set_font(global.font);
    draw_set_valign(fa_top);

    // Name
    draw_set_halign(fa_center);
    draw_text_ext_transformed(s1m, py+16, targ.name, 0, pw, 8, 8, 0);
    
    var name_len = (string_length(targ.name)-1)*5*8/2;
    
    // Form
    draw_set_halign(fa_left);
    draw_text_ext_transformed(s1m-name_len, py+72, targ.form, 0, 1920, 4, 4, 0)
    
    // Level
    draw_set_halign(fa_right);
    draw_text_ext_transformed(s1m+name_len, py+72, "LV. "+string(targ.lv), 0, 1920, 4, 4, 0);

    // Types
    
    if (targ.type2 != "")
    {
        draw_sprite_ext(spr_type, type_get(targ.type1), s1m-90-4, py+104, 3, 3, 0, image_blend, 1);
        draw_sprite_ext(spr_type, type_get(targ.type2), s1m+4, py+104, 3, 3, 0, image_blend, 1);
    }
    else
        draw_sprite_ext(spr_type, type_get(targ.type1), s1m-(90/2), py+104, 3, 3, 0, image_blend, 1);
        
        
    // HP Bar
    draw_sprite_stretched(spr_source , 8, s1+32, py+136, sw-64, 32);
    draw_sprite_stretched(spr_source , hp_bar_get(targ), s1+32, py+136, targ.hp_current/targ.hp*(sw-64), 32);

    draw_text_ext_transformed(s1+sw-32, py+148, string(targ.hp_current)+"/"+string(targ.hp), 0, 1920, 3, 3, 0);
    
    
    // EXP Bar
    
    draw_sprite_stretched(spr_source , 8, s1+32, py+180-4, sw-64, 20);
    draw_sprite_stretched(spr_source , 3, s1+32, py+180-4, targ.xp/targ.base_xp*(sw-64), 20);

    draw_text_ext_transformed(s1+sw-32, py+184-4, string(floor(targ.xp))+"/"+string(floor(targ.base_xp)), 0, 1920, 3, 3, 0);
    

    
    // Items

    var st_x = s2+64+8-8;
    var st_y = py+32+16+16;

    var k = 0;

    for(i=0; i<2; i++)
        for(j=0; j<4; j++)
        {
            var pos_x = st_x+j*(64+4);
            var pos_y = st_y+i*(64+4);
            
            draw_set_alpha(0.75);
            draw_roundrect_colour(pos_x, pos_y, pos_x+64, pos_y+64, c_gray, c_gray, false);
            
            draw_set_alpha(1);
            draw_sprite_ext(item_get_sprite(targ.pocket[k++]), 0, pos_x, pos_y, 2, 2, 0, image_blend, image_alpha);
        }
        
        
    // Consumed Item
    
    /*if (targ.consuming_id != -1)
    {
        k = 0;
        for(i=0; i<2; i++)
            for(j=0; j<4; j++)
                if (k++ == targ.consuming_slot)
                    break;
                
        var pos_x = st_x+j*(64+4);
        var pos_y = st_y+i*(64+4);
                
        draw_sprite_ext(item_get_sprite(targ.pocket[k]), 0, pos_x, pos_y, cos(targ.cons)*2, cos(targ.cons)*2, targ.cons*32, image_blend, image_alpha);
    }*/
    
    
    // Dialog
    
    draw_roundrect_colour(s2+16+8, py+16, s2+sw-16, py+64-8, c_gray, c_gray, false);
}
