if (x < 0)
    x = 0;
else if (x > room_width)
    x = room_width;

if (y < 0)
    y = 0;
else if (y > room_height)
    y = room_height;

motion_set(direction, speed);

sprite_bump(sprite_index, 180, 8);
