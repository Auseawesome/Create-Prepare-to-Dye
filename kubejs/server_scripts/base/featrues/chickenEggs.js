// Change chicken egg generation from natural generation to being fed a seed

// Set egg cooldown to max on spawn
EntityEvents.spawned((event) => {
  if (event.getEntity().getType() == "minecraft:chicken") {
    event.getEntity().mergeNbt({ "EggLayTime": 2147483647 })
  }
});

// Spawn an egg when a chicken is fed a seed
ItemEvents.entityInteracted((event) => {
  if (event.getTarget().getType() == "minecraft:chicken") {
    let seeds = ["minecraft:wheat_seeds", "minecraft:melon_seeds", "minecraft:pumpkin_seeds", "minecraft:beetroot_seeds"];
    if (seeds.includes(event.getItem().getId())) {
      let egg = event.level.createEntity("minecraft:item");
      egg.item = "minecraft:egg";
      egg.x = event.getTarget().x;
      egg.y = event.getTarget().y + 0.2;
      egg.z = event.getTarget().z;
      egg.setPickUpDelay(20);
      egg.setMotion(((-0.5 + Math.random()) / 8), 0.2, ((-0.5 + Math.random()) / 8))
      egg.spawn();

      event.server.runCommandSilent(`playsound minecraft:entity.chicken.egg neutral @a ${event.getTarget().x} ${event.getTarget().y} ${event.getTarget().z} 5`);
      event.player.swing();
      event.getItem().count--;
    }
    // Disable breeding
    event.cancel();
  }
});
