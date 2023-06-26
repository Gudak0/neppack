import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

val mod = loadedMods["mekanism"];

val mod2 = loadedMods["mekanismgenerators"];

val MIArray = mod.items as IItemStack[];
val MIArray2 = mod2.items as IItemStack[];

for item in MIArray {
	recipes.replaceAllOccurences(<ore:ingotOsmium>, <ore:ingotMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:dustOsmium>, <ore:dustMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:blockOsmium>, <ore:blockMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:nuggetOsmium>, <ore:nuggetMekOsmium>, item);
}

for item in MIArray2 {
	recipes.replaceAllOccurences(<ore:ingotOsmium>, <ore:ingotMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:dustOsmium>, <ore:dustMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:blockOsmium>, <ore:blockMekOsmium>, item);
	recipes.replaceAllOccurences(<ore:nuggetOsmium>, <ore:nuggetMekOsmium>, item);
}

furnace.remove(<mekanism:ingot:1>, <mekanism:oreblock:0>);
furnace.remove(<mekanism:ingot:1>, <mekanism:dust:2>);

furnace.addRecipe(<gregtech:meta_ingot:32017>, <mekanism:oreblock:0>, 1);
furnace.addRecipe(<gregtech:meta_ingot:32017>, <gregtech:meta_dust:32017>, 1);

recipes.remove(<mekanism:ingot:1>);
recipes.remove(<mekanism:dust:2>);
recipes.remove(<mekanism:nugget:1>);
recipes.remove(<mekanism:basicblock:0>);

mods.mekanism.infuser.addRecipe("REDSTONE", 10, <gregtech:meta_ingot:32017>, <mekanism:controlcircuit:0>);

mods.mekanism.crusher.addRecipe(<gregtech:meta_ingot:32017>, <gregtech:meta_dust:32017>);

mods.mekanism.enrichment.removeRecipe(<mekanism:oreblock:0>, <mekanism:dust:2> * 2);
mods.mekanism.enrichment.removeRecipe(<mekanism:dirtydust:2>, <mekanism:dust:2>);

mods.mekanism.enrichment.addRecipe(<mekanism:oreblock:0>, <gregtech:meta_dust:32017> * 2);
mods.mekanism.enrichment.addRecipe(<mekanism:dirtydust:2>, <gregtech:meta_dust:32017>);

mods.mekanism.crusher.removeRecipe(<mekanism:dust:2>, <gregtech:meta_ingot:75>);
mods.mekanism.crusher.removeRecipe(<mekanism:dust:2>, <mekanism:ingot:1>);

recipes.addShaped("convmekosm", <gregtech:meta_ingot:32017>, [[null, null, null], [null, <mekanism:ingot:1>, null], [null, null, null]]);