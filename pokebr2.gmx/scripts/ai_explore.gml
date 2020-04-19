alarm[0] = irandom_range(30, 120);

if (actions_evolve()) {}


else if (action_useitem(50)) { action = actions.useitem; }


else if (chance(75) /* 25% Probability */
&& pocket_no<8 && distance_to_object(obj_item)<1024)
{
    action_pickup();
}


else if (!rand(0, 4) /* 20% Probability */
&& distance_to_object(obj_pokemon) < 1024)
{
    interact = irandom_range(0, 0);
    
    switch(interact)
    {    
        case inter.attack:
            //inter_attack();
            action_battle();
        break;
    }
}


else if action_walk(50) {}
else action_idle();
