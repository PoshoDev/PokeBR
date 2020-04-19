if (pocket_no>0 &&chance(argument0))
{
    for(i=0; i<8; i++)
        switch(pocket[i])
        {
            case items.potion:
                return item_do_heal(20);
            break;
            
            case items.superpotion:
                return item_do_heal(60);
            break;
            
            case items.hyperpotion:
                return item_do_heal(120);
            break;
            
            case items.maxpotion:
                return item_do_heal("all");
            break;
            
            case items.fullrestore:
                return item_do_heal("all");
            break;
            
            case items.berry_oran:
                return item_do_heal(10);
            break;    
        }
}

return false;
