atk = round((((32 + 2 * base_atk /*+ (EV/4)*/ ) * lv/100 ) + 5) /* * Nature Value*/);

for(i=0; i<argument_count; i++)
    atk *= argument[i];
