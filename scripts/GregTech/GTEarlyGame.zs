// To those reading this script
// Most of these were taking from Nomi-CEu
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

val compressor = mods.gregtech.recipe.RecipeMap.getByName("compressor");
val electrolyzer = mods.gregtech.recipe.RecipeMap.getByName("electrolyzer");
val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler");
val forge_hammer = mods.gregtech.recipe.RecipeMap.getByName("forge_hammer");

//Wrought Iron
furnace.remove(<metaitem:nuggetWroughtIron>);
furnace.addRecipe(<metaitem:ingotWroughtIron>, <minecraft:iron_ingot>, 0.0);

//Clay Electrolyzing
<recipemap:electrolyzer>.findRecipe(60, [<metaitem:dustClay> * 13], null).remove();

electrolyzer.recipeBuilder().inputs([<metaitem:dustClay> * 13]).outputs([<metaitem:dustSodium> * 2, <metaitem:dustSilicon> * 2, <metaitem:dustLithium>, <metaitem:dustAluminium> * 2]).fluidOutputs([<liquid:water>*6000]).duration(364).EUt(15).buildAndRegister();

//Fireclay
<recipemap:compressor>.findRecipe(4, [<metaitem:dustFireclay>], null).remove();
furnace.addRecipe(<metaitem:brick.fireclay>, <metaitem:dustFireclay>, 0.5);
recipes.removeByRecipeName("gregtech:fireclay_dust");
recipes.addShapeless("fireclay_dust", <metaitem:dustFireclay> * 16, [<metaitem:dustClay>, <metaitem:dustBrick>]);

// Clay Block into Clay Ball by hand
recipes.addShapeless(<minecraft:clay_ball> * 4, [<minecraft:clay>]);

//Dusts
recipes.addShapeless(<minecraft:gravel>, [<minecraft:cobblestone>, <ore:toolMortar>]);
recipes.addShapeless(<minecraft:sand>, [<minecraft:gravel>, <ore:toolHammer>]);
recipes.addShapeless(<contenttweaker:block_dust>, [<minecraft:sand>, <ore:toolHammer>]);
forge_hammer.recipeBuilder().inputs([<minecraft:sand>]).outputs([<contenttweaker:block_dust>]).duration(16).EUt(10).buildAndRegister();

//Rubber by hand
recipes.addShaped(<metaitem:plateRubber>,[[<ore:toolHammer>],[<metaitem:rubber_drop>],[<metaitem:rubber_drop>]]);	

//Rubber Sheet
compressor.recipeBuilder().inputs(<metaitem:rubber_drop>).outputs(<metaitem:plateRubber>).duration(20).EUt(8).buildAndRegister();

// remove LV Motor recipes
recipes.removeByRecipeName("gregtech:electric_motor_lv_steel");
recipes.removeByRecipeName("gregtech:electric_motor_lv_iron");
assembler.findRecipe(30, [<metaitem:cableGtSingleTin> * 2, <metaitem:stickSteel> * 2, <metaitem:stickSteelMagnetic>, <metaitem:wireGtSingleCopper> * 4], [null]).remove();
<recipemap:assembler>.findRecipe(30, [<metaitem:cableGtSingleTin> * 2, <metaitem:stickIron> * 2, <metaitem:stickIronMagnetic>, <metaitem:wireGtSingleCopper> * 4], null).remove();


//LV Motor - with Fine Copper Wires
recipes.addShaped(<metaitem:electric.motor.lv>, [
	[<ore:cableGtSingleTin>, <metaitem:wireFineCopper>, <ore:stickIron>], 
	[<metaitem:wireFineCopper>, <ore:stickIronMagnetic>, <metaitem:wireFineCopper>],
	[<ore:stickIron>, <metaitem:wireFineCopper>, <ore:cableGtSingleTin>]]);
assembler.recipeBuilder()
	.inputs([<metaitem:cableGtSingleTin> * 2, <metaitem:stickIron> * 2, <metaitem:stickIronMagnetic>, <metaitem:wireFineCopper> * 4])
	.outputs(<metaitem:electric.motor.lv>)
	.duration(100)
	.EUt(30)
	.buildAndRegister();
// Glass Tube

recipes.addShaped(<metaitem:component.glass.tube>, [
	[null, null, null],
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>],
	[<ore:paneGlass>, <ore:paneGlass>, <ore:paneGlass>]
]);

// t1 board easier
recipes.removeByRecipeName("gregtech:basic_circuit_board");
recipes.addShaped("basic_circuit_board", <metaitem:circuit_board.basic>, [[<ore:wireFineCopper>, <ore:wireFineCopper>, <ore:wireFineCopper>], [<ore:wireFineCopper>, <gregtech:meta_item_1:381>, <ore:wireFineCopper>], [<ore:wireFineCopper>, <ore:wireFineCopper>, <ore:wireFineCopper>]]);
