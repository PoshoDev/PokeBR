if (chance(argument0))
{
    action = actions.walk;
    
    target_x = irandom_range(0, room_width);
    target_y = irandom_range(0, room_height);
    
    if (!battle)
        orientation_get(target_x, target_y);
    else
        orientation_get(battle_vs.x, battle_vs.y);
    
    direction = point_direction(x, y, target_x, target_y);
    speed = move_get_speed();
    
    return true;
}
else
    return false;
