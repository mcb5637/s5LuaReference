---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CEntity.dll

CEntity = {}

CEntity.Abilities = {}
CEntity.Abilities.ConvertSettler = {}

-- Gibt die maximale Distanz zurück, in der eine Einheit mit CConvertSettlerAbility eine Einheit bekehren kann (0 wenn Behavior nicht vorhanden)
---@param _id number
---@return number distance
function CEntity.Abilities.ConvertSettler.GetConversionMaxRange(_id) end

-- Gibt die maximale Distanz zurück, in der eine Einheit mit CConvertSettlerAbility eine Einheit zu bekehren beginnen kann (0 wenn Behavior nicht vorhanden)
---@param _id number
---@return number distance
function CEntity.Abilities.ConvertSettler.GetConversionStartRange(_id) end

-- Gibt HPToMSFactor der CConvertSettlerAbility einer Einheit zurück (0 wenn Behavior nicht vorhanden)
---@param _id number
---@return number factor
function CEntity.Abilities.ConvertSettler.GetHPToMsFactor(_id) end

-- Fügt einer Entity die angegebene Menge an Base Armor hinzu
---@param _id number
---@param _amount number
function CEntity.AddArmor(_id, _amount) end

-- Fügt einer Entity die angegebene Menge an Base Damage hinzu
---@param _id number
---@param _amount number
function CEntity.AddDamage(_id, _amount) end

-- Verursacht Schaden in einem Bereich
---@param _id number
---@param _x number
---@param _y number
---@param _range number
---@param _damage number
function CEntity.DealDamageInArea(_id, _x, _y, _range, _damage) end

-- internal
function CEntity.Debug_GetAttachedEntitiesEntryPointer() end

-- Disabled erweiterte Hurt Trigger
function CEntity.DisableAllHurtTrigger() end

-- Disabled ein Attachment (CLimitedAttachmentBehavior)
---@param _id number
---@param _attachment number
function CEntity.DisableAttachment(_id, _attachment) end

-- AoE Damage wird wie in Vanilla berechnet (wenn keine andere Modifikaiton aktiviert ist)
function CEntity.DisableDamageClassAoEDamage() end

-- AoE Damage wirkt sich nur auf feindliche Einheiten im Wirkungsbereich aus
function CEntity.DisableFriendlyFire() end

-- Schaltet 'LeaderTakesItAll' aus.
function CEntity.DisableLeaderTakesItAll() end

-- AoE Damage wird wie in Vanilla berechnet (wenn keine andere Modifikaiton aktiviert ist)
function CEntity.DisableLogicAoEDamage() end
function CEntity.EnableAllHurtTrigger() end
function CEntity.EnableAttachment() end

-- AoE Damage wird nach den Armor und Damage class Faktoren berechnet
function CEntity.EnableDamageClassAoEDamage() end

-- AoE Damage wirkt sich auf alle Einheiten im Wirkungsbereich aus
function CEntity.EnableFriendlyFire() end

-- Schaltet 'LeaderTakesItAll' ein. 
-- Der Schaden von Angriffen auf Soldaten wird auf den Leader umgeleitet (und damit werden dessen Armor/Armorclass etc. verwendet; der Leader verteilt den Schaden)
function CEntity.EnableLeaderTakesItAll() end

-- AoE Damage ignoriert alle Armor und Damage class Faktoren (DamageClassAoEDamage hat höhere Priorität, wenn beide aktiviert sind)
function CEntity.EnableLogicAoEDamage() end

CEntity.Events = {}
CEntity.Events.BUY_LEADER = 86069
CEntity.Events.BUY_SERF = 81924
CEntity.Events.BUY_SOLDIER = 86071

-- Gibt die Menge an mit CEntity.AddArmor hinzugefügte Base Armor zurück (nil, wenn diese Einheit nicht modifiziert wurde)
---@param _id number
---@return number|nil amount
function CEntity.GetAddedArmor(_id) end

-- Gibt die Menge an mit CEntity.AddArmor hinzugefügte Base Damage zurück (nil, wenn diese Einheit nicht modifiziert wurde)
---@param _id number
---@return number|nil amount
function CEntity.GetAddedDamage(_id) end

-- Gibt ein table nach dem Schema table[AttchmentType][EntityId] zurück
---@param _id number
---@return table attachedEntities
function CEntity.GetAttachedEntities(_id) end

-- Gibt die Anzahl an Attachment Slots zurück (CLimitedAttachmentBehavior).
---@param _id number
---@param _attachment number
---@return number amount
function CEntity.GetAttachmentSlots(_id, _attachment) end

-- Gibt die aktuelle Ausdauer eines Arbeiters zurück
---@param _id number
---@return number stamina
function CEntity.GetCurrentStamina(_id) end

-- Gibt das Event auf dem Event-Stack an Stelle _index zurück. (lua index, beginnend bei 1)
-- Rückgabetable ist abhängig vom Event:
-- buy serf:    { event = 81924; buildingID = number }
-- buy leader:  { event = 86069; buildingID = number, upgradeCategory = number }
-- buy soldier: { event = 86071; buildingID = number, leaderID = number }
---@param _index number
---@return table event|nil (bei ungültigem Index)
function CEntity.GetEventData(_index) end

-- Gibt die Sichtweite eines Gebäudes zurück (Crasht bei Einheiten)
---@param _id number
---@return number exploration
function CEntity.GetExploration(_id) end

-- Gibt die Erfahrungspunkte eines Hauptmanns zurück
---@param _id number
---@return number experiencePoints
function CEntity.GetLeaderExperience(_id) end

-- Gibt die Rohstoffe des aktuellen handels an einem Marktplatz zurück (alle 0, wenn keine Handel aktiv ist)
---@param _id number
---@return number buyResourceType
---@return number buyResourceAmount
---@return number sellResourceType
---@return number sellResourceAmount
function CEntity.GetMarketInformation(_id) end

-- Gibt die maximale Ausdauer eines Arbeiters zurück
---@param _id number
---@return number stamina
function CEntity.GetMaxStamina(_id) end

-- Gibt die aktuelle Motivation eines Arbeiters zurück
---@param _id number
---@return number motivation
function CEntity.GetMotivation(_id) end

-- Gibt die Anzahl an attached Entities zurück
---@param _id number
---@return number amount
function CEntity.GetNumberOfAttachedEntities(_id) end

-- Gibt die Anzahl an Events auf dem Event-Stack zurück
---@return number amount
function CEntity.GetNumberOfEvents() end

-- Wie CEntity.GetAttachedEntities nur umgekehrt
---@param _id number
---@return table attachedEntities
function CEntity.GetReversedAttachedEntities(_id) end

-- Gibt die technology id der aktuell in diesem Gebäude geforschten technologie zurück (o wenn keine Forschung aktiv)
---@param _id number
---@return number technologyId
function CEntity.GetTechnologyInResearch(_id) end

-- intern
function CEntity.HasAttachment() end

CEntity.HurtTrigger = {}
CEntity.HurtTrigger.DamageSources = {}
CEntity.HurtTrigger.DamageSources.ARROW = 3
CEntity.HurtTrigger.DamageSources.BOMB = 1
CEntity.HurtTrigger.DamageSources.CANNONBALL = 4
CEntity.HurtTrigger.DamageSources.KEG = 2
CEntity.HurtTrigger.DamageSources.MELEE = 0

-- Gibt die Höhe des aktuellen Schaden zurück (nur innerhalb eines Hurt Triggers)
---@return number schaden
function CEntity.HurtTrigger.GetDamage() end

-- Gibt die Ursache des aktuellen Schadens zurück (nur innerhalb eines Hurt Triggers)
---@return number CEntity.HurtTrigger.DamageSources[SOURCE]
function CEntity.HurtTrigger.GetDamageSourceType() end

-- Gibt die ProjektilID zurück, falls ein Projektil den Schaden verursacht (nur innerhalb eines Hurt Triggers)
---@return number|nil
function CEntity.HurtTrigger.GetProjectileID() end

-- Setzt die Höhe des aktuellen Schadens (nur innerhalb eines Hurt Triggers)
---@param _damage number
function CEntity.HurtTrigger.SetDamage(_damage) end

-- Gibt zurück ob ein Attachment (CLimitedAttachmentBehavior) aktiv ist
---@param _id number
---@param _attachment number
---@return boolean
function CEntity.IsAttachmentEnabled(_id, _attachment) end

-- Gibt zurück, ob die Einheit unverwundbar ist
---@param _id number
---@return boolean
function CEntity.IsInvulnerable(_id) end

-- internal
function CEntity.query() end

-- Lädt die entities.xml neu
-- TODO: ich weiß nicht ob das so stimmt... es lädt die Entity-Typen neu, also schon vorhandene (eine neue entities.xml würde nicht berücksichtigt werden)
function CEntity.ReloadEntities() end

-- Setzt die mit CEntity.AddArmor hinzugefügte Base Armor zurück
---@param _id number
function CEntity.ResetAddedArmor(_id) end

-- Setzt die mit CEntity.AddArmor hinzugefügte Base Armor zurück
---@param _id number
function CEntity.ResetAddedDamage(_id) end

-- Setzt den Animation Speed (?)
---@param _id number
---@param _speed number
function CEntity.SetAnimationSpeed(_id, _speed) end

-- Setzt den Rüstungswert (Technologien etc. werden ignoriert, Wert ist nur noch durch Buffs/Debuffs beinflussbar)
---@param _id number
---@param _armor number
function CEntity.SetArmor(_id, _armor) end
-- Setzt die Anzahl an Slots für ein Attachment (CLimitedAttachmentBehavior).
---@param _id number
---@param _attachment number
---@param _amount number
function CEntity.SetAttachmentSlots(_id, _attachment, _amount) end

-- Setzt die Angriffsreichweite einer Einheit (Technologien etc. werden ignoriert, Wert ist nur noch durch Buffs/Debuffs beinflussbar)
---@param _id number
---@param _range number
function CEntity.SetAttackRange(_id, _range) end

-- Setzt den Schaden einer Einheit (Technologien etc. werden ignoriert, Wert ist nur noch durch Buffs/Debuffs beinflussbar)
---@param _id number
---@param _damage number
function CEntity.SetDamage(_id, _damage) end

-- Setzt die Sichtweite einer Einheit (Technologien etc. werden ignoriert, Wert ist nur noch durch Buffs/Debuffs beinflussbar)
---@param _id number
---@param _range number
function CEntity.SetExploration(_id, _range) end

-- Setzt die Menge an HP, die bei der Selbstheilung regeneriert werden (funktioniert nur bei Einheiten mit CLeaderBehavior)
---@param _id number
---@param _healingPoints number
function CEntity.SetHealingPoints(_id, _healingPoints) end

-- Setzt den Selbstheilungsintervall in Sekunden einer Einheit (funktioniert nur bei Einheiten mit CLeaderBehavior)
---@param _id number
---@param _healingSeconds number
function CEntity.SetHealingSeconds(_id, _healingSeconds) end

-- Setzt die Erfahrungspunkte eines Hauptmanns
---@param _id number
---@param _experiencePoints number
function CEntity.SetLeaderExperience(_id, _experiencePoints) end

-- Setzt die Rohstoffe des aktuellen Handels
---@param _id number
---@param _active boolean
---@param _buyResourceType number
---@param _buyResourceAmount number
---@param _sellResourceType number
---@param _sellResourceAmount number
function CEntity.SetMarketInformation(_id, _active, _buyResourceType, _buyResourceAmount, _sellResourceType, _sellResourceAmount) end

-- Setzt die Maximale Gesundheit einer Einheit
---@param _id number
---@param _maxHealth number
function CEntity.SetMaxHealth(_id, _maxHealth) end

-- Setzt die Motivation eines Arbeiters
---@param _id number
---@param _motivation number
function CEntity.SetMotivation(_id, _motivation) end

-- Setzt das Lauftempo einer Einheit
---@param _id number
---@param _speed number
function CEntity.SetMovementSpeed(_id, _speed) end

-- Setzt die aktuell in diesem Gebäude erforschte Technologie
---@param _id number
---@param _technologyId number
function CEntity.SetTechnologyInResearch(_id, _technologyId) end

-- Deprecated, siehe CEntity.HurtTrigger.GetDamage
function CEntity.TriggerGetDamage() end

-- Deprecated, siehe CEntity.HurtTrigger.SetDamage
function CEntity.TriggerSetDamage(_damage) end