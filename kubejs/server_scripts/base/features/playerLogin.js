//priority: 0
let extraPlayerItems = [
  Item.of("ptdye:mechanical_device", 8),
  Item.of("ptdye:smart_device", 8),
  Item.of("ptdye:sealed_device", 8),
  Item.of("ptdye:sturdy_device", 8),
  Item.of("ptdye:logic_device", 8),
];
function automatonAttributes(player) {
  player.setAttributeBaseValue("forge:swim_speed", 2.25);
  player.setAttributeBaseValue("forge:reach_distance", 30);
  player.setAttributeBaseValue("forge:attack_range", 30);
  player.setAttributeBaseValue("minecraft:generic.attack_damage", 3);
  Utils.server.runCommandSilent(
    `curios replace crafting_on_a_stick 0 ${player.displayName.getString()} with crafting_on_a_stick:stonecutter`
  );
  Utils.server.runCommandSilent(
    `curios replace charm 0 ${player.displayName.getString()} with botania:monocle`
  );
  Utils.server.runCommandSilent(
    `curios replace head 0 ${player.displayName.getString()} with create:goggles`
  );
  player.tell(
    Text.of("Use ")
      .aqua()
      .append(
        Text.of("V")
          .red()
          .append(Text.of(" to open your built-in Personal Assembler").aqua())
      )
  );
}
function noRain() {
  Utils.server.runCommandSilent("weather clear");
  Utils.server.runCommandSilent("/gamerule doWeatherCycle false");
}
if (feature("automaton upgrades")) {
  PlayerEvents.loggedIn((event) => {
    automatonAttributes(event.player);
  });
  PlayerEvents.respawned((event) => {
    automatonAttributes(event.player);
  });
}
if (feature("starter items")) {
  PlayerEvents.loggedIn((event) => {
    if (feature("Disable rain")) noRain();
    if (feature("Give player starter items")) { //need to split compensation logic out of here
      if (!event.player.getPersistentData().getBoolean("starter")) {
        event.player.give(Item.of("create:wrench", 1));
        event.player.give(Item.of("crafting_on_a_stick:stonecutter", 1));
        event.player.give(
          Item.of(
            "create:clipboard",
            '{Pages:[{Entries:[{Checked:0b,Text:\'{"text":"Pet Betsy"}\'},{Checked:1b,Text:\'{"text":"Engine safety checks"}\'},{Checked:0b,Text:\'{"text":"Landing systems safety checks"}\'},{Checked:1b,Text:\'{"text":"Make sure Pure Daisy is ready for landing (!!)"}\'},{Checked:0b,Text:\'{"text":"Don\\\'t crash"}\'},{Checked:0b,Text:\'{"text":"Ponder life"}\'},{Checked:1b,Text:\'{"text":"Fix wrench built in magnet"}\'},{Checked:0b,Text:\'{"text":"Check automated milking system (critical, can\\\'t automate without milk!)"}\'}]}],PreviouslyOpenedPage:0,Type:1}'
          )
        );
        event.player.getPersistentData().putBoolean("starter", true);

        if (event.server.getPersistentData().getBoolean("existing_world")) {
          extraPlayerItems.forEach((element) => {
            event.player.give(element);
          });
        }
        event.server.getPersistentData().putBoolean("existing_world", true);
      }
    }
  });
}