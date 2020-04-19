if (string(argument0)=="all")
{
    if (hp_current<=hp*0.25 || hp-hp_current>=180)
    {
        hp_current = hp;
        
        partic = particles.heal;
        consuming_id = pocket[i];  
        consuming_slot = i;
        cons = 0;
        alarm[1] = 1;
        alarm[2] = 60*2;
        color = c_green;
        
        pocket[i] = -1;
        pocket_no--;
        
        return true;
    }
}
else if (hp_current<=hp*0.25 || hp-hp_current>=argument0*0.75)
{
    hp_current += argument0;
    
    if (hp_current > hp)
        hp_current = hp;
        
    partic = particles.heal;
    consuming_id = pocket[i];  
    consuming_slot = i;
    cons = 0;
    alarm[1] = 1;
    alarm[2] = 60*2;
    color = c_green;
    
    pocket[i] = -1;
    pocket_no--;
        
    return true;
}
else
    return false;
