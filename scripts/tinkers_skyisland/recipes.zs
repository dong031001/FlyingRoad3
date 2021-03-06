import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.oredict.IOreDict;
import crafttweaker.data.IData;

<contenttweaker:wheat_melt:*>.addTooltip(game.localize("crafttweaker.wheatmelt.description"));
<contenttweaker:blaze_melt:*>.addTooltip(game.localize("crafttweaker.blazemelt.description"));
val allEntries = oreDict.entries;
//var oreName as string[] = ["Iron","Gold","Cobalt","Ardite"];
for enchEntries in allEntries {
	var oreDictName as string = enchEntries.name;
	if (oreDictName.startsWith("piece")){
		var key as string = oreDictName.substring(5, oreDictName.length);
		var piece as IItemStack = enchEntries.firstItem;
		var ore as IItemStack = oreDict.get("ore" + key).firstItem;
		if (!isNull(ore) && !isNull(piece)) {recipes.addShaped("pieceToOre_" + key,ore,[[piece,piece],[piece,piece]]);}
	}
}

<ore:itemSoulMix>.add(<contenttweaker:soul_mixture>);


recipes.addShaped("plant_matter",<contenttweaker:plant_matter>,
[[null,<ore:treeLeaves>,null],
[<ore:treeLeaves>,<minecraft:apple>,<ore:treeLeaves>],
[null,<ore:treeLeaves>,null]]);

recipes.addShapeless("wheat_melt",<contenttweaker:wheat_melt>,[<minecraft:wheat>,<minecraft:wheat>,<ore:stickWood>,<minecraft:flint>,<ore:gravel>]);

recipes.addShaped("aquamarine",<contenttweaker:aquamarine>,
[[<ore:dustPrismarine>,<ore:gemPrismarine>,<minecraft:clay_ball>],
[<ore:gemPrismarine>,<ore:gemQuartz>,<ore:gemPrismarine>],
[<minecraft:clay_ball>,<ore:gemPrismarine>,<ore:dustPrismarine>]]);

recipes.addShaped("smashment",<contenttweaker:smashment>,
[[null,<ore:gunpowder>,null],
[<ore:gunpowder>,<tconstruct:large_plate>.withTag({Material: "stone"}),<ore:gunpowder>],
[null,<ore:gunpowder>,null]]);

recipes.addShaped("gunpowder_bone",<contenttweaker:gunpower_in_bone>,
[[null,<ore:gunpowder>,null],
[<ore:gunpowder>,<ore:bone>,<ore:gunpowder>],
[null,<ore:gunpowder>,null]]);

recipes.addShapeless("blaze_melt",<contenttweaker:blaze_melt>,[<minecraft:blaze_rod>,<minecraft:blaze_rod>,<minecraft:iron_ingot>,<minecraft:flint>,<ore:netherrack>]);

val pan as IItemStack = <tconstruct:pan_head>.withTag({Material: "plant_matter"});
recipes.addShaped("orement",<contenttweaker:orement>,
[[pan,<minecraft:clay>,pan],
[<minecraft:clay>,<minecraft:clay>,<minecraft:clay>],
[pan,<minecraft:clay>,pan]]);

recipes.addShapeless("soul_mixture",<contenttweaker:soul_mixture> * 2,[<minecraft:rotten_flesh>,<minecraft:rotten_flesh>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:dye:15>,<minecraft:gunpowder>]);

mods.tconstruct.Casting.addTableRecipe(<contenttweaker:aquamarinec>,<contenttweaker:aquamarine>,<liquid:cobalt>,144,true,1975);
mods.tconstruct.Casting.addTableRecipe(<minecraft:slime_ball>,<minecraft:magma_cream>,<liquid:water>,2500,true,100);
mods.mekanism.GasConversion.register(<contenttweaker:soul_mixture>, <gas:soul> * 200);
mods.mekanism.chemical.injection.addRecipe(<minecraft:sand>, <gas:soul>, <minecraft:soul_sand>);
mods.tconstruct.Melting.addRecipe(<liquid:soulsand> * 80,<minecraft:soul_sand>, 140);
mods.tconstruct.Alloy.addRecipe(<liquid:nether_essential> * 120,[<liquid:iron> * 32, <liquid:soulsand> * 40, <liquid:blood> * 80]);
mods.tconstruct.Casting.addTableRecipe(<minecraft:blaze_rod>,<tconstruct:cast>.withTag({PartType: "tconstruct:tough_tool_rod"}),<liquid:nether_essential>, 960, false, 200);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:netherrack>,<ore:cobblestone>,<liquid:nether_essential>, 60, true, 20);
mods.tconstruct.Casting.addTableRecipe(<minecraft:ghast_tear>,<ore:enderpearl>,<liquid:nether_essential>, 6000, true, 1000);
mods.tconstruct.Casting.addTableRecipe(<minecraft:nether_wart>,<minecraft:pumpkin_seeds>,<liquid:nether_essential>, 3600, true, 860);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:clay_sapling>,<ore:treeSapling>,<liquid:clay>, 1440, true, 2880);
mods.tconstruct.Drying.addRecipe(<tconstruct:slime_sapling>,<contenttweaker:clay_sapling>, 12000);
mods.tconstruct.Casting.addBasinRecipe(<tconstruct:slime_dirt>,<minecraft:dirt>,<liquid:water>, 8000, true, 800);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:slime_sapling:1>,<tconstruct:slime_sapling>,<liquid:gold>, 1440, true, 1200);
mods.tconstruct.Casting.addTableRecipe(<tconstruct:slime_sapling:2>,<tconstruct:slime_sapling>,<liquid:nether_essential>, 6000, true, 1200);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:quartz_shard>,<tconstruct:cast>.withTag({PartType: "tconstruct:shard"}),<liquid:glass>, 2000, false, 60);
mods.tconstruct.Melting.addRecipe(<liquid:obsidiangold> * 144,<contenttweaker:gildediron>,500);
mods.tconstruct.Alloy.addRecipe(<liquid:obsidiangold> * 1,[<liquid:gold> * 1, <liquid:obsidian> * 2]);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:gildediron>,<tconstruct:cast_custom>,<liquid:obsidiangold>, 144, false, 40);
mods.tconstruct.Casting.addBasinRecipe(<appliedenergistics2:sky_stone_block>,<appliedenergistics2:material:45>,<liquid:lava>, 2000, true, 80);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:end_stone>,<ore:cobblestone>,<liquid:ender>, 125, true, 40);
mods.tconstruct.Casting.addBasinRecipe(<minecraft:soul_sand>,null,<liquid:soulsand>, 80, false, 20);
mods.tconstruct.Casting.addTableRecipe(<contenttweaker:nether_ingot>,<tconstruct:cast_custom>,<liquid:nether_essential>, 60, false, 40);
mods.tconstruct.Melting.addRecipe(<liquid:nether_essential> * 60,<contenttweaker:nether_ingot>,480);

recipes.addShapeless("black_quartz",<actuallyadditions:item_misc:5>,[<minecraft:quartz>,<ore:dustCoal>]);
recipes.addShapeless("black_quartz1",<actuallyadditions:item_misc:5>,[<minecraft:quartz>,<ore:dustCharcoal>]);

<entity:minecraft:skeleton>.addPlayerOnlyDrop(<minecraft:skull:1>.weight(0.015));
<entity:minecraft:zombie>.removeDrop(<minecraft:iron_ingot>);
<entity:minecraft:witch>.removeDrop(<minecraft:redstone>);
<entity:minecraft:witch>.removeDrop(<minecraft:glowstone_dust>);

val alltictools as IItemStack[] = [
<tconstruct:pickaxe>,
<tconstruct:shovel>,
<tconstruct:hatchet>,
<tconstruct:mattock>,
<tconstruct:kama>,
<tconstruct:hammer>,
<tconstruct:excavator>,
<tconstruct:lumberaxe>,
<tconstruct:scythe>,
<tconstruct:broadsword>,
<tconstruct:longsword>,
<tconstruct:rapier>,
<tconstruct:frypan>,
<tconstruct:battlesign>,
<tconstruct:cleaver>,
<plustic:laser_gun>,
<plustic:katana>
];

for enchtictool in alltictools {
	recipes.addHiddenShapeless(enchtictool.definition.name ~ "_infinity_three", enchtictool.withTag({Unbreakable : 1, display: {Lore: ["§d无限 III"]}}), 
	[<mekanism:basicblock:2>,<mekanism:basicblock:2>,<mekanism:basicblock:2>,
	<minecraft:nether_star>,enchtictool.marked("t"),<minecraft:nether_star>,
	<mekanism:basicblock:2>,<mekanism:basicblock:2>,<mekanism:basicblock:2>],
	function (out, input, info) {
		val data as IData = input.t.tag;
		val modifiers as string[] = data.Modifiers.asString().split("\\{");
		for modifier in modifiers {
			if (modifier.contains("infinity") && modifier.contains("current: 18")) {
				return input.t.withTag(data + {Unbreakable : 1, display: {Lore: ["§d无限 III"]}});
			}
		}
		return null;
	},
	null);
}

recipes.addShaped("show_infinity_three",<minecraft:barrier>.withTag({display: {Name: "无法破坏 匠魂工具"}}),
[[<mekanism:basicblock:2>,<mekanism:basicblock:2>,<mekanism:basicblock:2>],
[<minecraft:nether_star>,<minecraft:barrier>.withTag({display: {Name: "任意18/18无限II匠魂工具"}}),<minecraft:nether_star>],
[<mekanism:basicblock:2>,<mekanism:basicblock:2>,<mekanism:basicblock:2>]],
function (out, input, info){
	return null;
}, null);

mods.actuallyadditions.AtomicReconstructor.addRecipe(<minecraft:coal>, <minecraft:coal:1>, 1000);