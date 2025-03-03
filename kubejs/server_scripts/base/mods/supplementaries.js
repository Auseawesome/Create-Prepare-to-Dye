if (feature("Remove flax")) {
  removeItem("supplementaries:flax_seeds");
  removeItem("supplementaries:flax");
}

if (feature("Remove sak from supplementaries")) {
  removeItem("supplementaries:sack");
}

if (feature("Doormat recipe")) {
  removeRecipe({ id: "supplementaries:doormat_2" });
  addShaped("supplementaries:doormat", ["www"], { w: "#minecraft:wool" });
}

if (feature("Remove rope")) {
  removeItem("supplementaries:rope");
}

if (feature("Remove bamboo spikes")) {
  removeItem("supplementaries:bamboo_spikes");
  removeItem("supplementaries:bamboo_spikes_tipped");
}

if (feature("No gaps in wrench recipe")) {
  removeRecipe({id:"supplementaries:wrench"})
  addShaped("supplementaries:wrench", ["ini"," i "," i "], { i: "minecraft:copper_ingot", n: "create:copper_nugget"})
}