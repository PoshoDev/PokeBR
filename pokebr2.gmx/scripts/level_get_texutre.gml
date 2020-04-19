surf = surface_create(64, 64);

surface_set_target(surf)
draw_clear_alpha(c_black, false);

draw_set_color(c_white);
draw_set_font(global.font);
draw_set_halign(fa_center);
draw_set_valign(fa_bottom);

var text = "LV. "+string(argument0);
var len = (string_length(text)-1)*5/2;

draw_set_color(c_black);
draw_rectangle(32-len, 64-6, 32+len, 64, false)

draw_set_color(c_white);
draw_text(32, 64, text)

surface_reset_target();

lv_tex = sprite_get_texture(sprite_create_from_surface(surf,0,0,pow,pow,true,false,0,0), 0)
surface_free(surf)
