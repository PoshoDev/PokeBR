sprite_bump(sprite_index, 0, 16);
            
var temp_x = x;
var temp_y = y;

x = room_width*4;
y = room_height*4;

target = instance_nearest(temp_x, temp_y, obj_pokemon);

x = temp_x;
y = temp_y;

battle_vs = target;
battle = true;

target.battle_vs = self;
target.battle = true;

var cam = instance_nearest(x, y, obj_cam)
if (cam.target.id == id || cam.target.battle_vs.id == id)
    cam.fix = false;


orientation_get(target.x, target.y);
