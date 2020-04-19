var sprtemp;
var imgnumb;

if (file_exists(argument0))
{
    sprtemp = sprite_add(argument0, 1, false, false, 0, 0);

    imgnumb = sprite_get_width(sprtemp)/sprite_get_height(sprtemp);

    sprite_delete(sprtemp);

    sprtemp = sprite_add(argument0, imgnumb, true, false, 0, 0);

    return sprtemp;
}
else
{
    show_debug_message("Error locating file: "+argument0);
    sprite_save(spr_vis_cam, 0, "AAA.png");
    sprite_save(spr_vis_cam, 0, "Sprites\BBB.png");
    return -1;
}
