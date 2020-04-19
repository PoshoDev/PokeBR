var percent = hp_current/hp;

stat_set_hp();
    
hp_current = round(hp*percent);
