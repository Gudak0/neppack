import crafttweaker.mods.IMod;
import crafttweaker.item.IItemStack;

// Replace some Galacticraft stuff with GT Stuff
val GC = loadedMods["galacticraftcore"];
val GCP = loadedMods["galacticraftplanets"];
val EP = loadedMods["extraplanets"];

val GCArray = GC.items as IItemStack[];
val GCPArray = GCP.items as IItemStack[];
val EPArray = EP.items as IItemStack[];

for item in GCArray {
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:0>, <metaitem:ingotMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:1>, <metaitem:plateMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:6>, <metaitem:plateCopper>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:7>, <metaitem:plateTin>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:8>, <metaitem:plateAluminium>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:9>, <metaitem:plateSteel>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:10>, <metaitem:plateBronze>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:11>, <metaitem:plateIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:heavy_plating>, <metaitem:plateHeavyDutyAlloyI>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_mars:3>, <metaitem:plateHeavyDutyAlloyIi>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_asteroids:5>, <metaitem:plateHeavyDutyAlloyIii>, item);
}

for item in GCPArray {
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:0>, <metaitem:ingotMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:1>, <metaitem:plateMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:6>, <metaitem:plateCopper>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:7>, <metaitem:plateTin>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:8>, <metaitem:plateAluminium>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:9>, <metaitem:plateSteel>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:10>, <metaitem:plateBronze>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:11>, <metaitem:plateIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:heavy_plating>, <metaitem:plateHeavyDutyAlloyI>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_mars:3>, <metaitem:plateHeavyDutyAlloyIi>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_asteroids:5>, <metaitem:plateHeavyDutyAlloyIii>, item);
}

for item in EPArray {
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:0>, <metaitem:ingotMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:item_basic_moon:1>, <metaitem:plateMeteoricIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:6>, <metaitem:plateCopper>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:7>, <metaitem:plateTin>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:8>, <metaitem:plateAluminium>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:9>, <metaitem:plateSteel>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:10>, <metaitem:plateBronze>, item);
	recipes.replaceAllOccurences(<galacticraftcore:basic_item:11>, <metaitem:plateIron>, item);
	recipes.replaceAllOccurences(<galacticraftcore:heavy_plating>, <metaitem:plateHeavyDutyAlloyI>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_mars:3>, <metaitem:plateHeavyDutyAlloyIi>, item);
	recipes.replaceAllOccurences(<galacticraftplanets:item_basic_asteroids:5>, <metaitem:plateHeavyDutyAlloyIii>, item);
	recipes.replaceAllOccurences(<extraplanets:tier4_items:3>, <metaitem:plateHeavyDutyAlloyIv>, item);
	recipes.replaceAllOccurences(<extraplanets:tier5_items:3>, <metaitem:plateHeavyDutyAlloyV>, item);
	recipes.replaceAllOccurences(<extraplanets:tier6_items:3>, <metaitem:plateHeavyDutyAlloyVi>, item);
	recipes.replaceAllOccurences(<extraplanets:tier7_items:3>, <metaitem:plateHeavyDutyAlloyVii>, item);
	recipes.replaceAllOccurences(<extraplanets:tier8_items:3>, <metaitem:plateHeavyDutyAlloyViii>, item);
	recipes.replaceAllOccurences(<extraplanets:tier9_items:3>, <metaitem:plateHeavyDutyAlloyIx>, item);
	recipes.replaceAllOccurences(<extraplanets:tier10_items:3>, <metaitem:plateHeavyDutyAlloyX>, item);
}

// Recipes																	 
furnace.remove(<galacticraftcore:item_basic_moon:0>, <galacticraftcore:meteoric_iron_raw>);
furnace.remove(<galacticraftcore:item_basic_moon:0>, <galacticraftcore:fallen_meteor>);
furnace.addRecipe(<metaitem:ingotMeteoricIron>, <galacticraftcore:meteoric_iron_raw>);
furnace.addRecipe(<metaitem:ingotMeteoricIron>, <galacticraftcore:fallen_meteor>);
furnace.addRecipe(<metaitem:ingotMeteoricIron>, <metaitem:dustMeteoricIron>);