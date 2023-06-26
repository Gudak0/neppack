val assembler = mods.gregtech.recipe.RecipeMap.getByName("assembler"); 

<recipemap:assembler>.findRecipe(30, [<metaitem:wireGtDoubleCupronickel> * 8, <metaitem:foilBronze> * 8], [<liquid:tin_alloy> * 144]).remove();
<recipemap:assembler>.findRecipe(120, [<metaitem:wireGtDoubleKanthal> * 8, <metaitem:foilAluminium> * 8], [<liquid:copper> * 144]).remove();
<recipemap:assembler>.findRecipe(480, [<metaitem:wireGtDoubleNichrome> * 8, <metaitem:foilStainlessSteel> * 8], [<liquid:aluminium> * 144]).remove();
<recipemap:assembler>.findRecipe(1920, [<metaitem:wireGtDoubleTungstenSteel> * 8, <metaitem:foilVanadiumSteel> * 8], [<liquid:nichrome> * 144]).remove();
<recipemap:assembler>.findRecipe(7680, [<metaitem:wireGtDoubleHssg> * 8, <metaitem:foilTungstenCarbide> * 8], [<liquid:tungsten> * 144]).remove();
<recipemap:assembler>.findRecipe(30720, [<metaitem:wireGtDoubleNaquadah> * 8, <metaitem:foilOsmium> * 8], [<liquid:tungsten_steel> * 144]).remove();
<recipemap:assembler>.findRecipe(122880, [<metaitem:wireGtDoubleTrinium> * 8, <metaitem:foilNaquadahEnriched> * 8], [<liquid:naquadah> * 144]).remove();
<recipemap:assembler>.findRecipe(491520, [<metaitem:wireGtDoubleTritanium> * 8, <metaitem:foilNaquadria> * 8], [<liquid:trinium> * 144]).remove();

assembler.recipeBuilder()
	.fluidInputs(<liquid:tin_alloy> * 144)
	.inputs(<ore:wireGtDoubleCupronickel> * 8, <ore:foilBronze> * 8, <ore:ingotFiery>)
	.outputs(<gregtech:wire_coil>)
	.duration(200)
	.EUt(30)
	.buildAndRegister();

assembler.recipeBuilder()
	.fluidInputs(<liquid:copper> * 144)
	.inputs(<ore:wireGtDoubleKanthal> * 8, <ore:foilAluminium> * 8, <ore:ingotFiery> * 2)
	.outputs(<gregtech:wire_coil:1>)
	.duration(300)
	.EUt(120)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.fluidInputs(<liquid:aluminium> * 144)
	.inputs(<ore:wireGtDoubleNichrome> * 8, <ore:foilStainlessSteel> * 8, <ore:ingotFiery> * 4)
	.outputs(<gregtech:wire_coil:2>)
	.duration(400)
	.EUt(480)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.fluidInputs(<liquid:nichrome> * 144)
	.inputs(<ore:wireGtDoubleTungstenSteel> * 8, <ore:foilVanadiumSteel> * 8, <ore:ingotFiery> * 8)
	.outputs(<gregtech:wire_coil:3>)
	.duration(500)
	.EUt(1920)
	.buildAndRegister();

assembler.recipeBuilder()
	.fluidInputs(<liquid:tungsten> * 144)
	.inputs(<ore:wireGtDoubleHssg> * 8, <ore:foilTungstenCarbide> * 8, <ore:ingotFiery> * 16)
	.outputs(<gregtech:wire_coil:4>)
	.duration(600)
	.EUt(7680)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.fluidInputs(<liquid:tungsten_steel> * 144)
	.inputs(<ore:wireGtDoubleNaquadah> * 8, <ore:foilOsmium> * 8, <ore:ingotFiery> * 32)
	.outputs(<gregtech:wire_coil:5>)
	.duration(700)
	.EUt(30720)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.fluidInputs(<liquid:naquadah> * 144)
	.inputs(<ore:wireGtDoubleTrinium> * 8, <ore:foilNaquadahEnriched> * 8, <ore:ingotFiery> * 48)
	.outputs(<gregtech:wire_coil:6>)
	.duration(800)
	.EUt(122880)
	.buildAndRegister();
	
assembler.recipeBuilder()
	.fluidInputs(<liquid:trinium> * 144)
	.inputs(<ore:wireGtDoubleTritanium> * 8, <ore:foilNaquadria> * 8, <ore:ingotFiery> * 64)
	.outputs(<gregtech:wire_coil:7>)
	.duration(900)
	.EUt(491520)
	.buildAndRegister();