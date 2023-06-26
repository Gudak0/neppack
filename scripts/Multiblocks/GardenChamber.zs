import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;

val LV = 32;
val MV = 128;
val HV = 512;
val EV = 2048;
val IV = 8192;
val LuV = 32767;
val ZPM = 131072;
val UV = 524288;

// Multiblock crap
val garden_chamber = Builder.start("mbt:garden_chamber")
	.withPattern(function(controller as IControllerTile) as IBlockPattern {
			return FactoryBlockPattern.start()
				.aisle("CCC", "CCC", "CCC")
				.aisle("CCC", "CCC", "CCC")
				.aisle("CCC", "CXC", "CCC")
				.where('X', controller.self())
				.where("C", CTPredicate.states(<metastate:gregtech:metal_casing:4>)
							| CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
							| CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
							| CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1) 
							| CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
							)
				.build();
			} as IPatternBuilderFunction)
		.withRecipeMap(
			FactoryRecipeMap.start("garden_chamber")
				.minInputs(1)
				.maxInputs(1)
				.minOutputs(1)
				.maxOutputs(1)
				.build())
		.withBaseTexture(<cube_renderer:SOLID_STEEL_CASING>)
		.buildAndRegister();
		
garden_chamber.hasMaintenanceMechanics = true;
garden_chamber.hasMufflerMechanics = false;

// Recipe for the Multiblock controller
recipes.addShaped("gcr", <gregtech:machine:32000>, [[<gregtech:metal_casing:4>, <ore:circuitHv>, <gregtech:metal_casing:4>], [<ore:circuitHv>, <gregtech:machine:988>, <ore:circuitHv>], [<gregtech:metal_casing:4>, <ore:circuitHv>, <gregtech:metal_casing:4>]]);

// Recipes for the Multiblock itself

// Tier 1 Mystical Agriculture seeds
garden_chamber.recipeMap.recipeBuilder()
	.duration(200)
	.EUt(512)
	.notConsumable(<mysticalagriculture:tier1_inferium_seeds>)
	.outputs(<mysticalagriculture:crafting:0>)
	.buildAndRegister();
	
GCAddRecipe(<mysticalagriculture:stone_seeds>, <mysticalagriculture:stone_essence>, HV);
GCAddRecipe(<mysticalagriculture:dirt_seeds>, <mysticalagriculture:dirt_essence>, HV);
GCAddRecipe(<mysticalagriculture:nature_seeds>, <mysticalagriculture:nature_essence>, HV);
GCAddRecipe(<mysticalagriculture:wood_seeds>, <mysticalagriculture:wood_essence>, HV);
GCAddRecipe(<mysticalagriculture:water_seeds>, <mysticalagriculture:water_essence>, HV);
GCAddRecipe(<mysticalagriculture:ice_seeds>, <mysticalagriculture:ice_essence>, HV);
GCAddRecipe(<mysticalagriculture:zombie_seeds>, <mysticalagriculture:zombie_essence>, HV);
	
// Tier 2 Mystical Argiculture seeds
garden_chamber.recipeMap.recipeBuilder()
	.duration(200)
	.EUt(2048)
	.notConsumable(<mysticalagriculture:tier2_inferium_seeds>)
	.outputs(<mysticalagriculture:crafting:0> * 2)
	.buildAndRegister();
	
GCAddRecipe(<mysticalagriculture:fire_seeds>, <mysticalagriculture:fire_essence>, EV);
GCAddRecipe(<mysticalagriculture:dye_seeds>, <mysticalagriculture:dye_essence>, EV);
GCAddRecipe(<mysticalagriculture:nether_seeds>, <mysticalagriculture:nether_essence>, EV);
GCAddRecipe(<mysticalagriculture:coal_seeds>, <mysticalagriculture:coal_essence>, EV);
GCAddRecipe(<mysticalagriculture:pig_seeds>, <mysticalagriculture:pig_essence>, EV);
GCAddRecipe(<mysticalagriculture:chicken_seeds>, <mysticalagriculture:chicken_essence>, EV);
GCAddRecipe(<mysticalagriculture:cow_seeds>, <mysticalagriculture:cow_essence>, EV);
GCAddRecipe(<mysticalagriculture:sheep_seeds>, <mysticalagriculture:sheep_essence>, EV);
GCAddRecipe(<mysticalagriculture:slime_seeds>, <mysticalagriculture:slime_essence>, EV);
GCAddRecipe(<mysticalagriculture:silicon_seeds>, <mysticalagriculture:silicon_essence>, EV);
GCAddRecipe(<mysticalagriculture:sulfur_seeds>, <mysticalagriculture:sulfur_essence>, EV);
GCAddRecipe(<mysticalagriculture:aluminum_seeds>, <mysticalagriculture:aluminum_essence>, EV);
GCAddRecipe(<mysticalagriculture:copper_seeds>, <mysticalagriculture:copper_essence>, EV);
GCAddRecipe(<mysticalagriculture:aluminum_brass_seeds>, <mysticalagriculture:aluminum_brass_essence>, EV);
GCAddRecipe(<mysticalagriculture:grains_of_infinity_seeds>, <mysticalagriculture:grains_of_infinity_essence>, EV);
GCAddRecipe(<mysticalagriculture:mystical_flower_seeds>, <mysticalagriculture:mystical_flower_essence>, EV);
GCAddRecipe(<mysticalagriculture:marble_seeds>, <mysticalagriculture:marble_essence>, EV);
GCAddRecipe(<mysticalagriculture:limestone_seeds>, <mysticalagriculture:limestone_essence>, EV);
GCAddRecipe(<mysticalagriculture:basalt_seeds>, <mysticalagriculture:basalt_essence>, EV);
	
// Tier 3 Mystical Agricultre seeds
garden_chamber.recipeMap.recipeBuilder()
	.duration(200)
	.EUt(8192)
	.notConsumable(<mysticalagriculture:tier3_inferium_seeds>)
	.outputs(<mysticalagriculture:crafting:0> * 3)
	.buildAndRegister();
	
GCAddRecipe(<mysticalagriculture:iron_seeds>, <mysticalagriculture:iron_essence>, IV);
GCAddRecipe(<mysticalagriculture:nether_quartz_seeds>, <mysticalagriculture:nether_quartz_essence>, IV);
GCAddRecipe(<mysticalagriculture:glowstone_seeds>, <mysticalagriculture:glowstone_essence>, IV);
GCAddRecipe(<mysticalagriculture:redstone_seeds>, <mysticalagriculture:redstone_essence>, IV);
GCAddRecipe(<mysticalagriculture:obsidian_seeds>, <mysticalagriculture:obsidian_essence>, IV);
GCAddRecipe(<mysticalagriculture:skeleton_seeds>, <mysticalagriculture:skeleton_essence>, IV);
GCAddRecipe(<mysticalagriculture:creeper_seeds>, <mysticalagriculture:creeper_essence>, IV);
GCAddRecipe(<mysticalagriculture:spider_seeds>, <mysticalagriculture:spider_essence>, IV);
GCAddRecipe(<mysticalagriculture:rabbit_seeds>, <mysticalagriculture:rabbit_essence>, IV);
GCAddRecipe(<mysticalagriculture:guardian_seeds>, <mysticalagriculture:guardian_essence>, IV);
GCAddRecipe(<mysticalagriculture:saltpeter_seeds>, <mysticalagriculture:saltpeter_essence>, IV);
GCAddRecipe(<mysticalagriculture:tin_seeds>, <mysticalagriculture:tin_essence>, IV);
GCAddRecipe(<mysticalagriculture:bronze_seeds>, <mysticalagriculture:bronze_essence>, IV);
GCAddRecipe(<mysticalagriculture:silver_seeds>, <mysticalagriculture:silver_essence>, IV);
GCAddRecipe(<mysticalagriculture:lead_seeds>, <mysticalagriculture:lead_essence>, IV);
GCAddRecipe(<mysticalagriculture:blizz_seeds>, <mysticalagriculture:blizz_essence>, IV);
GCAddRecipe(<mysticalagriculture:blitz_seeds>, <mysticalagriculture:blitz_essence>, IV);
GCAddRecipe(<mysticalagriculture:basalz_seeds>, <mysticalagriculture:basalz_essence>, IV);
GCAddRecipe(<mysticalagriculture:knightslime_seeds>, <mysticalagriculture:knightslime_essence>, IV);
GCAddRecipe(<mysticalagriculture:ardite_seeds>, <mysticalagriculture:ardite_essence>, IV);
GCAddRecipe(<mysticalagriculture:electrical_steel_seeds>, <mysticalagriculture:electrical_steel_essence>, IV);
GCAddRecipe(<mysticalagriculture:redstone_alloy_seeds>, <mysticalagriculture:redstone_alloy_essence>, IV);
GCAddRecipe(<mysticalagriculture:conductive_iron_seeds>, <mysticalagriculture:conductive_iron_essence>, IV);
GCAddRecipe(<mysticalagriculture:manasteel_seeds>, <mysticalagriculture:manasteel_essence>, IV);
GCAddRecipe(<mysticalagriculture:steeleaf_seeds>, <mysticalagriculture:steeleaf_essence>, IV);
GCAddRecipe(<mysticalagriculture:ironwood_seeds>, <mysticalagriculture:ironwood_essence>, IV);
GCAddRecipe(<mysticalagriculture:sky_stone_seeds>, <mysticalagriculture:sky_stone_essence>, IV);
GCAddRecipe(<mysticalagriculture:certus_quartz_seeds>, <mysticalagriculture:certus_quartz_essence>, IV);
	
// Tier 4 Mystical Agriculture seeds
garden_chamber.recipeMap.recipeBuilder()
	.duration(200)
	.EUt(32767)
	.notConsumable(<mysticalagriculture:tier4_inferium_seeds>)
	.outputs(<mysticalagriculture:crafting:0> * 4)
	.buildAndRegister();
	
GCAddRecipe(<mysticalagriculture:gold_seeds>, <mysticalagriculture:gold_essence>, LuV);
GCAddRecipe(<mysticalagriculture:lapis_lazuli_seeds>, <mysticalagriculture:lapis_lazuli_essence>, LuV);
GCAddRecipe(<mysticalagriculture:end_seeds>, <mysticalagriculture:end_essence>, LuV);
GCAddRecipe(<mysticalagriculture:experience_seeds>, <mysticalagriculture:experience_essence>, LuV);
GCAddRecipe(<mysticalagriculture:blaze_seeds>, <mysticalagriculture:blaze_essence>, LuV);
GCAddRecipe(<mysticalagriculture:ghast_seeds>, <mysticalagriculture:ghast_essence>, LuV);
GCAddRecipe(<mysticalagriculture:enderman_seeds>, <mysticalagriculture:enderman_essence>, LuV);
GCAddRecipe(<mysticalagriculture:steel_seeds>, <mysticalagriculture:steel_essence>, LuV);
GCAddRecipe(<mysticalagriculture:nickel_seeds>, <mysticalagriculture:nickel_essence>, LuV);
GCAddRecipe(<mysticalagriculture:constantan_seeds>, <mysticalagriculture:constantan_essence>, LuV);
GCAddRecipe(<mysticalagriculture:electrum_seeds>, <mysticalagriculture:electrum_essence>, LuV);
GCAddRecipe(<mysticalagriculture:invar_seeds>, <mysticalagriculture:invar_essence>, LuV);
GCAddRecipe(<mysticalagriculture:mithril_seeds>, <mysticalagriculture:mithril_essence>, LuV);
GCAddRecipe(<mysticalagriculture:ruby_seeds>, <mysticalagriculture:ruby_essence>, LuV);
GCAddRecipe(<mysticalagriculture:sapphire_seeds>, <mysticalagriculture:sapphire_essence>, LuV);
GCAddRecipe(<mysticalagriculture:peridot_seeds>, <mysticalagriculture:peridot_essence>, LuV);
GCAddRecipe(<mysticalagriculture:amber_seeds>, <mysticalagriculture:amber_essence>, LuV);
GCAddRecipe(<mysticalagriculture:topaz_seeds>, <mysticalagriculture:topaz_essence>, LuV);
GCAddRecipe(<mysticalagriculture:malachite_seeds>, <mysticalagriculture:malachite_essence>, LuV);
GCAddRecipe(<mysticalagriculture:tanzanite_seeds>, <mysticalagriculture:tanzanite_essence>, LuV);
GCAddRecipe(<mysticalagriculture:signalum_seeds>, <mysticalagriculture:signalum_essence>, LuV);
GCAddRecipe(<mysticalagriculture:lumium_seeds>, <mysticalagriculture:lumium_essence>, LuV);
GCAddRecipe(<mysticalagriculture:fluxed_electrum_seeds>, <mysticalagriculture:fluxed_electrum_essence>, LuV);
GCAddRecipe(<mysticalagriculture:cobalt_seeds>, <mysticalagriculture:cobalt_essence>, LuV);
GCAddRecipe(<mysticalagriculture:soularium_seeds>, <mysticalagriculture:soularium_essence>, LuV);
GCAddRecipe(<mysticalagriculture:dark_steel_seeds>, <mysticalagriculture:dark_steel_essence>, LuV);
GCAddRecipe(<mysticalagriculture:pulsating_iron_seeds>, <mysticalagriculture:pulsating_iron_essence>, LuV);
GCAddRecipe(<mysticalagriculture:energetic_alloy_seeds>, <mysticalagriculture:energetic_alloy_essence>, LuV);
GCAddRecipe(<mysticalagriculture:elementium_seeds>, <mysticalagriculture:elementium_essence>, LuV);
GCAddRecipe(<mysticalagriculture:osmium_seeds>, <mysticalagriculture:osmium_essence>, LuV);
GCAddRecipe(<mysticalagriculture:glowstone_ingot_seeds>, <mysticalagriculture:glowstone_ingot_essence>, LuV);
GCAddRecipe(<mysticalagriculture:alumite_seeds>, <mysticalagriculture:alumite_essence>, LuV);
GCAddRecipe(<mysticalagriculture:knightmetal_seeds>, <mysticalagriculture:knightmetal_essence>, LuV);
GCAddRecipe(<mysticalagriculture:fiery_ingot_seeds>, <mysticalagriculture:fiery_ingot_essence>, LuV);
GCAddRecipe(<mysticalagriculture:fluix_seeds>, <mysticalagriculture:fluix_essence>, LuV);
	
// Tier 5 Mystical Agriculture seeds
garden_chamber.recipeMap.recipeBuilder()
	.duration(200)
	.EUt(131072)
	.notConsumable(<mysticalagriculture:tier5_inferium_seeds>)
	.outputs(<mysticalagriculture:crafting:0> * 5)
	.buildAndRegister();
	
GCAddRecipe(<mysticalagriculture:diamond_seeds>, <mysticalagriculture:diamond_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:emerald_seeds>, <mysticalagriculture:emerald_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:wither_skeleton_seeds>, <mysticalagriculture:wither_skeleton_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:platinum_seeds>, <mysticalagriculture:platinum_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:iridium_seeds>, <mysticalagriculture:iridium_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:enderium_seeds>, <mysticalagriculture:enderium_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:manyullyn_seeds>, <mysticalagriculture:manyullyn_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:vibrant_alloy_seeds>, <mysticalagriculture:vibrant_alloy_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:end_steel_seeds>, <mysticalagriculture:end_steel_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:terrasteel_seeds>, <mysticalagriculture:terrasteel_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:refined_obsidian_seeds>, <mysticalagriculture:refined_obsidian_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:ender_amethyst_seeds>, <mysticalagriculture:ender_amethyst_essence>, ZPM);
GCAddRecipe(<mysticalagriculture:draconium_seeds>, <mysticalagriculture:draconium_essence>, ZPM);
	
function GCAddRecipe(a as IItemStack, b as IItemStack, c as int) as void {
	val garden_chamber as RecipeMap = <recipemap:garden_chamber>;
	garden_chamber.recipeBuilder()
		.duration(200)
		.EUt(c)
		.notConsumable(a)
		.outputs(b * 2)
	.	buildAndRegister();
}
