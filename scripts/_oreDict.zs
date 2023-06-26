val ingotOsmium = <ore:ingotOsmium>; 
val ingotMekOsmium = <ore:ingotMekOsmium>;

val blockOsmium = <ore:blockOsmium>; 
val blockMekOsmium = <ore:blockMekOsmium>;

val nuggetOsmium = <ore:nuggetOsmium>; 
val nuggetMekOsmium = <ore:nuggetMekOsmium>;

val dustOsmium = <ore:dustOsmium>;
val dustMekOsmium = <ore:dustMekOsmium>;

val oreOsmium = <ore:oreOsmium>;
val oreMekOsmium = <ore:oreMekOsmium>;

val oreMeteoricIron = <ore:oreMeteoricIron>;
val ingotMeteoricIron = <ore:ingotMeteoricIron>;

val ingotGCMeteoricIron = <ore:ingotGCMeteoricIron>;

ingotOsmium.remove(<mekanism:ingot:1>);
dustOsmium.remove(<mekanism:dust:2>);
oreOsmium.remove(<mekanism:oreblock:0>);
nuggetOsmium.remove(<mekanism:nugget:1>);
blockOsmium.remove(<mekanism:basicblock:0>);

ingotMeteoricIron.remove(<galacticraftcore:item_basic_moon:0>);

//ingotMekOsmium.add(<mekanism:ingot:1>);
//dustMekOsmium.add(<mekanism:dust:2>);
oreMekOsmium.add(<mekanism:oreblock:0>);
//nuggetMekOsmium.add(<mekanism:nugget:1>);
//blockMekOsmium.add(<mekanism:basicblock:0>);

oreMeteoricIron.add(<galacticraftcore:meteoric_iron_raw>);