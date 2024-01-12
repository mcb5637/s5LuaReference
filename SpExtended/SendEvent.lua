---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CSendEvent.dll

SendEvent = {}

-- Startet einen Handel
---@param _buildingId number
---@param _sellType number
---@param _buyType number
---@param _buyAmount number
function SendEvent.AcceptTrade(_buildingId, _sellType, _buyType, _buyAmount) end

-- Aktiviert den Alarm
---@param _playerId number
function SendEvent.ActivateAlarm(_playerId) end

-- Lässt _entityID1 _entityID2 angreifen
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.Attack(_entityId1, _entityId2) end

-- Gibt _entityID einen Angriffsbefehl
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.AttackMove(_entityId, _x, _y) end

-- Segnet Siedler 
---@param _playerId number
---@param _blessCategory number
function SendEvent.BlessSettlers(_playerId, _blessCategory) end

-- Gibt eine Kanone in Auftrag
---@param _buildingId number
---@param _cannonType number
function SendEvent.BuyCannon(_buildingId, _cannonType) end

-- Kauft einen Helden
---@param _playerId number
---@param _entityType number
---@param _buildingId number
function SendEvent.BuyHero(_playerId, _entityType, _buildingId) end

-- Kauft einen Hauptmann
---@param _buildingId number
---@param _upgradeCategory number
function SendEvent.BuyLeader(_buildingId, _upgradeCategory) end

-- Kauft eine Truppe im Söldnerquartier
---@param _playerId number
---@param _merchantId number
---@param _slotId number
function SendEvent.BuyMerchantOffer(_playerId, _merchantId, _slotId) end

-- Kauft einen Leibeigenen
---@param _playerId number
---@param _buildingId number
function SendEvent.BuySerf(_playerId, _buildingId) end

-- Kauft einen Soldaten
---@param _leaderId number
function SendEvent.BuySoldier(_leaderId) end

-- Bricht einen Ausbau ab
---@param _buildingId number
function SendEvent.CancelBuildingUpgrade(_buildingId) end

-- Bricht eine Forschung ab
---@param _buildingId number
function SendEvent.CancelResearch(_buildingId) end

-- Bricht einen Handel ab
---@param _buildingId number
function SendEvent.CancelTrade(_buildingId) end

-- Ändert die Formation
---@param _entityId number
---@param _formationId number
function SendEvent.ChangeFormation(_entityId, _formationId) end

-- Ruft einen Leibeigenen zu den Waffen
---@param _entityId number
function SendEvent.ChangeToBattleSerf(_entityId) end

-- Ruft eine Miliz zurück zur Arbeit
---@param _entityId number
function SendEvent.ChangeToSerf(_entityId) end

-- Stoppt den Alarm
---@param _playerId number
function SendEvent.DeactivateAlarm(_playerId) end

-- Gibt einen Verteidigungsbefehl
---@param _entityId number
function SendEvent.Defend(_entityId) end

-- Entlässt eine Einheit
---@param _entityId number
function SendEvent.ExpelSettler(_entityId) end

-- Gibt eine Kanone in Auftrag
---@param _buildingId number
---@param _cannonType number
function SendEvent.FoundryConstructCannon(_buildingId, _cannonType) end

-- Lässt _entityID1 _entityID2 beschützen
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.Guard(_entityId1, _entityId2) end

-- Aktiviert die Aura
---@param _entityId number
function SendEvent.HeroActivateAura(_entityId) end

-- Aktiviert die Tarnfähigkeit
---@param _entityId number
function SendEvent.HeroCamouflage(_entityId) end

-- Aktiviert die Spezialattacke
---@param _entityId number
function SendEvent.HeroCircularAttack(_entityId) end

-- Aktiviert die Bekehrung
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroConvertSettler(_entityId1, _entityId2) end

-- Aktiviert die Bekehrung
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroConvertSettlerAbility(_entityId1, _entityId2) end

-- Aktiviert Furcht
---@param _entityId number
function SendEvent.HeroInflictFear(_entityId) end

-- Aktiviert Motivation
---@param _entityId number
function SendEvent.HeroMotivateWorkers(_entityId) end

-- Startet das Platzieren einer Bombe
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.HeroPlaceBomb(_entityId, _x, _y) end

-- Startet das Platzieren einer Bombe
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.HeroPlaceBombAbility(_entityId, _x, _y) end

-- Startet das Platzieren einer Kanone
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.HeroPlaceCannon(_entityId, _x, _y) end

-- Startet das Platzieren einer Kanone
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.HeroPlaceCannonAbility(_entityId, _x, _y) end

-- Schickt den Falken
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.HeroSendHawk(_entityId, _x, _y) end

-- Wirft Shuriken
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroShuriken(_entityId1, _entityId2) end

-- Wirft Shuriken
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroShurikenAbility(_entityId1, _entityId2) end

-- Sniper
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroSniperAbility(_entityId1, _entityId2) end

-- Sniper
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.HeroSnipeSettler(_entityId1, _entityId2) end

-- Ruft Unterstützung
---@param _entityId number
function SendEvent.HeroSummon(_entityId) end

-- Haltet die Position
---@param _entityId number
function SendEvent.HoldPosition(_entityId) end

-- Gibt einen Laufbefehl
---@param _entityId number
---@param _x number
---@param _y number
---@param _rotation number
function SendEvent.Move(_entityId, _x, _y, _rotation) end

-- Bezahlt einen Tribut
---@param _playerId number
---@param _tributeId number
function SendEvent.PayTribute(_playerId, _tributeId) end

-- Benutzt das Fernglas
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.ScoutBinocular(_entityId, _x, _y) end

-- Zeige auf Rohstoffe
---@param _entityId number
function SendEvent.ScoutFindResources(_entityId) end

-- Aktiviert Fackel platzieren
---@param _entityId number
---@param _x number
---@param _y number
function SendEvent.ScoutPlaceTorch(_entityId, _x, _y) end

-- Reißt ein Gebäude ab
---@param _entityId number
function SendEvent.SellBuilding(_entityId) end

-- Lässt einen Leibeigenen ein Gebäude bauen
---@param _serfId number
---@param _buildingId number
function SendEvent.SerfConstructBuilding(_serfId, _buildingId) end

-- Lässt einen Leibeigenen Rohstoffe abbauen.
-- _resourceType ist in den meisten Fällen die Raw Variante
---@param _entityId number
---@param _resouceType number
---@param _x number
---@param _y number
function SendEvent.SerfExtractResource(_entityId, _resouceType, _x, _y) end

-- Lässt einen Leibeigenen ein Gebäude bauen
---@param _serfId number
---@param _buildingId number
function SendEvent.SerfRepairBuilding(_serfId, _buildingId) end

-- Setzt die maximale Anzahl an Arbeitern
---@param _buildingId number
---@param _amount number
function SendEvent.SetCurrentMaxNumWorkersInBuilding(_buildingId, _amount) end

-- Stellt die Steuern ein
---@param _playerId number
---@param _taxLevel number 0-4
function SendEvent.SetTaxes(_playerId, _taxLevel) end

-- Ändert das Wetter
---@param _playerId number
---@param _weatherId number
function SendEvent.SetWeather(_playerId, _weatherId) end

-- Gibt eine Forschung in Auftrag
---@param _buildingId number
---@param _technologyId number
function SendEvent.StartResearch(_buildingId, _technologyId) end

-- Sprecht mit einem NPC
---@param _entityId1 number
---@param _entityId2 number
function SendEvent.TalkToNPC(_entityId1, _entityId2) end

-- Gibt das Diebsgut ab
---@param _thiefId number
---@param _buildingId number
function SendEvent.ThiefCarryStolenStuffToHQ(_thiefId, _buildingId) end

-- Entschärft einen Sprengsatz
---@param _thiefId number
---@param _kegId number
function SendEvent.ThiefDefuse(_thiefId, _kegId) end

-- Platziert einen Sprengsatz
---@param _thiefId number
---@param _buildingId number
function SendEvent.ThiefSabotage(_thiefId, _buildingId) end

-- Gibt das Diebsgut ab
---@param _thiefId number
---@param _buildingId number
function SendEvent.ThiefSecureStolenGoods(_thiefId, _buildingId) end

-- Stielt Rohstoffe
---@param _thiefId number
---@param _buildingId number
function SendEvent.ThiefStealFrom(_thiefId, _buildingId) end

-- Stielt Rohstoffe
---@param _thiefId number
---@param _buildingId number
function SendEvent.ThiefStealGoods(_thiefId, _buildingId) end

-- Toggelt Überstunden
---@param _buildingId number
function SendEvent.ToggleOvertimeAtBuilding(_buildingId) end

-- Baut ein Gebäude aus
---@param _buildingId number
function SendEvent.UpgradeBuilding(_buildingId) end

-- Wertet einen Militärtyp auf
---@param _playerId number
---@param _upgradeCategory number
function SendEvent.UpgradeTroops(_playerId, _upgradeCategory) end