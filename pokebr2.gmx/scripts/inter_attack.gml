if (chance(argument0))
{
    sprite_bump(sprite_index, 0, 16);
                
    var temp_x = x;
    var temp_y = y;
    
    x = room_width*4;
    y = room_height*4;
    
    target = instance_nearest(temp_x, temp_y, obj_pokemon);
    
    x = temp_x;
    y = temp_y;
    
    if (type2 != "" && (irandom_range(0, 1)))
        var attack_type = type2;
    else
        var attack_type = type1;
    
    var attack = instance_create(x, y, obj_attack);
    attack.target = target;
    attack.type = attack_type;
    attack.image_index = type_get(attack_type);
    attack.owner = self;
    
    orientation_get(target.x, target.y);
}
