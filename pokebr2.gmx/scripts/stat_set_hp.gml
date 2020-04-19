hp = round(((32 + 2 * base_hp /*+ (EV/4)*/) * lv/100 ) + 10 + lv)

for(i=0; i<argument_count; i++)
    hp *= argument[i];
