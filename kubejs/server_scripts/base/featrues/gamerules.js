ServerEvents.loaded(e => {
    if (e.server.persistentData.gameRulesInit) return
    e.server.persistentData.gameRulesInit = true

    e.server.gameRules.set("disableElytraMovementCheck", true)
    e.server.gameRules.set("drowningDamage", false)
    e.server.gameRules.set("fallDamage", false)
    e.server.gameRules.set("disableRaids", true)
    e.server.gameRules.set("doInsomnia", false)
    e.server.gameRules.set("reducedDebugInfo", false)
})