if (argument1 < y)
{
    sprite_index = spr2;
    v_dir = -1;
    
    if (argument0 < x)
    {
        h_dir = -1;
        image_xscale = -1;
    }
    else
    {
        h_dir = 1;
        image_xscale = 1;
    }
}
else
{
    sprite_index = spr1;
    v_dir = 1;
    
    if (argument0 < x)
    {
        h_dir = -1;
        image_xscale = 1;
    }
    else
    {
        h_dir = 1;
        image_xscale = -1;
    }
}

if (sprite_exists(sprite_index) == false)
    sprite_index = spr_block;
