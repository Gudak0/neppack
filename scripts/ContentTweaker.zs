#loader contenttweaker

import mods.contenttweaker.VanillaFactory;
import mods.contenttweaker.Item;
import mods.contenttweaker.Block;
import mods.contenttweaker.Color;
import mods.contenttweaker.Fluid;
import mods.contenttweaker.AxisAlignedBB;
import mods.contenttweaker.IItemFoodEaten;
import crafttweaker.potions.IPotion;
import mods.contenttweaker.ResourceLocation;

var block_dust = VanillaFactory.createBlock("block_dust", <blockmaterial:sand>);
block_dust.blockSoundType = <soundtype:cloth>;
block_dust.toolClass = "shovel";
block_dust.toolLevel = 0;
block_dust.blockHardness = 0.4;
block_dust.blockResistance = 0.4;
block_dust.gravity = true;
block_dust.register();