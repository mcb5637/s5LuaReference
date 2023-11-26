CEntity = {
    DealDamageInArea = function()end,
    Debug_GetAttachedEntitiesEntryPointer = function()end,
    DisableAllHurtTrigger = function()end,
    DisableAttachment = function()end,
    DisableDamageClassAoEDamage = function()end,
    DisableFriendlyFire = function()end,
    DisableLeaderTakesItAll = function()end,
    DisableLogicAoEDamage = function()end,
    EnableAllHurtTrigger = function()end,
    EnableAttachment = function()end,
    EnableDamageClassAoEDamage = function()end,
    EnableFriendlyFire = function()end,
    EnableLeaderTakesItAll = function()end,
    EnableLogicAoEDamage = function()end,
    GetAttachedEntities = function()end,
    GetAttachmentSlots = function()end,
    GetExploration = function()end,
    GetMarketInformation = function()end,
    GetMaxStamina = function()end,
    GetMotivation = function()end,
    GetNumberOfAttachedEntities = function()end,
    GetTechnologyInResearch = function()end,
    HasAttachment = function()end,
    IsAttachmentEnabled = function()end,
    query = function()end,
    ReloadEntities = function()end,
    SetAnimationSpeed = function()end,
    SetArmor = function()end,
    SetAttachmentSlots = function()end,
    SetAttackRange = function()end,
    SetDamage = function()end,
    SetExploration = function()end,
    SetHealingPoints = function()end,
    SetHealingSeconds = function()end,
    SetMaxHealth = function()end,
    SetMotivation = function()end,
    SetMovementSpeed = function()end,
    SetTechnologyInResearch = function()end,
    TriggerGetDamage = function()end,
    TriggerSetDamage = function(dmg)end,

    Events = {
        BUY_SERF = 81924, 
        BUY_LEADER = 86069,
        BUY_SOLDIER = 86071
    },

    --- Das Gegenstück zu CEntity.GetAttachedEntities(_entityID)
    GetReversedAttachedEntities = function(_entityID)end,

    --- Lua-index (startet bei 1) um event daten abzufragen.
    GetEventData = function(_index)end,
    
    --- Gibt die Anzahl an Events "auf dem Stack" zurück.
    GetNumberOfEvents = function()end,
}