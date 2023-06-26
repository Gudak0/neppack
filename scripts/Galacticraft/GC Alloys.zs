import mods.gregtech.recipe.RecipeMap;
import mods.gregtech.recipe.Recipe;

val LV = 32;
val MV = 128;
val HV = 512;
val EV = 2048;
val IV = 8192;
val LuV = 32767;
val ZPM = 131072;
val UV = 524288;

// Tier 1 Heavy Duty Alloy

mixer.recipeBuilder()
	.inputs(<metaitem:dustBronze> * 2, <metaitem:dustAluminium> * 2, <metaitem:dustSteel> * 2)
	.outputs(<metaitem:dustHeavyDutyAlloyI>)
	.EUt(128)
	.duration(1000)
	.buildAndRegister();
	
alloy_blast_smelter.recipeBuilder()
	.fluidInputs(<liquid:bronze> * 288, <liquid:aluminium> * 288, <liquid:steel> * 288)
	.fluidOutputs(<liquid:heavy_duty_alloy_i> * 288)
	.property("temperature", 2700)
	.EUt(128)
	.duration(1000)
	.buildAndRegister();
	
electric_blast_furnace.recipeBuilder()
	.inputs(<metaitem:dustHeavyDutyAlloyI>)
	.outputs(<metaitem:ingotHeavyDutyAlloyI>)
	.property("temperature", 2700)
	.EUt(128)
	.duration(500)
	.buildAndRegister();
	
// Tier 2 Heavy Duty Alloy

mixer.recipeBuilder()
	.inputs(<metaitem:dustHeavyDutyAlloyI> * 2, <metaitem:dustMeteoricIron> * 2)
	.outputs(<metaitem:dustHeavyDutyAlloyIi>)
	.EUt(512)
	.duration(1000)
	.buildAndRegister();
	
alloy_blast_smelter.recipeBuilder()
	.fluidInputs(<liquid:heavy_duty_alloy_i> * 288, <liquid:meteoric_iron> * 288)
	.fluidOutputs(<liquid:heavy_duty_alloy_ii> * 288)
	.property("temperature", 3600)
	.EUt(512)
	.duration(1000)
	.buildAndRegister();
	
electric_blast_furnace.recipeBuilder()
	.inputs(<metaitem:dustHeavyDutyAlloyIi>)
	.outputs(<metaitem:ingotHeavyDutyAlloyIi>)
	.property("temperature", 3600)
	.EUt(512)
	.duration(500)
	.buildAndRegister();