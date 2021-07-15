import crafttweaker.item.IItemStack;
val a = <mysticalagradditions:insanium>;
val b = <avaritia:resource:6>;
val c = <mysticalagriculture:master_infusion_crystal>;
val d = <mysticalagriculture:infusion_crystal>;

recipes.addShaped("Creative_Essence", <mysticalagradditions:stuff:69>,
    [[b,a,b],
    [a,c.reuse(),a],
    [b,a,b]]);

recipes.addShaped("Creative_Essence_1", <mysticalagradditions:stuff:69>,
    [[b,a,b],
    [a,d.anyDamage().transformDamage(500),a],
    [b,a,b]]);

