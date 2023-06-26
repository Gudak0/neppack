import mods.gregtech.recipe.RecipeMap;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.liquid.ILiquidStack;

val alloy_smelter = mods.gregtech.recipe.RecipeMap.getByName("alloy_smelter");
val mixer = mods.gregtech.recipe.RecipeMap.getByName("mixer");
val extractor = mods.gregtech.recipe.RecipeMap.getByName("extractor");
val fusion = mods.gregtech.recipe.RecipeMap.getByName("fusion_reactor");  
val chem_reactor as RecipeMap = <recipemap:chemical_reactor>;

val LV as int = 32;
val MV as int = 128;
val HV as int = 512;
val EV as int = 2048;
val IV as int = 8192;
val LuV as int = 32767;
val ZPM as int = 131072;
val UV as int = 524288;

extractor.recipeBuilder()
	.inputs(<ore:shardProsperity>)
	.fluidOutputs(<liquid:prosperity_extract> * 144)
	.EUt(512)
	.duration(200)
	.buildAndRegister();

extractor.recipeBuilder()
	.inputs(<ore:essenceInferium>)
	.fluidOutputs(<liquid:essence_inferium> * 144)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	
extractor.recipeBuilder()
	.inputs(<ore:essencePrudentium>)
	.fluidOutputs(<liquid:essence_prudentium> * 144)
	.EUt(2048)
	.duration(200)
	.buildAndRegister();
	
extractor.recipeBuilder()
	.inputs(<ore:essenceIntermedium>)
	.fluidOutputs(<liquid:essence_intermedium> * 144)
	.EUt(8192)
	.duration(200)
	.buildAndRegister();
	
extractor.recipeBuilder()
	.inputs(<ore:essenceSuperium>)
	.fluidOutputs(<liquid:essence_superium> * 144)
	.EUt(32767)
	.duration(200)
	.buildAndRegister();
	
extractor.recipeBuilder()
	.inputs(<ore:essenceSupremium>)
	.fluidOutputs(<liquid:essence_supremium> * 144)
	.EUt(131072)
	.duration(200)
	.buildAndRegister();
	
extractor.recipeBuilder()
	.inputs(<ore:essenceInsanium>)
	.fluidOutputs(<liquid:essence_insanium> * 144)
	.EUt(524288)
	.duration(200)
	.buildAndRegister();

mixer.recipeBuilder()
	.fluidInputs(<liquid:iron> * 144, <liquid:prosperity_extract> * 576)
	.fluidOutputs(<liquid:prosperity> * 144)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_inferium> * 576)
	.fluidOutputs(<liquid:inferium> * 144)
	.EUt(512)
	.duration(200)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_prudentium> * 576)
	.fluidOutputs(<liquid:prudentium> * 144)
	.EUt(2048)
	.duration(200)
	.buildAndRegister();
	
mixer.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_intermedium> * 576)
	.fluidOutputs(<liquid:intermedium> * 144)
	.EUt(8192)
	.duration(200)
	.buildAndRegister();
	
fusion.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_superium> * 576)
	.fluidOutputs(<liquid:superium> * 144)
	.EUt(32767)
	.duration(200)
	.property("eu_to_start", 40000000)
	.buildAndRegister();
	
fusion.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_supremium> * 576)
	.fluidOutputs(<liquid:supremium> * 144)
	.EUt(131072)
	.duration(200)
	.property("eu_to_start", 240000000)
	.buildAndRegister();
	
fusion.recipeBuilder()
	.fluidInputs(<liquid:prosperity> * 144, <liquid:essence_insanium> * 576)
	.fluidOutputs(<liquid:insanium> * 144)
	.EUt(524288)
	.duration(200)
	.property("eu_to_start", 600000000)
	.buildAndRegister();
	
// Seed recipes (fuck me)

// Tier 1 seeds

// Water Seeds recipe has water buckets on it, so I'll just have to manually define it here
recipes.remove(<mysticalagriculture:water_seeds>);
chem_reactor.recipeBuilder()
	.duration(200)
	.EUt(HV)
	.inputs(<minecraft:wheat_seeds>)
	.fluidInputs(<liquid:inferium> * 576, <liquid:mithril> * 1440,<liquid:water> * 4000)
	.outputs(<mysticalagriculture:water_seeds>)
.	buildAndRegister();

SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagriculture:tier1_inferium_seeds>, HV);
SeedAddRecipeT1(<ore:stone>, <mysticalagriculture:stone_seeds>, HV);
SeedAddRecipeT2(<mysticalagriculture:crafting:6>, <mysticalagriculture:nature_seeds>, HV);
SeedAddRecipeT1(<ore:logWood>, <mysticalagriculture:wood_seeds>, HV);
SeedAddRecipeT1(<ore:blockIce>, <mysticalagriculture:ice_seeds>, HV);
SeedAddRecipeT2(<minecraft:rotten_flesh>, <mysticalagriculture:zombie_seeds>, HV);

// Tier 2 seeds

// Fire Seeds recipe has lava buckets on it, so I'll just have to manually define it here
recipes.remove(<mysticalagriculture:fire_seeds>);
chem_reactor.recipeBuilder()
	.duration(200)
	.EUt(EV)
	.inputs(<minecraft:wheat_seeds>)
	.fluidInputs(<liquid:prudentium> * 576, <liquid:mithril> * 1440, <liquid:lava> * 4000)
	.outputs(<mysticalagriculture:fire_seeds>)
.	buildAndRegister();

SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagriculture:tier2_inferium_seeds>, EV);
SeedAddRecipeT1(<ore:dye>, <mysticalagriculture:dye_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:crafting:8>, <mysticalagriculture:nether_seeds>, EV);
SeedAddRecipeT1(<ore:coal>, <mysticalagriculture:coal_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:chunk:7>, <mysticalagriculture:pig_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:chunk:8>, <mysticalagriculture:chicken_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:chunk:9>, <mysticalagriculture:cow_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:chunk:10>, <mysticalagriculture:sheep_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:chunk:11>, <mysticalagriculture:slime_seeds>, EV);
SeedAddRecipeT1(<ore:itemSilicon>, <mysticalagriculture:silicon_seeds>, EV);
SeedAddRecipeT1(<ore:dustSulfur>, <mysticalagriculture:sulfur_seeds>, EV);
SeedAddRecipeT1(<ore:ingotAluminum>, <mysticalagriculture:aluminum_seeds>, EV);
SeedAddRecipeT1(<ore:ingotCopper>, <mysticalagriculture:copper_seeds>, EV);
SeedAddRecipeT1(<ore:ingotAlubrass>, <mysticalagriculture:aluminum_brass_seeds>, EV);
SeedAddRecipeT1(<ore:dustBedrock>, <mysticalagriculture:grains_of_infinity_seeds>, EV);
SeedAddRecipeT2(<mysticalagriculture:crafting:10>, <mysticalagriculture:mystical_flower_seeds>, EV);
SeedAddRecipeT1(<ore:stoneMarble>, <mysticalagriculture:marble_seeds>, EV);
SeedAddRecipeT1(<ore:stoneLimestone>, <mysticalagriculture:limestone_seeds>, EV);
SeedAddRecipeT1(<ore:stoneBasalt>, <mysticalagriculture:basalt_seeds>, EV);

// Tier 3 seeds
SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagriculture:tier3_inferium_seeds>, IV);
SeedAddRecipeT1(<ore:ingotIron>, <mysticalagriculture:iron_seeds>, IV);
SeedAddRecipeT1(<ore:gemNetherQuartz>, <mysticalagriculture:nether_quartz_seeds>, IV);
SeedAddRecipeT1(<ore:dustGlowstone>, <mysticalagriculture:glowstone_seeds>, IV);
SeedAddRecipeT1(<ore:dustRedstone>, <mysticalagriculture:redstone_seeds>, IV);
SeedAddRecipeT1(<ore:obsidian>, <mysticalagriculture:obsidian_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:12>, <mysticalagriculture:skeleton_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:13>, <mysticalagriculture:creeper_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:14>, <mysticalagriculture:spider_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:15>, <mysticalagriculture:rabbit_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:16>, <mysticalagriculture:guardian_seeds>, IV);
SeedAddRecipeT1(<ore:dustSaltpeter>, <mysticalagriculture:saltpeter_seeds>, IV);
SeedAddRecipeT1(<ore:ingotTin>, <mysticalagriculture:tin_seeds>, IV);
SeedAddRecipeT1(<ore:ingotBronze>, <mysticalagriculture:bronze_seeds>, IV);
SeedAddRecipeT1(<ore:ingotSilver>, <mysticalagriculture:silver_seeds>, IV);
SeedAddRecipeT1(<ore:ingotLead>, <mysticalagriculture:lead_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:21>, <mysticalagriculture:blizz_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:22>, <mysticalagriculture:blitz_seeds>, IV);
SeedAddRecipeT2(<mysticalagriculture:chunk:23>, <mysticalagriculture:basalz_seeds>, IV);
SeedAddRecipeT1(<ore:ingotKnightslime>, <mysticalagriculture:knightslime_seeds>, IV);
SeedAddRecipeT1(<ore:ingotArdite>, <mysticalagriculture:ardite_seeds>, IV);
SeedAddRecipeT1(<ore:ingotElectricalSteel>, <mysticalagriculture:electrical_steel_seeds>, IV);
SeedAddRecipeT1(<ore:ingotRedstoneAlloy>, <mysticalagriculture:redstone_alloy_seeds>, IV);
SeedAddRecipeT1(<ore:ingotConductiveIron>, <mysticalagriculture:conductive_iron_seeds>, IV);
SeedAddRecipeT1(<ore:ingotManasteel>, <mysticalagriculture:manasteel_seeds>, IV);
SeedAddRecipeT1(<ore:ingotSteeleaf>, <mysticalagriculture:steeleaf_seeds>, IV);
SeedAddRecipeT1(<ore:ingotIronwood>, <mysticalagriculture:ironwood_seeds>, IV);
SeedAddRecipeT2(<appliedenergistics2:sky_stone_block>, <mysticalagriculture:sky_stone_seeds>, IV);
SeedAddRecipeT1(<ore:gemCertusQuartz>, <mysticalagriculture:certus_quartz_seeds>, IV);

// Tier 4 seeds
SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagriculture:tier4_inferium_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotGold>, <mysticalagriculture:gold_seeds>, LuV);
SeedAddRecipeT1(<ore:gemLapis>, <mysticalagriculture:lapis_lazuli_seeds>, LuV);
SeedAddRecipeT1(<ore:endstone>, <mysticalagriculture:end_seeds>, LuV);
SeedAddRecipeT2(<mysticalagriculture:chunk:5>, <mysticalagriculture:experience_seeds>, LuV);
SeedAddRecipeT2(<mysticalagriculture:chunk:17>, <mysticalagriculture:blaze_seeds>, LuV);
SeedAddRecipeT2(<mysticalagriculture:chunk:18>, <mysticalagriculture:ghast_seeds>, LuV);
SeedAddRecipeT2(<mysticalagriculture:chunk:19>, <mysticalagriculture:enderman_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotSteel>, <mysticalagriculture:steel_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotNickel>, <mysticalagriculture:nickel_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotConstantan>, <mysticalagriculture:constantan_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotElectrum>, <mysticalagriculture:electrum_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotInvar>, <mysticalagriculture:invar_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotMithril>, <mysticalagriculture:mithril_seeds>, LuV);
SeedAddRecipeT1(<ore:gemRuby>, <mysticalagriculture:ruby_seeds>, LuV);
SeedAddRecipeT1(<ore:gemSapphire>, <mysticalagriculture:sapphire_seeds>, LuV);
SeedAddRecipeT1(<ore:gemPeridot>, <mysticalagriculture:peridot_seeds>, LuV);
SeedAddRecipeT1(<ore:gemAmber>, <mysticalagriculture:amber_seeds>, LuV);
SeedAddRecipeT1(<ore:gemTopaz>, <mysticalagriculture:topaz_seeds>, LuV);
SeedAddRecipeT1(<ore:gemMalachite>, <mysticalagriculture:malachite_seeds>, LuV);
SeedAddRecipeT1(<ore:gemTanzanite>, <mysticalagriculture:tanzanite_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotSignalum>, <mysticalagriculture:signalum_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotLumium>, <mysticalagriculture:lumium_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotElectrumFlux>, <mysticalagriculture:fluxed_electrum_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotCobalt>, <mysticalagriculture:cobalt_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotSoularium>, <mysticalagriculture:soularium_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotDarkSteel>, <mysticalagriculture:dark_steel_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotPulsatingIron>, <mysticalagriculture:pulsating_iron_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotEnergeticAlloy>, <mysticalagriculture:energetic_alloy_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotElvenElementium>, <mysticalagriculture:elementium_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotOsmium>, <mysticalagriculture:osmium_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotRefinedGlowstone>, <mysticalagriculture:glowstone_ingot_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotAlumite>, <mysticalagriculture:alumite_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotKnightmetal>, <mysticalagriculture:knightmetal_seeds>, LuV);
SeedAddRecipeT1(<ore:ingotFiery>, <mysticalagriculture:fiery_ingot_seeds>, LuV);
SeedAddRecipeT1(<ore:gemFluix>, <mysticalagriculture:fluix_seeds>, LuV);

// Tier 5 seeds
SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagriculture:tier5_inferium_seeds>, ZPM);
SeedAddRecipeT1(<ore:gemDiamond>, <mysticalagriculture:diamond_seeds>, ZPM);
SeedAddRecipeT1(<ore:gemEmerald>, <mysticalagriculture:emerald_seeds>, ZPM);
SeedAddRecipeT2(<mysticalagriculture:chunk:20>, <mysticalagriculture:wither_skeleton_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotPlatinum>, <mysticalagriculture:platinum_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotIridium>, <mysticalagriculture:iridium_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotEnderium>, <mysticalagriculture:enderium_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotManyullyn>, <mysticalagriculture:manyullyn_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotVibrantAlloy>, <mysticalagriculture:vibrant_alloy_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotEndSteel>, <mysticalagriculture:end_steel_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotTerrasteel>, <mysticalagriculture:terrasteel_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotRefinedObsidian>, <mysticalagriculture:refined_obsidian_seeds>, ZPM);
SeedAddRecipeT2(<biomesoplenty:gem:0>, <mysticalagriculture:ender_amethyst_seeds>, ZPM);
SeedAddRecipeT1(<ore:ingotDraconium>, <mysticalagriculture:draconium_seeds>, ZPM);

// Tier 6 seeds
SeedAddRecipeT1(<ore:essenceInferium>, <mysticalagradditions:tier6_inferium_seeds>, UV);

// Functions for registering seed recipes for convenience
// If the input has an Ore Dictionary entry, use SeedAddRecipeT1
// If not, use SeedAddRecipeT2

function SeedAddRecipeT1(a as IOreDictEntry, b as IItemStack, c as int) as void {
	val chem_reactor as RecipeMap = <recipemap:chemical_reactor>;
	
	val d = getLiquidInput(c);
	
	recipes.remove(b);
	
	chem_reactor.recipeBuilder()
		.duration(200)
		.EUt(c)
		.inputs(a * 4, <minecraft:wheat_seeds>)
		.fluidInputs(d * 576, <liquid:mithril> * 1440)
		.outputs(b)
	.	buildAndRegister();
}

function SeedAddRecipeT2(a as IItemStack, b as IItemStack, c as int) as void {
	val chem_reactor as RecipeMap = <recipemap:chemical_reactor>;
	
	val d = getLiquidInput(c);
	
	recipes.remove(b);
	
	chem_reactor.recipeBuilder()
		.duration(200)
		.EUt(c)
		.inputs(a * 4, <minecraft:wheat_seeds>)
		.fluidInputs(d * 576, <liquid:mithril> * 1440)
		.outputs(b)
	.	buildAndRegister();
}

function getLiquidInput(a as int) as ILiquidStack
{
	if (a > 128 && a <= 512)
		{
			return <liquid:inferium>;
		}
	else if (a > 512 && a <= 2048)
		{
			return <liquid:prudentium>;
		}
	else if (a > 2048 && a <= 8192)
		{
			return <liquid:intermedium>;
		}
	else if (a > 8192 && a <= 32767)
		{
			return <liquid:superium>;
		}
	else if (a > 32767 && a <= 131072)
		{
			return <liquid:supremium>;
		}
	else if (a > 131072 && a <= 524288)
		{
			return <liquid:insanium>;
		}
	return<liquid:water>;
}
