action = actions.pickup

target = instance_nearest(x, y, obj_item);

orientation_get(target.x, target.y);

direction = point_direction(x, y, target.x, target.y);
speed = move_get_speed();
