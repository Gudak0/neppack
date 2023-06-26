import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

val mod = loadedMods["rftoolsdim"];

val MIArray = mod.items as IItemStack[];

for item in MIArray {
	recipes.replaceAllOccurences(<rftools:machine_frame>, <gregtech:machine:994>, item);
}

recipes.remove(<rftoolsdim:dimension_builder>);
recipes.addShaped("new_dimension_builder", <rftoolsdim:dimension_builder>, [[<ore:enderpearl>, <avaritia:singularity:11>, <ore:enderpearl>], 
																			[<avaritia:singularity:10>, <gregtech:machine:994>, <avaritia:singularity:10>], 
																			[<ore:ingotInfinity>, <ore:ingotInfinity>, <ore:ingotInfinity>]]);