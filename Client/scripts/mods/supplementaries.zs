import crafttweaker.api.util.text.MCStyle;
import crafttweaker.api.util.text.MCTextComponent;
import crafttweaker.api.text.TextFormatting;
import crafttweaker.api.item.IItemStack;

<item:supplementaries:cog_block>.remove();
var bamboo_spikes_text = "Tipped bamboo spikes will always have 15 poison charges to begin which will get consumed once and entity walks on top of the block, receiving the poison status effect for 6 seconds. You can charge them back with dispensers and can be easily automated since they will only make observers pulse once they get fully depleted";
var hanging_sign_text = "A decorative item that comes in all 8 wood types. You can either write text on them by right-clicking the sign with an empty hand, or you can right-click any item onto the sign to display it.";
var sign_post_text = "Up to two sign posts can be place on any fence block. They will function like a normal sign, and you can shift right-click to reverse its orientation. If you use a compass on them, they point towards wherever the compass directs to, so it works for spawn points and lodestones. ";
val tipsToAdd ={
    <item:supplementaries:planter> :"Planters are both a utility and decoration block that allows you to grow crops on it without need water or being able to be trampled on by entities. Grow crops in the nether.",
    <item:supplementaries:pedestal> :"An item display. Observers can detect when an item is taken from a pedestal. End crystals placed on a pedestals allows it to provide 3 enchant levels to bookshelves",
    <item:supplementaries:notice_board> :"Allows you to insert a book and quill in it and the block will display the contents of the first page of the book, or even a map. You can interact with it using hoppers.If it doesn't display as you would want try adding spaces at the end. Can also store maps and banner patterns",
    <item:supplementaries:safe> :"An upgraded shulker box that is immune to fire.",
    <item:supplementaries:cage> :"Stores a mob inside it when you right or left click a mob with an empty mob cage in your hand. It can only catch small animals. To release the mob right click on the ground. Shift right click to place.",
    <item:supplementaries:jar> :"A normal jar can store 4 buckets or 12 bottles or 6 bowls of any  fluid. Cookies, and fish are also able to be stored inside through a bucket.To eat or drink right click with an empty hand. You can right-click small mobs to capture them inside the jar and shift right-click the jar to place it down in your Minecraft world. To release the mob, you can right-click on the ground with the jar in your main hand. You can also right-click water buckets with captured fish in them on the jars to get a cute fish inside a jar.",
    <item:supplementaries:jar_tinted> :"Using Tinted Jars, you can capture vexes and endermites-to capture them inside the jar and shift right-click the jar to place it down in the world. To release the mob, you can right-click on the ground with the jar in your main hand.",
    <item:supplementaries:firefly_jar> :"Light source. Obtained by clicking a firefly with an empty normal jar. you can't release fireflies from them.",
    <item:supplementaries:soul_jar> :"Light source. Acquired by using a tinted jar on soul sand while wearing soul speed boots to capture a soul. You can't release the soul from them.",
    <item:supplementaries:sack> :"An early game shulker box. You can only carry a maximum of two. Carry 3 or more and you will be slowed by their weight. Sacks will react to gravity. To keep one from falling you'll have to place a supporting block either under it or above it.",
    <item:supplementaries:blackboard> :"You'll be able to draw on it in black and white. It will keep what's drawn on it once broken and you'll be able to duplicate your masterpieces just like you can with banners. Craft them with a water bucket to clear them in bulk. They can also be edited by holding a dye or a sponge to clear it all",
    <item:supplementaries:globe> :"A decoration item, only obtained by buying it from a wandering trader. If you click on it or give it a redstone pulse, it will spin and display your current coordinates. It can also interact with comparators, providing a redstone signal that depends on its current face (1-4) and a full strength one while it's spinning.",
    <item:supplementaries:candelabra> :"Light source. can be turned off with water and splash water bottles and lit up with fire charges, flaming arrows and flint and steel.",
    <item:supplementaries:sconce> :"An upgraded torch and can be lit and unlit just like campfires. Additionally, their solid iron mount prevents them from accidentally being washed away by water. There is also a lever variant of the sconces for secret base entrances. It works in reverse when not lit.",
    <item:supplementaries:sconce_soul> :"An upgraded torch and can be lit and unlit just like campfires. Additionally, their solid iron mount prevents them from accidentally being washed away by water. There is also a lever variant of the sconces for secret base entrances. It works in reverse when not lit.",
    <item:supplementaries:copper_lantern> :"Can be turned off and on with an empty hand and a flint and steel. They can naturally be found in mineshafts",
    <item:supplementaries:brass_lantern> :"Can be turned off and on with an empty hand and a flint and steel.",
    <item:supplementaries:crimson_lantern> :"Can be turned off and on with an empty hand and a flint and steel.",
    <item:supplementaries:candle_holder> :"Attach the candle to a block.",
    <item:supplementaries:rope> :"Can only be attached from the bottom of a block or the side for another rope but only if they are at least 6 blocks from the closest supported rope. You wont take fall damage when you fall though. You can pull up a rope by clicking with another one or pull it down by clicking with an empty hand. If they pull up or down a cauldron they will fill it up. They can connect to bells and offer the same functionality that chains do.",
    <item:supplementaries:bamboo_spikes> :"A useful block to build mob farms. It will damage entities that are standing and will deal more damage if it's pointing upwards and and entity is falling through it. Entities will also be slowed by it. If the block is pointing upwards you can negate its damage by shifting. You can combine it with any lingering poison potion either via crafting or by right clicking with said item and it will convert into a tipped bamboo spikes.",
    <item:supplementaries:goblet> :"Goblets are a decoration item that can hold 1 bottle of liquid. Similar to jars said liquid can be interacted with.",
    <item:supplementaries:hourglass> :"A decoration and redstone component. You can fill it with any kind of sand, dust or powder and it will work. Use a comparator to get a signal that depends on the elapsed time. To reset it either use hoppers or dispensers, or you can rotate it using a turn table on its side. The time it takes to deplete depends on the type of dust.",
    <item:supplementaries:item_shelf> :"Similarl to item frames. Can be placed on chests to label them.",
    <item:supplementaries:doormat> :"A hybrid between a sign and a carpet. Cats love to sit on it from time to time. You can also hide one item under a carpet by shift clicking on its side",
    <item:supplementaries:magma_cream_block> :"Something in between a magma block and a slime block. They are sticky on one side and terracotta like on the other, only stickying to themselves",
    <item:supplementaries:raked_gravel> :"A new path like block that can be obtained by hoeing gravel. Can be curved (a bit like rails) to create interesting patterns",
    <item:supplementaries:pulley_block> :"A single slot inventory that accept a stack of ropes or chains. Once rotated with a turn table it will start deploying or pulling back the block underneath it. You can also activate it manually by shift clicking on a rope that's attached to it or via a crank attached to it",
    <item:supplementaries:flower_box> :"Plant flowers",
    <item:supplementaries:statue> :"A decoration blocks",
    <item:supplementaries:piston_launcher> :"It pushes entities about twice as far as the vanilla piston-slime block setup. Additionally can propel you upwards if you were to fall directly on it when enough force is provided to contract it, provided it's extended of course. Try it out, it's really fun!",
    <item:supplementaries:speaker_block> :"Send a message to all players around either through chat or through a narrator message.",
    <item:supplementaries:turn_table> :"When powered, it will keep rotating the block that it's facing (if it's a directional block) or the entities that are standing on it. For a single rotation, provide the Turn Table with a short pulse.",
    <item:supplementaries:redstone_illuminator> :"A simple light source that stays on by default and decreases its light level depending on the power it receives. It works well with the crank.",
    <item:supplementaries:lock_block> :"It has the same functionality as a netherite door except it gives a redstone signal when unlocked",
    <item:supplementaries:bellows> :"Bellows will keep refreshing fire blocks when they are up to two blocks away from the bellow, unless it rains. The Bellows also push entities and speed up furnaces/campfires that are next to it.",
    <item:supplementaries:clock_block> :"This block reads the hour and minute within your Minecraft world. It interacts with observers and comparators.",
    <item:supplementaries:sconce_lever> :"A lever variant of the sconces for secret base entrances. It works in reverse when not lit.",
    <item:supplementaries:crank> :"The Crank is basically the more powerful version of the lever that lets you choose between 16 different power states as you turn it. Shift right click to reverse the turning direction",
    <item:supplementaries:wind_vane> :"Decoration block that will swing ַdepending on the current weather. The wind vane also outputs a redstone signal, the strength of it depending on the weather. When raining, the strength is 1, while when thundering, the strength is 2. The block will also provide strong power to the block below",
    <item:supplementaries:faucet> :"Right-click the facet to turn it on, it will keep dropping items from the inventory of a storage block up to two blocks behind it. You can use it to pour liquids to and from jars, as well as other fluid tanks. A faucet connected to a liquid source will be able to convert a concrete block below it. Able to pour liquids on pancakes (honey, syrup and chocolate) and tipped spikes (lingering pot)",
    <item:supplementaries:gold_door> :"Act like an iron wooden door when they are powered off and will block any interacion when powered on.",
    <item:supplementaries:gold_trapdoor> :"Act like an iron wooden door when they are powered off and will block any interacion when powered on.",
    <item:supplementaries:netherite_door> :"Will function like the safe block, meaning that they will be able to be assigned a key and will only open if a player has it in its inventory.",
    <item:supplementaries:netherite_trapdoor> :"Will function like the safe block, meaning that they will be able to be assigned a key and will only open if a player has it in its inventory.",
    <item:supplementaries:iron_gate> :"",
    <item:supplementaries:gold_gate> :"",
    <item:supplementaries:bomb> :"Does not break blocks",
    <item:supplementaries:rope_arrow> :"Shoot them and they will try to deploy a rope where they land. You can pick them back up to refill them with up to 16 ropes.",
    <item:supplementaries:key> :"If you click on a safe with a named key the safe will be bound to that key name and will only be able to be opened whan a player has a key with the same name in his inventory. To unbind a key simply shift click with it on its safe.",
    <item:supplementaries:flute> :"Summon all non sitting pets that are around you. Right or left click a pet with a flute to bind the item to said pet. A bound flute will then only summon that one pet, regardless if it's sitting or not (within 64 blocks of the player).",
    <item:supplementaries:pancake> :"A food item that can be placed down and stacked up to 8 times. If you put honey on top of them they will give you a small speed boost effect once you eat them. They can also accept chocolate from Create (works with faucets and dispensers)",
    <item:supplementaries:flax> :"A new rare crop that can be found in pillager outposts, sold by the wandering trader and more rarely in mineshafts and dungeons.",
    <item:supplementaries:flax_seeds> :"A new rare crop that can be found in pillager outposts, sold by the wandering trader and more rarely in mineshafts and dungeons.",
    <item:supplementaries:flag_cyan> :"",
    <item:supplementaries:flag_purple> :"",
    <item:supplementaries:flag_blue> :"",
    <item:supplementaries:flag_brown> :"",
    <item:supplementaries:flag_green> :"",
    <item:supplementaries:flag_red> :"",
    <item:supplementaries:flag_black> :"",
    <item:supplementaries:flag_light_gray> :"",
    <item:supplementaries:flag_gray> :"",
    <item:supplementaries:flag_pink> :"",
    <item:supplementaries:flag_lime> :"",
    <item:supplementaries:flag_yellow> :"",
    <item:supplementaries:flag_light_blue> :"",
    <item:supplementaries:flag_magenta> :"",
    <item:supplementaries:flag_orange> :"",
    <item:supplementaries:flag_white> :"",
    <item:supplementaries:hanging_sign_livingwood> :hanging_sign_text,
    <item:supplementaries:hanging_sign_jungle> :hanging_sign_text,
    <item:supplementaries:hanging_sign_acacia> :hanging_sign_text,
    <item:supplementaries:hanging_sign_birch> :hanging_sign_text,
    <item:supplementaries:hanging_sign_livingwood> :hanging_sign_text,
    <item:supplementaries:hanging_sign_oak> :hanging_sign_text,
    <item:supplementaries:hanging_sign_birch> :hanging_sign_text,
    <item:supplementaries:hanging_sign_warped> :hanging_sign_text,
    <item:supplementaries:hanging_sign_crimson> :hanging_sign_text,
    <item:supplementaries:hanging_sign_shimmerwood> :hanging_sign_text,
    <item:supplementaries:hanging_sign_dreamwood> :hanging_sign_text,
    <item:supplementaries:hanging_sign_jungle> :hanging_sign_text,
    <item:supplementaries:hanging_sign_dark_oak> :hanging_sign_text,
    <item:supplementaries:hanging_sign_spruce> :hanging_sign_text,
    <item:supplementaries:hanging_sign_acacia> :hanging_sign_text,
    <item:supplementaries:blackstone_tile_vertical_slab> :"A decoration blocks",
    <item:supplementaries:blackstone_tile_slab> :"A decoration blocks",
    <item:supplementaries:blackstone_tile> :"A decoration blocks",
    <item:supplementaries:stone_tile_vertical_slab> :"A decoration blocks",
    <item:supplementaries:stone_tile_slab> :"A decoration blocks",
    <item:supplementaries:stone_tile> :"A decoration blocks",
    <item:supplementaries:sign_post_spruce> :sign_post_text,
    <item:supplementaries:sign_post_birch> :sign_post_text,
    <item:supplementaries:sign_post_oak> :sign_post_text,
    <item:supplementaries:sign_post_spruce> :sign_post_text,
    <item:supplementaries:sign_post_dark_oak> :sign_post_text,
    <item:supplementaries:sign_post_crimson> :sign_post_text,
    <item:supplementaries:sign_post_warped> :sign_post_text,
    <item:supplementaries:sign_post_livingwood> :sign_post_text,
    <item:supplementaries:sign_post_shimmerwood> :sign_post_text,
    <item:supplementaries:sign_post_dreamwood> :sign_post_text,
    <item:supplementaries:sign_post_jungle> :sign_post_text,
    <item:supplementaries:sign_post_acacia> :sign_post_text,
    <item:supplementaries:timber_cross_brace> :"A decoration blocks",
    <item:supplementaries:timber_brace> :"A decoration blocks",
    <item:supplementaries:timber_frame> :"A decoration blocks",
    <item:supplementaries:daub_cross_brace> :"A decoration blocks",
    <item:supplementaries:daub_brace> :"A decoration blocks",
    <item:supplementaries:daub_frame> :"A decoration blocks",
    <item:supplementaries:daub> :"A decoration blocks",
    <item:supplementaries:flax_block> :"A decoration blocks",
    <item:supplementaries:fodder> :"A decoration blocks that can be eaten indefinitely by sheeps and also speeds up their wool regrowth",
    <item:supplementaries:checker_vertical_slab> :"A decoration blocks",
    <item:supplementaries:checker_slab> :"A decoration blocks",
    <item:supplementaries:checker_block> :"A decoration blocks",
    <item:supplementaries:blackstone_lamp> :"A decoration blocks and a light source",
    <item:supplementaries:stone_lamp> :"A decoration blocks and a light source",
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:resistance" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:long_resistance" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:strong_resistance" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:harming" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_harming" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:healing" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_healing" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:invisibility" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_invisibility" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:leaping" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_leaping" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_leaping" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:luck" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:night_vision" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:poison" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:poison" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_poison" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_poison" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:danger_sight" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:long_danger_sight" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:regeneration" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_regeneration" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_regeneration" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:slow_falling" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_slow_falling" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:slowness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_slowness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_slowness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:resilience" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:long_resilience" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "quark:strong_resilience" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strength" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_strength" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_strength" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_weakness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:weakness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_water_breathing" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:water_breathing" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_swiftness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_swiftness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:swiftness" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:turtle_master" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:long_turtle_master" as string}) :bamboo_spikes_text,
    <item:supplementaries:bamboo_spikes_tipped>.withTag({Potion: "minecraft:strong_turtle_master" as string}) :bamboo_spikes_text,
    <item:supplementaries:rope_arrow> :"Shoot them and they will try to deploy a rope where they land. You can pick them back up to refill them with up to 16 ropes. Once emptied they turn back into arrows.",
}.addTips();