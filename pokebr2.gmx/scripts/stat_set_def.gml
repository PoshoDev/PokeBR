def = round((((32 + 2 * base_def /*+ (EV/4)*/ ) * lv/100 ) + 5) /* * Nature Value*/);

for(i=0; i<argument_count; i++)
    def *= argument[i];
