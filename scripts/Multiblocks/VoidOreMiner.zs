import mods.gregtech.multiblock.Builder;
import mods.gregtech.multiblock.FactoryBlockPattern;
import mods.gregtech.multiblock.RelativeDirection;
import mods.gregtech.multiblock.functions.IPatternBuilderFunction;
import mods.gregtech.IControllerTile;
import mods.gregtech.multiblock.CTPredicate;
import mods.gregtech.multiblock.IBlockPattern;
import mods.gregtech.recipe.FactoryRecipeMap;
import mods.gregtech.recipe.RecipeMap;

val vom as RecipeMap = <recipemap:void_ore_miner>;

// Multiblock crap
val void_ore_miner = Builder.start("mbt:void_ore_miner")
	.withPattern(function(controller as IControllerTile) as IBlockPattern {
			return FactoryBlockPattern.start()
				.aisle("CCCCC", "AAFAA", "AAFAA", "AAFAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA")
				.aisle("CCCCC", "AFXFA", "AFXFA", "AFXFA", "AAFAA", "AAFAA", "AAFAA", "AAAAA", "AAAAA", "AAAAA")
				.aisle("CCCCC", "FXXXF", "FXXXF", "FXXXF", "AFXFA", "AFXFA", "AFXFA", "AAFAA", "AAFAA", "AAFAA")
				.aisle("CCCCC", "AFXFA", "AFXFA", "AFXFA", "AAFAA", "AAFAA", "AAFAA", "AAAAA", "AAAAA", "AAAAA")
				.aisle("CCRCC", "AAFAA", "AAFAA", "AAFAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA", "AAAAA")
				.where('R', controller.self())
				.where("C", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>)
							| CTPredicate.abilities(<mte_ability:IMPORT_ITEMS>).setMaxGlobalLimited(1).setPreviewCount(1)
							| CTPredicate.abilities(<mte_ability:EXPORT_ITEMS>).setMinGlobalLimited(1).setPreviewCount(1)
							| CTPredicate.abilities(<mte_ability:INPUT_ENERGY>).setMinGlobalLimited(1).setPreviewCount(1) 
							| CTPredicate.abilities(<mte_ability:MAINTENANCE_HATCH>).setMinGlobalLimited(1).setMaxGlobalLimited(1).setPreviewCount(1)
							)
				.where("X", CTPredicate.states(<metastate:gcym:large_multiblock_casing:11>))
				.where("F", CTPredicate.states(<metastate:gregtech:meta_block_frame_7:15>))
				.where("A", CTPredicate.getAir())
				.build();
			} as IPatternBuilderFunction)
		.withRecipeMap(vom)
		.withBaseTexture(<metastate:gcym:large_multiblock_casing:11>)
		.buildAndRegister();
		
void_ore_miner.hasMaintenanceMechanics = true;
void_ore_miner.hasMufflerMechanics = false;

// Recipe for the Multiblock controller
recipes.addShaped("vom", <gregtech:machine:32002>, [[<gcym:large_multiblock_casing:11>, <ore:circuitUhv>, <gcym:large_multiblock_casing:11>], [<ore:circuitUhv>, <gregtech:machine:994>, <ore:circuitUhv>], [<gcym:large_multiblock_casing:11>, <ore:circuitUhv>, <gcym:large_multiblock_casing:11>]]);

// Recipes for the Multiblock itself
vom.recipeBuilder()
	.duration(1200)
	.EUt(2097152)
	.circuit(0)
	.property("dimension", 0)
	.outputs(		  <gregtech:ore_iron_0> * 64,
					  <gregtech:ore_copper_0> * 64,
					  <gregtech:ore_tin_0> * 64,
					  <gregtech:ore_lead_0> * 64,
					  <gregtech:ore_silver_0> * 64,
					  <gregtech:ore_gold_0> * 64,
					  <gregtech:ore_diamond_0> * 64,
					  <gregtech:ore_redstone_0> * 64)
	.buildAndRegister();