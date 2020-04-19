var name = argument0;
var data = argument1;
var command = "";

if (string_pos("!heal ", argument1) == 1)
{
    var target = string_delete(argument1, 1, 6);    
    
    for (i=0; i<instance_count; i++)
    {
        found = instance_id[i];
        
        if (object_get_name(found.object_index) == "obj_pokemon")
            if (string_pos(string_lower(found.name), target))
            {
                found.hp = found.base_hp;
                found.color_hp = c_green;
            }
    }
}

/*var k = array_length_1d(global.action)
if (string_pos("!", argument1) == 1)
{
for (var i=0; i<=k-1; i++)
{
if string_pos(string(global.action[i]), argument1)
{
command = global.action[i];
break;
}
}
if command != ""
switch(command)
{
case "join":
action_join(name);
break;

case "leave":
action_leave(name);
break;

case "coins":
case "money":
action_coins(name);
break;

case "poop":
action_poop(name);
break;

case "buy":
action_buy(name,data);
break;

case "accept":
case "yes":
action_accept(name)
break;

case "cancel":
case "no":
action_cancel(name);
break;

case "wear":
action_wear(name,data);
break;
}
}*/
