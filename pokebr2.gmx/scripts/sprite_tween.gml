///sprite_tween(SWF sprite, removeback)

draw_enable_swf_aa(true);
draw_set_swf_aa_level(1);

//First subimage
surf = surface_create(sprite_get_width(argument0),sprite_get_height(argument0))
surface_set_target(surf)
draw_clear_alpha(make_colour_hsv(0,0,10), false);
draw_sprite(argument0,0,0,0)
surface_reset_target();
spr = sprite_create_from_surface(surf,0,0,sprite_get_width(argument0),sprite_get_height(argument0),argument1,true,sprite_get_width(argument0)/2,sprite_get_height(argument0))
surface_free(surf)

//Adds more subimages
for (i = 1; i <= sprite_get_number(argument0); i++)
    {
    surf = surface_create(sprite_get_width(argument0),sprite_get_height(argument0))
    surface_set_target(surf)
    draw_clear_alpha(make_colour_hsv(0,0,10), 0);
    draw_sprite(argument0,i,0,0)
    surface_reset_target();
    sprite_add_from_surface(spr,surf,0,0,sprite_get_width(argument0),sprite_get_height(argument0),argument1,true)
    surface_free(surf)
    }

sprite_index = spr
