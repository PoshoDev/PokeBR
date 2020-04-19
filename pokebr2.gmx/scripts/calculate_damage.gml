var atk_pow = 80;

if (owner.atk > owner.spatk)
{
    var pick_atk = owner.atk;
    var pick_def = other.def;
}
else
{
    var pick_atk = owner.spatk;
    var pick_def = other.spdef;
}

return floor(((((2 * owner.lv / 5 + 2) * pick_atk * atk_pow / pick_def) / 50) + 2) /* * STAB */ /* * Weakness/Resistance */ * rand(85,100) / 100)
