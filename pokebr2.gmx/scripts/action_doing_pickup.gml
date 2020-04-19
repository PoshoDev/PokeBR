/*if (x < 0)
    x = 0;
else if (x > room_width)
    x = room_width;

if (y < 0)
    y = 0;
else if (y > room_height)
    y = room_height;*/

if (speed > 0)
{
    motion_set(direction, speed);
    
    sprite_bump(sprite_index, 180, 8);
    
    if (instance_place(x, y, obj_item))
    {
        speed = 0;
        var item = instance_nearest(x, y, obj_item);
        
        for(i=0; i<8; i++)
        {
            if (pocket[i] == -1)
            {
                pocket[i] = item.item_index;
                with item instance_destroy();
                
                pocket_no++;
                
                break;
            }
        }
        
    }
}
