if (evolve)
{
    action = actions.evolve;
    alarm[0] = 60*100;
    
    evo_part = 0;
    evo_time = 60*2;
    evo_sx = 0;
    evo_sy = 0;
    evo_dir = -1;
    
    color = c_black;
    
    orientation_get(x-8, y+8);
    
    speed = 0;
    
    partic = particles.evolve;
    alarm[1] = 1;
    alarm[2] = 60*4;
    
    return true;
}
else
    return false;
