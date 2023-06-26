#loader gregtech

import mods.gregtech.material.MaterialBuilder;
import mods.gregtech.material.MaterialRegistry;
import mods.gregtech.material.IMaterialPredicate;
import mods.gregtech.material.Material;
import mods.gregtech.material.Elements;
import mods.gregtech.ore.OrePrefix;

var element_mekosmium = Elements.add(76, 144, -1, null, "MekOsmium", "MOs", false);

var conductive_iron = MaterialBuilder(32000, "conductive_iron")
    .ingot()
    .color(0xf7b29b).iconSet("metallic")
    .cableProperties(32, 1, 0, true)
    .build();

var energetic_alloy = MaterialBuilder(32001, "energetic_alloy")
    .ingot()
    .color(0xffb545).iconSet("shiny")
    .cableProperties(128, 1, 0, true)
    .build();

var vibrant_alloy = MaterialBuilder(32002, "vibrant_alloy")
    .ingot()
    .color(0xa4ff70).iconSet("shiny")
    .cableProperties(512, 1, 0, true)
    .build();

var end_steel = MaterialBuilder(32003, "end_steel")
    .ingot()
    .color(0xd6d980).iconSet("metallic")
    .cableProperties(2048,1,0,true)
    .build();
	
var lumium = MaterialBuilder(32004, "lumium")
    .ingot()
    .color(0xf6ff99).iconSet("bright")
    .cableProperties(8192, 1, 0, true)
    .build();
	
var signalum = MaterialBuilder(32005, "signalum")
    .ingot().fluid()
    .color(0xff7f0f).iconSet("shiny")
    .cableProperties(32768, 1, 0, true)
    .build();
	
var enderium = MaterialBuilder(32006, "enderium")
    .ingot()
    .color(0x1f6b62).iconSet("shiny")
    .cableProperties(131072, 1, 0, true)
    .build();
	
var draconium = MaterialBuilder(32007, "draconium")
    .ingot()
    .color(0xbe49ed).iconSet("metallic")
    .cableProperties(524288, 1, 0, true)
    .build();
	
var prosperityExtract = MaterialBuilder(32008, "prosperity_extract")
	.fluid()
	.color(0x9ebdbd).iconSet("shiny")
	.build();
	
var prosperity = MaterialBuilder(32009, "prosperity")
	.fluid()
	.color(0x9ebdbd).iconSet("metallic")
	.build();
	
var inferium = MaterialBuilder(32010, "essence_inferium")
	.fluid()
	.color(0x7eb400).iconSet("shiny")
	.build();
	
var prudentium = MaterialBuilder(32011, "essence_prudentium")
	.fluid()
	.color(0x00be59).iconSet("shiny")
	.build();
	
var intermedium = MaterialBuilder(32012, "essence_intermedium")
	.fluid()
	.color(0xdc5c00).iconSet("shiny")
	.build();
	
var superium = MaterialBuilder(32013, "essence_superium")
	.fluid()
	.color(0x0080ff).iconSet("shiny")
	.build();

var supremium = MaterialBuilder(32014, "essence_supremium")
	.fluid()
	.color(0xFF0000).iconSet("shiny")
	.build();
	
var insanium = MaterialBuilder(32015, "essence_insanium")
	.fluid()
	.color(0x7800be).iconSet("shiny")
	.build();
	
var molteninsanium = MaterialBuilder(32016, "insanium")
	.fluid()
	.color(0x7800be).iconSet("metallic")
	.build();
	
var mek_osmium = MaterialBuilder(32017, "mek_osmium")
    .ingot().ore()
	.element("MekOsmium")
    .color(0x32327F).iconSet("metallic")
    .build();
	
var heavy_duty_t1 = MaterialBuilder(32018, "heavy_duty_alloy_i")
	.ingot().fluid()
	.color(0x656464).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t2 = MaterialBuilder(32019, "heavy_duty_alloy_ii")
	.ingot().fluid()
	.color(0x9E9E9E).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t3 = MaterialBuilder(32020, "heavy_duty_alloy_iii")
	.ingot().fluid()
	.color(0x444444).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t4 = MaterialBuilder(32021, "heavy_duty_alloy_iv")
	.ingot().fluid()
	.color(0x844200).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t5 = MaterialBuilder(32022, "heavy_duty_alloy_v")
	.ingot().fluid()
	.color(0xABA5FF).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t6 = MaterialBuilder(32023, "heavy_duty_alloy_vi")
	.ingot().fluid()
	.color(0x008712).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t7 = MaterialBuilder(32024, "heavy_duty_alloy_vii")
	.ingot().fluid()
	.color(0xE17DFF).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t8 = MaterialBuilder(32025, "heavy_duty_alloy_viii")
	.ingot().fluid()
	.color(0xFFBA7D).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t9 = MaterialBuilder(32026, "heavy_duty_alloy_ix")
	.ingot().fluid()
	.color(0x7DCCFF).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var heavy_duty_t10 = MaterialBuilder(32027, "heavy_duty_alloy_x")
	.ingot().fluid()
	.color(0xD500FF).iconSet("metallic")
	.flags("generate_plate")
	.build();
	
var meteoric_iron = MaterialBuilder(32028, "meteoric_iron")
	.ingot().fluid().ore()
	.color(0x958958).iconSet("dull")
	.flags(["generate_plate", "generate_rod", "generate_gear"])
	.build();

<material:neptunium>.addFluid();
<material:curium>.addFluid();
<material:berkelium>.addFluid();
<material:californium>.addFluid();
var carbon = MaterialRegistry.get("carbon");
carbon.addIngot();
carbon.addFluid();
carbon.addFlags("generate_plate", "generate_rod", "generate_gear");