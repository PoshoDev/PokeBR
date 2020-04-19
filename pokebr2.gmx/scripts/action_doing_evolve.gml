if (--evo_time <= 0)
{
    if (evo_part == 0)
    {
        //var look = evo[0];
        //var find = global.dex_data[id_no-global.dex_min+2, dex.name];
        //game_end()
        for(global.i=global.dex_min; global.i<global.dex_max; global.i++)
        {
            
            global.look = evo[0];
            global.find = global.dex_data[global.i-global.dex_min, dex.name];
            
            if (global.look == global.find)
            {
                sprite_delete(spr1);
                sprite_delete(spr2);
                
                make_pokemon(global.i-1);

                sprite_index = spr1;
                
                evolve = false;
                evo_dir = 1;
                
                evo_sx = -pow/2;
                evo_sy = -pow;
                
                break;
            }
        }
    }
    else if (evo_part == 1)
    {
        evo_sx = 0;
        evo_sy = 0;
        
        color = c_white;
        
        action = actions.idle;
        alarm[0] = 60*2;
        
        exit
    }
    
    evo_part++;
    evo_time = 60*2;
}

evo_sx += pow/60/2/2 * evo_dir;
evo_sy += pow/60/2 * evo_dir;
