var arg = argument0-global.dex_min+1;
global.PUTTY =arg

id_no =         real(global.dex_data[arg, dex.id]);
name =          global.dex_data[arg, dex.name];
form =          global.dex_data[arg, dex.form];
type1 =         global.dex_data[arg, dex.type1];
type2 =         global.dex_data[arg, dex.type2];
base_hp =       real(global.dex_data[arg, dex.hp]);
base_atk =      real(global.dex_data[arg, dex.atk]);
base_def =      real(global.dex_data[arg, dex.def]);
base_spatk =    real(global.dex_data[arg, dex.spatk]);
base_spdef =    real(global.dex_data[arg, dex.spdef]);
base_spd =      real(global.dex_data[arg, dex.spd]);
base_xp =       real(global.dex_data[arg, dex.xp]);
xp_type =       global.dex_data[arg, dex.xp_type];
egg1 =          global.dex_data[arg, dex.egg1];
egg2 =          global.dex_data[arg, dex.egg2];
phase =         real(global.dex_data[arg, dex.phase]);
evo_lv =        global.dex_data[arg, dex.evo_lv];
evo[0] =        global.dex_data[arg, dex.evo1];
evo[1] =        global.dex_data[arg, dex.evo2];
evo[2] =        global.dex_data[arg, dex.evo3];
evo[3] =        global.dex_data[arg, dex.evo4];
evo[4] =        global.dex_data[arg, dex.evo5];
evo[5] =        global.dex_data[arg, dex.evo6];
evo[6] =        global.dex_data[arg, dex.evo7];
//evo[7] =        global.dex_data[arg, dex.evo8];



pkmn = string_lower(name);

if (form != "")
    pkmn = string_insert(string_lower(form), pkmn+"_", string_length(pkmn)+2);
    
spr1 = make_sprite("Sprites\"+pkmn+shiny+".png");
spr2 = make_sprite("Sprites\"+pkmn+shiny+"_back"+".png");

pow = sprite_get_height(spr1);
