if (instance_exists(battle_vs))
{
    action_useitem(100);
    
    if action_walk(50) {}
    else if inter_attack(50) {}
    else action_idle();
    
    orientation_get(battle_vs.x, battle_vs.y);
    alarm[0] = irandom_range(30, 60);
}
else
{
    battle_vs = noone;
    battle = false;
    
    ai_explore();
}
