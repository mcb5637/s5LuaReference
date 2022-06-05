--- Funktionen um das Spiel grundlegend zu manipulieren.
-- C
Logic = {}

--- Mapeditor Funktion; funktionslos
function Logic.ActivateBuildingPlacementChecks() end

--- Aktiviert einen Partikel Effekt an Gebäuden (Bsp: Power Plant; Sägewerk; Büchsenmanufaktur)
--  _id Id des Gebäudes
--  Effect Index (von 0-3)
function Logic.ActivateParticleEffect(_id, _effIndex) end

--- Aktiviert das Sichtbereichsupdate für alle Player. (im SP standardmäßig abgeschaltet)
function Logic.ActivateUpdateOfExplorationForAllPlayers() end

--- Wenn sich _entity1 _entity2 auf _distance nähert, wird der Triggertyp _eventtyp getriggert. SimpleJob
function Logic.AddEntityToEntityDistanceCheck(_entity1, _entity2, _distance, _eventtyp) end

--------------------------------------
-- Fügt ein Angebot bei einem Söldnerquartier hinzu
-- _id Id des Söldnerquartiers
-- _entityType Entitytyp des Söldners
-- _amount Wie viele davon kann man kaufen?
-- _resourceType, _cost Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddMercenaryOffer(_id, _entityType, _amount, _resourceType1, _cost1, ...) end

--- Fügt einen Quest den Aufträgen des Spielers der angegebenen _playerId hinzu.
-- _id: Eine Zahl von 1-9 die den Quest repräsentiert.
-- _type: Der Quest-Typ, welcher das Symbol des Quests im Auftragsmenü verändert.
-- Möglichkeiten: MAINQUEST_OPEN, MAINQUEST_CLOSED, SUBQUEST_OPEN, SUBQUEST_CLOSED
-- _name: Der Name der Quest im Auftragsbuch als string.
-- _description: Die Quest-Beschreibung als string.
-- _info: Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an
function Logic.AddQuest(_playerId, _id, _type, _name, _description, _info) end

--- Wie AddQuest, nur mit Position, zu der gesprungen wird, wenn auf die Questbenachrichtigung geklickt wird.
-- _player: Wessen Quest? Was anderes als 1 macht keinen Sinn.
-- _questId: Einzigartige QuestId für diese Quest.
-- _type: Questtyp: MAINQUEST_OPEN, MAINQUEST_CLOSED, SUBQUEST_OPEN, SUBQUEST_CLOSED
-- _title: Titel der Quest, neben dem Symbol im Questmenü angezeigt.
-- _text: Beschreibung der Quest.
-- _posX, _posY: Die Sprungposition.
-- _info: Questbenachrichtigung anzeigen (0 = aus, 1 = an)
function Logic.AddQuestEx(_player, _questId, _type, _title, _text, _posX, _posY, _info) end

--- Verworfen, Logic funktioniert noch, GUI fehlt.
-- _id: Id des Techtraders
-- _techType: zu kaufende Technologie
-- _amount: Wie viele davon kann man kaufen?
-- _resourceType, _cost: Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddTechOffer(_id, _techType, _amount, _resourceType1, _cost1, ...) end

--- Gibt einem Spieler Rohstoffe.
-- _resourceType: ResourceType.XXX
function Logic.AddToPlayersGlobalResource(_player, _resourceType, _amount) end

--- Fügt einen Tribut hinzu. Es wird nicht geprüft, wann dieser bezahlt wurde! (Siehe SetupTributePaid oder Events.LOGIC_EVENT_TRIBUTE_PAID)
-- _0 muss 0 sein
-- _tributeId: einzigartig für diesen Spieler
-- _resourceType, _cost: Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddTribute(_player, _tributeId, _0, _0, _text, _resourceType1, _cost1, ...) end

--- Ändert das Wetter.
-- Periodische Wettereffekte werden einer nach dem anderen (einfügereihenfolge) in Endlosschleife ausgeführt,
-- Nichtperiodische überschreiben dieses Normale Periodische Wetter für _duration
-- _state: Welches Wetter? (1=normal,2=Regen,3=Schnee)
-- _duration: Wie lange dieses Wetter sein soll (Sekunden)
-- _periodic: Soll es periodisch sein? (1=normal periodic,0=Wetterturm-Effekt)
-- _gfx: GFX-Set (normal: 1-3, wenn mehr GFX-Typen gesetzt sind, können diese auch verwendet werden)
-- _forerun: Der Übergang benötigt einen Vorlauf, dieser wird hier in Sekunden gesetzt
-- _transition: Dauer des Übergangs 
function Logic.AddWeatherElement(_state,_duration,_periodic,_gfxset,_forerun,_transition) end

--- !!! Democopy
-- Kann der Spieler (von der Motivation her) neue Entitys erhalten?
-- return: 0,1 => neue Entities, keine neuen Entities
function Logic.AreVillageCentersLocked(_player) end

--- Lässt eine Kaserne,Schießstand,Reiterei einen Leader des angegebenen Typs ausbilden.
-- Beachtet Ressourcen und Platz im VC. Kann z.B. auch Schützen/Kanonen in der Kaserne ausbilden.
-- Funktioniert nicht mit Kanonengießereien!
-- _upgradeCategory: UpgradeCategories.XXX
function Logic.BarracksBuyLeader(_barrackId, _upgradeCategory) end

--- Kauft ein Angebot im Söldnerzelt.
-- _entityId: Das Söldnerzelt
-- _slot: welches Angebot (0-3 ? 1-4)
function Logic.BuyMerchantOffer(_entityId, _playerId, _slot) end

--- !!! democopy
-- Kann ein Rohstoff gekauft werden?
-- return: 0/1
function Logic.CanBuyResource(_player, _resType) end

--- !!! democopy
-- Kann ein Rohstoff verkauft werden?
-- return: 0/1
function Logic.CanSellResource(_player, _resType) end

--- Beendet den Ausbau eines Gebäudes.
function Logic.CancelBuildingUpgrade(_buildingId) end

--- Übergibt alle Entities von _oldPlayer an _newPlayer.
-- Probleme mit Ballista/Kanonentürmen und Leadern mit Soldiern!
function Logic.ChangeAllEntitiesPlayerID(_oldPlayer, _newPlayer) end

--- Übergibt ein Entity an einen anderen Spieler.
-- Probleme mit Leadern mit Soldiern!
-- Ändert die EntityId!
-- return: neue Id (democopy)
function Logic.ChangeEntityPlayerID(_id, _player) end

--- !!! democopy
-- Übergibt ein Entity an einen anderen Spieler.
-- Probleme mit Leadern mit Soldiern!
-- Ändert die EntityId!
-- return: neue Id
function Logic.ChangeSettlerPlayerID(_id, _player) end

--- !!! Map Editor Funktion; unbrauchbar
-- Prüft Platzierung aller Gebäude
-- Wozu???
-- Rückgabe??? Fehler???
-- return: nil
function Logic.CheckBuildingPlacement() end

--- Prüft, ob die Entfernung von _id1 und _id2 kleiner ist als _distance (Kreisradius)
-- Keine Laufzeitvorteile zu GetDistance.
-- return: 1/0
function Logic.CheckEntitiesDistance(_id1,_id2,_distance) end

--- !!! Map Editor Funktion; unbrauchbar
-- Prüft, ob alle Siedler nicht im blocking stehen.
-- Wozu???
-- Rückgabe???
-- return: nil
function Logic.CheckSettlerPlacement() end

--- Platziert eine Baustelle.
-- Ist constructing und AI aktiv, wird sie gebaut.
function Logic.CreateConstructionSite(_posX, _posY, _rotation, _entityType, _playerId) end

--- Erstellt einen Grafikeffekt.
-- _effectType: GGL_Effects.XXX  (einige führen zu Abstürzen!)
-- return: effectId
function Logic.CreateEffect(_effectType, _posX, _posY, _playerId) end

--- Erstellt ein Entity.
-- Stürzt bei falschen Parametern gerne ab!
-- return: entityId
function Logic.CreateEntity(_entityType, _posX, _posY, _angle, _playerId) end

--- funktionslos
function Logic.DEBUG_OutputRegionArray() end

--- funktionslos
function Logic.DEBUG_OutputRegionIteration(_regX, _regY, _accesCategory) end

--- funktionslos
function Logic.DEBUG_TestNearbyEntityIterator() end

--- Baut ein Gebäude unverzüglich aus (ohne Wartezeit bis 100%)
-- ändert die Id!
function Logic.DEBUG_UpgradeBuilding(_id) end

--- Wertet ein Entity auf. (z.B. PU_LeaderSword1 -> PU_LeaderSword2)
-- TaskList und Bewegung werden übernommen.
-- id ändert sich 
function Logic.DEBUG_UpgradeSettler(_id) end

--- ??? Map Editor Funktion; unbrauchbar
function Logic.DeactivateBuildingPlacementChecks() end

--- Deaktiviert einen Partikel Effekt an Gebäuden (Bsp: Power Plant; Sägewerk; Büchsenmanufaktur)
--  _id Id des Gebäudes
--  Effect Index (von 0-3)
function Logic.DeactivateParticleEffect(_id, _effIndex) end

--- funktionslos
function Logic.DebugDumpSettlersToAttract() end

--- Beendet einen Grafikeffekt sofort.
function Logic.DestroyEffect(_effectId) end

--- Entfernt ein Entity aus dem Spiel. (nicht tötet)
function Logic.DestroyEntity(_entityId) end

--- Entfernt einen Leader und seine Soldiers.
function Logic.DestroyGroupByLeader(_leaderId) end

--- !!! democopy
-- Verhindert den Kauf von Rohstoffen.
function Logic.DisableCanBuyResource(_player, _resType) end

--- !!! democopy
-- Verhindert den Verkauf von Rohstoffen.
function Logic.DisableCanSellResource(_player, _resType) end

--- scheint nicht zu funktionieren.
-- return: 1/0 Handel Erfolgreich
function Logic.DoInstantTransaction(_playerid, _resTypeSell, _resTypeBuy, _amountBuy) end

--- Startet einen normalen Handel.
function Logic.DoTransaction(_buildingID, _sellResourceType, _buyResourceType, _buyResourceAmount) end

--- !!! democopy
-- Erlaubt den Kauf von Rohstoffen.
function Logic.EnableCanBuyResource(_player, _resType) end

--- !!! democopy
-- Erlaubt den Verkauf von Rohstoffen.
function Logic.EnableCanSellResource(_player, _resType) end

--- return: Spieler des Entities.
function Logic.EntityGetPlayer(_id) end

--- return x, y, z Position des Entities.
function Logic.EntityGetPos(_id) end

--- Dreht _id so, dass es _target ansieht.
-- (Funktioniert auch mit Entitynamen?)
function Logic.EntityLookAt(_id, _target) end

--- !!! democopy
-- Ersetzt alle vorkommen im Gebiet von _oldTerrain (0 -> alle) durch _newTerrain.
-- round(pos/100)
function Logic.ExchangeTerrainType(_minX, _minY, _maxX, _maxY, _oldTerrain, _newTerrain) end

--- !!! democopy
--  Ersetzt alle vorkommen im Gebiet von _oldWater (0 -> alle) durch _newWater.
--  round(pos/100)
function Logic.ExchangeWaterType(_minX, _minY, _maxX, _maxY, _oldWater, _newWater) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum ersten Mal ein bestimmter Siedler Typ aus dem Dorfzentrum eines Spielers
--  gekommen ist; wenn noch kein Siedler des Typs existiert, dann wird 0 zurückgegeben.
function Logic.FeedbackGetEntityTypeArrivalGameTimeMS(_player, _entityType) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal eine Feedback Meldung über eine Siedler Beschwerde kam und den betreffenden Siedler Typ
--  _playerID
--  _feedbackState ( was ist der Zustand des Siedlers?  siehe Feedback Table Bsp. Feedback.SettlerStateSad)
--  _feedbackReason (warum gab es die Beschwerde? siehe Feedback Table Bsp. Feedback.SettlerReasonTooMuchWork)
--  return: zeitInMS, entityType
function Logic.FeedbackGetLastGrievanceGameTimeMS(_player, _feedbackState, _feedbackReason) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal eine Feedback Message kam und falls vorhanden die auslösende EntityID 
--  _playerID
--  _feedbackMessage (siehe Feedback Table Bsp. Feedback.MessageAttack)
--  return: zeitInMS, entityID (oder 0 wenn das Ereignis nicht an eine Entity gebunden war)
function Logic.FeedbackGetLastMessageGameTimeMS(_player, _feedbackMsg) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal die Feedback Meldung, dass ein Rohstoff zur Neige geht, kam.
-- _playerID
-- ResourcenTyp (siehe ResourceType table)
-- return: zeitInMS,positionX (des Rohstoffschachtes) , positionY
function Logic.FeedbackGetLastRunningOutOfResourceMessageGameTimeMS(_player, _resourceType) end

--- Füllt _t mit den Kosten für den Bau dieses Gebäudes.
function Logic.FillBuildingCostsTable(_entityType, _t) end

--- Füllt _t mit den Kosten für den Ausbau eines Gebäudes des Typs _entityType.
-- (Für Ausbau PB_Tower1 -> PB_Tower2: PB_Tower1 übergeben)
function Logic.FillBuildingUpgradeCostsTable(_entitytype, _t) end

--- Füllt _t mit den Kosten für den aktuellen Hauptmann der UpgradeCategorie.
function Logic.FillLeaderCostsTable(_playerId, _upgradeCategory, _t) end

--- Füllt _t mit den Kosten für einen Serf.
function Logic.FillSerfCostsTable(_t) end

--- ??? Einheitenupgrades über Technologien...
function Logic.FillSettlerUpgradeCostsTable() end

--- Füllt _t mit den Kosten für den Kauf eines Soldiers dieser Kategorie.
-- (Immer die Kosten für den zum aktuell auszubildenden Leader)
function Logic.FillSoldierCostsTable(_player, _upCat, _t) end

--- Füllt _t mit den Kosten für das Erforschen der angegebenen Technologie.
function Logic.FillTechnologyCostsTable(_tech, _t) end

--- Führt eine Aktualisierung des Sichtbereiches durch. (Nur aktueller Spieler?)
-- (Wird ca. mit der Geschwindigkeit eines SimpleJob automatisch ausgeführt)
function Logic.ForceFullExplorationUpdate() end

--- Zwingt einen Arbeiter zum Arbeiten.
--  Effekt auf Motivation!
function Logic.ForceWorkerToWork(_id) end

--- Gibt die aktuelle Alarm-Aufladezeit zurück.
-- return: 0-100 (0-> aktivierbar)
function Logic.GetAlarmRechargeTimeInPercent(_player) end

--- Sucht Entities des Angegebenen Spielers (maximal ca. 40)
-- return: anzahlGefunden, id1, id2, ...
function Logic.GetAllPlayerEntities(_player, _max) end

--- Gibt alle Quest-Ids des Spielers zurück.
-- return: ???
-- table {id1, id2, ...} oder
-- anzahlGefunden, id1, id2, ...
function Logic.GetAllQuests(_player) end

--- Gibt alle Tribut-Ids des Spielers zurück.
-- return: ???
-- table {id1, id2, ...} oder
-- anzahlGefunden, id1, id2, ...
function Logic.GetAllTributes(_player) end

--- Gibt die mit diesem Gebäude verknüpften "Esser" zurück.
-- return: anzahlGefunden, id1, id2, ...
function Logic.GetAttachedEaterToBuilding(_id) end

--- Gibt die mit diesem Gebäude verknüpften Bewohner zurück.
-- return: anzahlGefunden, id1, id2, ...
function Logic.GetAttachedResidentsToBuilding(_id) end

--- Gibt die mit diesem Gebäude verknüpften Arbeiter zurück.
-- return: anzahlGefunden, id1, id2, ...
function Logic.GetAttachedWorkersToBuilding(_id) end

--- Gibt die maximale Anzahl der Arbeiter für diesen Gebäudetyp zurück.
function Logic.GetAttractionLimitValueByEntityType(_eTyp) end

--- Gibt die durchschnittliche Motivation zurück.
-- return: 1-> 100% Motivation
function Logic.GetAverageMotivation(_player) end

--- Verworfen
function Logic.GetBattleSerfMaxSeconds() end

--- Verworfen
function Logic.GetBattleSerfSecondsLeft() end

--- Gibt die Segnungskosten für diese Segnung zurück.
-- immer gleich, da jede Segnung genau 5000 Glauben (ResourceType.Faith) benötigt
function Logic.GetBlessCostByBlessCategory(_blessCat) end

--- !!! democopy
-- Gibt ein table mit Segnungskosten zurück.
function Logic.GetBlessingCosts() end

--- !!! democopy
-- Gibt die Schadensklasse des Gebäudes zurück.
function Logic.GetBuildingDamageClass(_id) end

--- Gibt die maximale Anzahl an "Essern" für dieses Gebäude zurück.
function Logic.GetBuildingFarmPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an "Essern" für dieses Gebäude zurück.
function Logic.GetBuildingFarmPlaceUsage(_id) end

--- Gibt die maximale Anzahl an Bewohnern für dieses Gebäude zurück.
function Logic.GetBuildingSleepPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an Bewohnern für dieses Gebäude zurück.
function Logic.GetBuildingSleepPlaceUsage(_id) end

--- Gibt den ersten Gebäudetyp der UpgradeCategory zurück.
function Logic.GetBuildingTypeByUpgradeCategory(_upCat, playerId) end

--- Gibt alle Gebäude in der UpgradeCategory zurück.
-- return: number, type1, type2, ...
function Logic.GetBuildingTypesInUpgradeCategory(_upCat) end

--- Gibt die maximale Anzahl an Arbeitern für dieses Gebäude zurück.
function Logic.GetBuildingWorkPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an Arbeitern für dieses Gebäude zurück.
function Logic.GetBuildingWorkPlaceUsage(_id) end

--- !!! democopy
-- Gibt Gebäude zurück, bei denen Spieler, UpgradeCategory und Ort passen.
-- return: id1, id2, ...
function Logic.GetBuildingsByUpgradeCategory(_upCat, _player, _posX, _posY, _range, _amount) end

--- Gibt die maximale Tarnungsdauer für ein Entity an. (nur für Ari interessant, sonst 0)
function Logic.GetCamouflageDuration(_id) end

--- Gibt die noch übrige Tarnungsdauer zurück.
function Logic.GetCamouflageTimeLeft(_id) end

--- Gibt den Kanonenbaufortschritt zurück.
-- return: 0-100 (100 -> fertig/keine Kanone in Arbeit)
function Logic.GetCannonProgress(_id) end

--- Gibt den Deflationswert des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.GetCurrentDeflation(_player, _rTyp) end

--- Gibt den Inflationswert des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.GetCurrentInflation(_player, _rTyp) end

--- Gibt das aktuelle Arbeitermaximum dieses Gebäudes zurück.
-- (Änderung dieses Wertes deaktiviert, aber verfügbar)
function Logic.GetCurrentMaxNumWorkersInBuilding(_id) end

--- Gibt den Preis des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.GetCurrentPrice(_player, _rTyp) end

--- Gibt die aktuelle TaskList der Entity zurück.
function Logic.GetCurrentTaskList(_id) end

--- Gibt die Spielzeit der Map zurück (in Ticks => 1/10 sec)
function Logic.GetCurrentTurn() end

--- Gibt die noch verfügbaren Verteidiger (= Arbeiter) zurück, die hier noch Platz finden.
-- (Nicht für Nichtverteidigungsgebäude aufrufen!)
function Logic.GetDefendersSlotsAvailable(_id) end

--- Gibt die Beziehung zwischen den Spielern zurück.
-- return: Diplomacy.XXX
function Logic.GetDiplomacyState(_player1, _player2) end

--- Gibt die benötigte Wetterturm-Energie für einen Wetterwechsel zurück.
function Logic.GetEnergyRequiredForWeatherChange() end

--- Gibt Entities des Typs zurück. (maximal ca. 40)
-- return: number, id1, id2, ...
function Logic.GetEntities(_type,_max) end

--- Gibt Entities in einem Gebiet zurück.
-- Rückgabe nach Entfernung sortiert. (maximal 16)
-- return: number, id1, id2, ...
function Logic.GetEntitiesInArea(_entityType, _posX, _posY, _range, _amount) end

--- Gibt den Rüstungswert des Entities zurück.
function Logic.GetEntityArmor(_entityId) end

--- Gibt das Entity (genau ?) an dieser Position zurück.
function Logic.GetEntityAtPosition(_posX, _posY) end

--- Gibt den Schaden des Entities zurück.
function Logic.GetEntityDamage(_entityId) end

--- Gibt die Sichtweite des Entities zurück.
-- (nur für XD_ScriptEntity??)
function Logic.GetEntityExplorationRange(_id) end

--- Gibt die aktuellen LP (absolut) eines Entities zurück.
function Logic.GetEntityHealth(_entityId) end

--- Gibt die id des Scriptnamens zurück.
function Logic.GetEntityIDByName(_name) end

--- Gibt die maximalen LP eines Entity zurück.
function Logic.GetEntityMaxHealth(_entityId) end

--- Gibt den Entitynamen zurück (oder nil)
function Logic.GetEntityName(_entityId) end

--- Gibt die Rotation in Grad zurück. (meistens... , selten 0)
function Logic.GetEntityOrientation(_entityId) end

--- Gibt die Position des Entities zurück.
-- return: x, y (z nicht, Logic.EntityGetPos nutzen)
function Logic.GetEntityPosition(_id) end

--- Direkter zugriff auf den Arbeitsspeicher.
-- Sehr vorsichtig verwenden!
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/Scripting-Values-18361.htm
function Logic.GetEntityScriptingValue(_entityId, _index) end

--- Gibt den EntityTyp zurück.
-- return: EntityType.XXX
function Logic.GetEntityType(_entityId) end

--- Gibt den Namen (string) des Entitytyps zurück.
function Logic.GetEntityTypeName(_entityType) end

--- Gibt das Geschütz des Turmes (Kanonen/Ballista/Wohnstätte).
function Logic.GetFoundationTop(_towerId) end

--- Sind alle Entities Unverwundbar? (Wenn ja, wird auch kein Events.LOGIC_EVENT_ENTITY_HURT_ENTITY getriggert)
-- (Ist während eines briefings akitv)
-- return: 1/0
function Logic.GetGlobalInvulnerability() end

--- Füllt _t mit den Ids der Helden dieses Players.
function Logic.GetHeroes(_player, _t) end

--- Gibt die Erfahrungslevel (Sterne) des Leaders zurück.
-- return: Anzahl Sterne (-1 = keine; 0 = 1 Stern usw.)
function Logic.GetLeaderExperienceLevel(_id) end

--- Gibt einen Leader zurück, der an diesen Gebäude trainiert.
function Logic.GetLeaderTrainingAtBuilding(_buildingId) end

--- Gibt die maximale Soldatenzahl dieses Leaders zurück.
function Logic.GetLeadersGroupAttractionLimitValue(_id) end

--- Gibt die Motivation zurück, ab der ein Siedler verärgert ist.
-- return: 1 -> 100%? Normal = 0.7
function Logic.GetLogicPropertiesMotivationThresholdAngry() end

--- Gibt die Motivation zurück, ab der ein Siedler glücklich ist.
-- return: 1 -> 100%? Normal = 1.5
function Logic.GetLogicPropertiesMotivationThresholdHappy() end

--- Gibt die Motivation zurück, ab der die Siedler verschwinden.
-- return: 1 -> 100%? Normal = 0.25
function Logic.GetLogicPropertiesMotivationThresholdLeave() end

--- Gibt die Motivation zurück, ab der ein Siedler traurig ist.
-- return: 1 -> 100%? Normal = 1
function Logic.GetLogicPropertiesMotivationThresholdSad() end

--- Gibt die Motivation zurück, ab der keine neuen Siedler erscheinen.
-- return: 1 -> 100%? Normal = 0.3
function Logic.GetLogicPropertiesMotivationThresholdVCLock() end

--- Gibt die maximal verfügbaren Verteidiger (= Arbeiter) zurück, die hier Platz finden.
-- (Nicht für Nichtverteidigungsgebäude aufrufen!)
function Logic.GetMaxDefenders(_id) end

--- Gibt die Maximalzahl der Arbeiter für dieses Gebäudes zurück.
function Logic.GetMaxNumWorkersInBuilding(_id) end

--- Gibt die Maximalzahl der "Esser" für dieses Gebäudes zurück.
function Logic.GetMaxNumberOfEaters() end

--- Gibt die Maximalzahl der Bewohner für dieses Gebäudes zurück.
function Logic.GetMaxNumberOfResidents() end

--- Gibt den maximalen Glaubenswert des Spielers zurück.
function Logic.GetMaximumFaith(_player) end

--- Gibt die maximale möglichen menschlichen Spieler zurück (Multiplayer).
function Logic.GetMaximumNumberOfPlayer() end

--- Gibt Informationen über das Söldnerangebot zurück und schreibt die Kosten in _t.
-- return: leaderType, amount
function Logic.GetMercenaryOffer(_buildingId, _slot, _t) end

--- Gibt das passende Söldnerzelt zum Söldnerverkäufer zurück.
function Logic.GetMerchantBuildingId(_id) end

--- Gibt den Motivationseinfluss dieses Gebäudes zurück.
-- return: int 0 -> kein Effekt
function Logic.GetMotivationEffect(_Id) end

--- Gibt das nächste Entity vom selben Typ und player zurück. Kann 0 oder dieselbe id zurückgeben.
function Logic.GetNextEntityOfPlayerOfType(_id) end

--- ???
function Logic.GetNextEntityOfPlayerOfTypeAtBuilding() end

--- Gibt den nächsten unbeschäftigten Serf zurück.
function Logic.GetNextIdleSerf(_player, _serf) end

--- Gibt den nächsten Leader zurück.
-- (Typabhängig??? Verwendet für shortcut)
function Logic.GetNextLeader(_player, _leader) end

--- Gibt den nächsten Wetterstatus zurück.
-- return: 1/2/3 -> Sommer/Regen/Winter
function Logic.GetNextWeatherState() end

--- Gibt den nächsten Arbeiter ohne Essensplatz zurück.
function Logic.GetNextWorkerWithoutFarm(_player, _worker) end

--- ??? Vermutung aufgrund ähnlicher Funktionen
function Logic.GetNextWorkerWithoutFarmOrResidence(_player, _worker) end

--- Gibt den nächsten Arbeiter ohne Schlafplatz zurück.
function Logic.GetNextWorkerWithoutResidence(_player, _worker) end

--- Gibt die aktuelle Anzahl der Siedler (VC-Platze relevant) dieses players zurück.
function Logic.GetNumberOfAttractedSettlers(_player) end

--- Gibt die aktuelle Anzahl der Soldaten eines players zurück.
function Logic.GetNumberOfAttractedSoldiers(_player) end

--- Gibt die aktuelle Anzahl der Arbeiter eines players zurück.
function Logic.GetNumberOfAttractedWorker(_player) end

--- Gibt die noch am HQ kaufbaren Helden zurück. (Original aus im MP)
function Logic.GetNumberOfBuyableHerosForPlayer(_playerId) end

--- Gibt die Anzahl der Entities dieses Typs zurück.
function Logic.GetNumberOfEntitiesOfType(_eTyp) end

--- Gibt die Anzahl der Entities des Typs und Players zurück.
function Logic.GetNumberOfEntitiesOfTypeOfPlayer(_player, _eTyp) end

--- Gibt die Anzahl der unbeschäftigten Serfs eines players zurück.
function Logic.GetNumberOfIdleSerfs(_player) end

--- Gibt die Anzahl der Leader eines players zurück.
function Logic.GetNumberOfLeader(_player) end

--- Gibt die Anzahl der Arbeiter eines Players und Typs zurück.
function Logic.GetNumberOfPlayersWorkerOfType(_player, _eTyp) end

--- Gibt die Anzahl der Siedler dieses Spielers zurück.
function Logic.GetNumberOfSettlers(_player) end

--- Gibt die Anzahl der Arbeiter ohne Essensplatz zurück.
function Logic.GetNumberOfWorkerWithoutEatPlace(_player) end

--- Gibt die Anzahl der Arbeiter ohne Schlafplatz zurück.
function Logic.GetNumberOfWorkerWithoutSleepPlace(_player) end

--- Gibt die Anzahl der Söldnerangebote zurück.
function Logic.GetNumerOfMerchantOffers(_buildingId) end

--- Gibt die Aufladung der Überstunden zurück.
-- return: 0-100 (0-> aktivierbar)
function Logic.GetOvertimeRechargeTimeAtBuilding(_id) end

--- Gibt die Maximale Anzahl an VC-Plätzen zurück.
function Logic.GetPlayerAttractionLimit(_player) end

--- Gibt die Aktuelle VC-Belegung zurück.
function Logic.GetPlayerAttractionUsage(_player) end

--- Gibt die aktuell genutzten Essensplätze zurück.
function Logic.GetPlayerEatPlaceUsage(_player) end

--- Gibt die maximalen Essensplätze zurück.
function Logic.GetPlayerEatPlacesLimit(_player) end

--- Gibt Entities nach player und Typ zurück. (maximal 16?)
-- return: number, id1, id2, ...
function Logic.GetPlayerEntities(_playerId, _entityType, _amount) end

--- Gibt Entities nach player, Typ und Gebiet zurück. (maximal 16?)
-- Sortiert nach Entfernung zur Mitte.
-- return: number, id1, id2, ...
function Logic.GetPlayerEntitiesInArea(_playerId, _entityType, _posX, _posY, _range, _amount) end

--- ??? Bezahlte Arbeiter?
function Logic.GetPlayerNumberOfPaidWorker() end

--- Gibt die zu erwartenden Steuern zurück. (ohne Leaderkosten)
function Logic.GetPlayerPaydayCost(_player) end

--- Gibt die Zeit zwischen zwei Zahltagen zurück.
function Logic.GetPlayerPaydayFrequency(_player) end

--- Gibt den zu erwartenden Sold für die Leader zurück.
function Logic.GetPlayerPaydayLeaderCosts(_player) end

--- Gibt die Zeit bis zum nächsten Zahltag zurück.
function Logic.GetPlayerPaydayTimeLeft(_player) end

--- Muss der Spieler seine Hauptmänner bezahlen?
-- return: 1/0
function Logic.GetPlayerPaysLeaderFlag(_player) end

--- Gibt die (aktuellen ?) Steuern pro Arbeiter zurück.
function Logic.GetPlayerRegularTaxPerWorker(_player) end

--- Gibt die aktuell genutzten Schlafplätze zurück.
function Logic.GetPlayerSleepPlaceUsage(_player) end

--- Gibt die maximalen Schlafplätze zurück.
function Logic.GetPlayerSleepPlacesLimit(_player) end

--- Gibt die durch LevyTaxes gewonnenen Steuern zurück. (verworfen, funktionstüchtig)
function Logic.GetPlayerTaxIncome(_player) end

--- Gibt die aktuell vorhandene Rohstoffmenge zurück. Unterschied zwischen Roh und Veredelt.
function Logic.GetPlayersGlobalResource(_player, _resTyp) end

--- Gibt eine pseudozufällige Zahl zwischen 0 und _max aus.
function Logic.GetRandom(_max) end

--- Gibt die maximale Zeit einer Aura dieses Entitys zurück.
function Logic.GetRangedEffectDuration(_id) end

--- Gibt zurück, wie lange die Aura des Entitys noch aktiv ist.
function Logic.GetRangedEffectTimeLeft(_id) end

--- Gibt zu einem Rohstofftyp den unveredelten Rohstofftyp zurück.
function Logic.GetRawResourceType(_resTyp) end

--- Gibt die Zeit aus, in der das Gebäude noch ausgebaut wird.
-- Wird es gerade nicht ausgebaut, wird die Maximale Zeit zurückgegeben (Logic.GetTotalUpgradeTimeForBuilding).
function Logic.GetRemainingUpgradeTimeForBuilding(_id) end

--- !!! democopy
-- Gibt zurück, wie viele Rohstoffe noch in dem Schacht unter der Mine sind.
function Logic.GetResourceAmountBelowMine(_id) end

--- Gibt zurück, wie viele Rohstoffe noch in einem Schacht/Haufen sind.
function Logic.GetResourceDoodadGoodAmount(_id) end

--- Gibt zurück, was für Rohstoffe in einem Schacht/Haufen sind.
function Logic.GetResourceDoodadGoodType(_id) end

--- Gibt den Sektor zurück, in dem sich das Entity befindet.
-- 0 -> Blocking
-- gleicher Sektor -> gibt einen Weg zwischen beiden.
-- unterschiedlicher Sektor -> kein Weg (Zugbrücken werden anscheinend nicht beachtet...)
function Logic.GetSector(_entityId) end

--- Berechnet die Kosten für den Handel.
function Logic.GetSellAmount(_player, _selltype, _buyType, _buyAmount) end

--- Gibt den aktuellen Leadertyp des Players zurück.
function Logic.GetSettlerTypeByUpgradeCategory(_upCat, _player) end

--- Gibt die Siedlertypen in dieser Upgradecategory zurück.
-- return: number, typ1, typ2, ...
function Logic.GetSettlerTypesInUpgradeCategory(_upcat) end

--- Gibt zurück, vie viel Platz das Entity im VC belegt.
function Logic.GetSettlersAttractionLimitValue(_id) end

--- Gibt das Gebäude mit dem Essensplatz des Arbeiters zurück.
function Logic.GetSettlersFarm(_id) end

--- Gibt die Motivation des Siedlers zurück.
-- return: Wert zwischen 0.0 und 3.0
function Logic.GetSettlersMotivation(_id) end

--- Gibt das Gebäude mit dem Schlafplatz des Arbeiters zurück.
function Logic.GetSettlersResidence(_id) end

--- Gibt das Arbeitsgebäude des Arbeiters zurück.
function Logic.GetSettlersWorkBuilding(_id) end

--- Gibt alle Soldiers des Leaders zurück.
-- return: number, id1, id2, ...
function Logic.GetSoldiersAttachedToLeader(_id) end

--- Gibt Typ und Menge der Rohstoffe zurück, die ein Dieb trägt.
-- return: resTyp, amount
function Logic.GetStolenResourceInfo(_id) end

--- Gibt die Steuermenge eines Arbeiters zurück ?
-- Steueränderungen???
function Logic.GetTaxAmountOfWorker() end

--- Gibt die Höhe der Steuern zurück.
-- return: 0-4
function Logic.GetTaxLevel(_player) end

--- Gibt Informationen über den Technologiehandel zurück und schreibt dessen Kosten in _t.
-- return: techTyp, amount
function Logic.GetTechOffer(_buildingId, _index, _t) end

--- Gibt an, wie weit die Technoloie erforscht ist.
-- return 0-100
function Logic.GetTechnologyProgress(_player, _techTyp) end

--- Gibt zurück, welche Technologie hier gerade erforscht wird.
function Logic.GetTechnologyResearchedAtBuilding(_id) end

--- Gibt den Technologiestatus zurück.
-- return: 	0->verboten
-- 			1->waiting?
-- 			2->erlaubt
-- 			3->wird erforscht
-- 			4->erforscht
-- 			5->benötigt vorher andere Technologien
function Logic.GetTechnologyState(_player, _techTyp) end

--- Gibt die Zeit seit der die Map gestartet wurde in Sekunden zurück.
function Logic.GetTime() end

--- Gibt die Zeit seit der die Map gestartet wurde in Millisekunden zurück.
function Logic.GetTimeMs() end

--- Gibt die Zeit bis zum nächsten Wetterwechsel zurück (in Sekunden).
function Logic.GetTimeToNextWeatherPeriod() end

--- Gibt die Zeit zurück, die ein Gebäude für den Ausbau benötigt.
function Logic.GetTotalUpgradeTimeForBuilding(_id) end

--- Gibt den Handelsfortschritt zurück.
-- return: 0-100 (100 -> gerade kein Handel)
function Logic.GetTransactionProgress(_id) end

--- Gibt ein table mit den Tributkosten zurück ??
function Logic.GetTributeCosts(_player, _tribId) end

--- Gibt die UpgradeCategory zurück, in der das Gebäude ist.
function Logic.GetUpgradeCategoryByBuildingType(_eTyp) end

--- Gibt zurück, wie weit das Gebäude ausgebaut wurde (Ausbaustufe).
-- return: (0->nicht Ausgebaut??)
function Logic.GetUpgradeLevelForBuilding(_id) end

--- Gibt den Aktuellen Wetterstatus zurück.
-- return: 1/2/3 -> Sommer/Regen/Winter
function Logic.GetWeatherState() end

--- !!! democopy
-- Gibt den Arbeitertyp des Gebäudes zurück.
function Logic.GetWorkerTypeByBuilding(_id) end

--- Setzt einen Patroullien Punkt für eine militärische Einheit 
-- (WICHTIG: Um die Einheit auf Patroullie gehen zu lassen muss auch noch Logic.GroupPatrol aufgerufen werden)
-- _id 
-- _positionX
-- _positionY
function Logic.GroupAddPatrolPoint(_id, _positionX, _positionY) end

--- Befiehlt _id (und seinen Soldiers) _target anzugreifen.
function Logic.GroupAttack(_id, _target) end

--- Befiehlt _id (und seinen Soldiern) sich zur angegebenen Position zu bewegen und unterwegs alles anzugreifen.
-- ! Nach einem Kampf auf dem Weg dorthin bleiben die Entities teilweise einfach stehen.
-- _rot: Rotation am Ziel ???, -1->Automatisch (Funktioniert mit _rot==nil)
function Logic.GroupAttackMove(_id, _posX, _posY, _rot) end

--- _id bleibt stehen und verteidigt sich (Standardverhalten von Leadern).
function Logic.GroupDefend(_id) end

--- _id folgt und verteidigt _target
-- ! Bleibt teilweise einfach stehen, insbesondere wenn _id schneller ist als _target
function Logic.GroupGuard(_id, _target) end

--- Schickt eine militärische Einheit auf Patroullie; 
--  sofern nicht durch Logic.GroupAddPatrolPoint erweitert nur zwischen aktueller Position und angegebener Position
-- _id
-- _positionX
-- _positionY
function Logic.GroupPatrol(_id, _positionX, _positionY) end

--- _id bleibt stehen und bewegt sich auch nicht, wenn es angegriffen wird.
-- (AutoAttack-Range von Fernkämpfern erhöht)
function Logic.GroupStand(_id) end

--- Heilt ein Entity. LP-Maximum wird beachtet.
function Logic.HealEntity(_entityId, _heal) end

--- Verworfen
function Logic.HeroChangeActionPoints() end

--- Gibt die maximale Auflafezeit der Fähigkeit zurück.
function Logic.HeroGetAbilityRechargeTime(_id, _ability) end

--- Gibt die aktuelle Aufladezeit der Fähigkeit zurück.
-- Bei Logic.HeroGetAbilityRechargeTime ist die Fähigkeit komplett aufgeladen.
function Logic.HeroGetAbiltityChargeSeconds(_id, _ability) end

--- Verworfen
function Logic.HeroGetActionPointCostForAbility() end

--- Verworfen
function Logic.HeroGetActionPoints() end

--- Verworfen
function Logic.HeroGetMaxActionPoints() end

--- Gibt zurück, ob der Held die Fähigkeit besitzt.
-- return: 1/0
function Logic.HeroIsAbilitySupported(_id, _ability) end


--- setzt die aktuelle Aufladezeit der Heldenfähigkeit.
-- Bei Logic.HeroGetAbilityRechargeTime ist die Fähigkeit komplett aufgeladen.
function Logic.HeroSetAbilityChargeSeconds(_id, _ability, _value) end

--- Verworfen
function Logic.HeroSetActionPoints() end

--- Verletzt ein Entity. Es kann dabei sterben.
-- Wird ein negativer Wert übergeben, wird das Entity geheilt.
-- (Bei nicht-Gebäuden wird dabei das LP-Maximum ignoriert)
function Logic.HurtEntity(_entityId, _hurt) end

--- Gibt zurück, ob das Gebäude im Alarm-Modus ist. (Auch für Arbeitsgebäude?)
-- return: true/false
function Logic.IsAlarmModeActive(_building) end

--- Gibt zurück, ob für ausgebildete Leader automatisch Soldiers gekauft werden.
-- return: 1/0
function Logic.IsAutoFillActive(_building) end

--- Gibt zurück, ob das Entity ein Gebäude ist.
-- return: 1/0
function Logic.IsBuilding(_entityId) end

--- !!! democopy
-- Gebäudeaktivität (gleichbedeutend mit "ist Gebäude erstellt")
-- return 1/0
function Logic.IsBuildingActive(_id) end

--- Gibt zurück, ob das gebäude fertig gebaut ist.
-- return: 1/0
function Logic.IsConstructionComplete(_buildingId) end

--- !!! democopy
-- Gibt zurück, ob das Gebäude im Alarmmodus verteidigt werden kann.
-- return: true/false
function Logic.IsDefendableBuilding(_id) end

--- Gibt zurück, ob das Entity lebt.
-- return true/false
function Logic.IsEntityAlive(_id) end

--- Gibt zurück, ob das Entity entfernt wurde (nicht mehr existiert)
-- return true/false
function Logic.IsEntityDestroyed(_id) end

--- Gibt zurück, ob das Entity in der angegebenen Kategorie ist.
-- return: 1/0
function Logic.IsEntityInCategory(_id, _entCat) end

--- Gibt zurück, ob sich das Entity bewegt. (Unabhängig von der TaskList).
-- return: 1/0
function Logic.IsEntityMoving(_entityId) end

--- Gibt zurück, ob der Entitytyp in der angegebenen Kategorie ist.
-- return: 1/0
function Logic.IsEntityTypeInCategory(_etyp, _eCat) end

--- Gibt zurück, ob das Entity ein Held ist.
-- return: 1/0
function Logic.IsHero(_entityId) end

--- Gibt zurück, ob das Entity ein Leader ist.
-- return: 1/0
function Logic.IsLeader(_entityId) end

--- Gibt zurück, ob die Position sichtbar ist.
-- (Bei KI-Spielern muss vorher mit Logic.ActivateUpdateOfExplorationForAllPlayers() der Sichtbereich erst aktiviert werden.)
-- return: 1/0
function Logic.IsMapPositionExplored(_player, _posX, _posY) end

--- Gibt zurück, ob dieses Entity ein Söldnerquartier ist.
-- return: true/false
function Logic.IsMercenaryBuilding(_id) end

--- Gibt zurück, ob das Söldnerquartier für diesen Spieler geöffnet ist.
-- return: true/false
function Logic.IsMerchantOpened(_id, _player) end

--- Gibt zurück, ob Überstunden an diesem Gebäude aktiv sind.
-- return:  1/0
function Logic.IsOvertimeActiveAtBuilding(_id) end

--- !!! democopy
-- Gibt zurück, ob dieser Spieler noch Platz im VC hat.
-- return: 1/0
function Logic.IsPlayerAttractionSlotAvailable(_player) end

--- Gibt zurück, ob Entities im Gebiet sind.
-- _cat: 2->Siedler, 4->Tiere, 8->Gebäude, 16->Statics, 32->Ornamental (Binar?) (Optional) (democopy)
-- return: 1/0
function Logic.IsPlayerEntityInArea(_player, _posX, _posY, _range, _cat) end

--- Prüft, ob Entities im Gebiet sind.
-- _catName: EntityCategory als String ("Hero" anstatt EntityCategories.Hero)
-- return: 1/0
function Logic.IsPlayerEntityOfCategoryInArea(_player, _posX, _posY, _range, _catName1, _catName2, ...) end

--- Gibt zurück, ob das Entity ein Serf ist.
-- return: 1/0
function Logic.IsSerf(_entityId) end

--- Gibt zurück, ob das Entity ein Siedler (Arbeiter?) ist. ??
-- return: 1/0
function Logic.IsSettler(_entityId) end

--- Gibt zurück, ob das Entity in einer Farm (Taverne?) ist.
-- return: 1/0
function Logic.IsSettlerAtFarm(_id) end

--- Gibt zurück, ob das Entity in einem Wohnhaus ist.
-- return: 1/0
function Logic.IsSettlerAtResidence(_id) end

--- Gibt zurück, ob das Entity in einer Arbeitsstätte ist.
-- return: 1/0
function Logic.IsSettlerAtWork(_id) end

--- Gibt zurück, ob das Gebäude ein Technologiehändler ist.
-- return: true/false
function Logic.IsTechTraderBuilding(_id) end

--- Gibt zurück, ob eine Technologie erforscht ist.
-- return: 1/0
function Logic.IsTechnologyResearched(_player, _techtTyp) end

--- Gibt zurück, ob sich das Wetter gerade ändert.
-- return: 1/0
function Logic.IsWeatherChangeActive() end

--- Gibt zurück, ob das Entity ein Arbeiter ist.
-- return 1/0
function Logic.IsWorker(_id) end

--- Ändert die Formation der Soldiers
-- _formation:	1-> Gruppe hinten
-- 				2-> Quadrat
-- 				3-> ?
-- 				4-> Doppelreihe vorne
-- 				5-> Kreis
-- 				6-> Pfeil vorne
-- 				7-> Reihe vorne
function Logic.LeaderChangeFormationType(_id, _formation) end

--- Gibt die Kaserne/Schießstand/Stall zurück, an dem der Leader gerade ausgibildet wird. (oder 0)
function Logic.LeaderGetBarrack(_id) end

--- Gibt den aktuellen Befehl des Leaders zurück.
-- return: 0-8
-- 	0-> Angriff
-- 	1-> CommandEnter?
-- 	2-> CommandAggressiveMode?
-- 	3-> Verteidigen (normal stehen)
-- 	4-> Patroullieren
-- 	5-> Angriffsbewegung
-- 	6-> Bewachen
-- 	7-> Stehen bleiben
-- 	8-> Bewegen
function Logic.LeaderGetCurrentCommand(_id) end

--- Gibt die maximale Anzahl an Soldiers für diesen Leader zurück.
function Logic.LeaderGetMaxNumberOfSoldiers(_id) end

--- Gibt das nächste passende Militärgebäude in Soldatenkaufreichweite zurück. (oder 0)
function Logic.LeaderGetNearbyBarracks(_id) end

--- Gibt die aktuelle Anzahl an Soldiern zurück.
function Logic.LeaderGetNumberOfSoldiers(_id) end

--- Verbindet einen existierenden Soldier mit diesem Leader.
function Logic.LeaderGetOneSoldier(_id) end

--- Gibt die UpgradeCategory der Soldiers dieses Leaders zurück.
function Logic.LeaderGetSoldierUpgradeCategory(_id) end

--- Gibt den EntityType der Soldiers dieses Leaders zurück.
function Logic.LeaderGetSoldiersType(_id) end

--- ???
function Logic.LeaderGetUpgradeCategoryFromSoldierType(_player, _SolETyp) end

--- Verworfen!! 
-- Gibt den Sold für diesen Leader zurück.
function Logic.LeaderGetUpkeepCost(_id) end

--- Entlässt einen Soldier
-- _leaderId
function Logic.LeaderReleaseOneSoldier(_id) end

--- !!! democopy
-- Gebiet bewachen?????
function Logic.LeaderSetTerritory(_id, _posX, _posY, _range) end

--- !!! democopy
-- Blitzeinschlag an Position; gleichbedeutend mit Lighning Effekt
-- _positionX
-- _positionY
function Logic.Lightning(_positionX, _positionY) end

--- Bewegt ein Entity zu einer Position. Die TaskList wird nicht geändert!
-- (Auch Steine lassen sich damit bewegen)
-- Vorsicht: Siedler werden manchmal gelöscht, wenn sie über Gebiet mit Blocking kommen! 
function Logic.MoveEntity(_entityId, _posX, _posY) end

--- Gibt einen Bewegungsbefehl.
function Logic.MoveSettler(_id, _posX, _posY) end

--- Gibt den Status des Spielers zurück.
-- return: !!! democopy
-- 	0-> nicht im Spiel
-- 	1-> Spielt
-- 	2-> Gewonnen
-- 	3-> Verloren
-- 	4-> Verlassen (Verbundungsabbruch MP)
function Logic.PlayerGetGameState(_player) end

--- !!! democopy
-- Gibt den Zeitpunkt zurück, an dem der Satus des Spielers geändert wurde. (oder 0)
-- (in 1/10 sec)
function Logic.PlayerGetGameStateChangedTime(_player) end

--- Gibt zurück, ob der Player das Spiel verlassen hat.
-- return: 1/0
function Logic.PlayerGetLeftGameFlag(_player) end

--- Verteilt alle Arbeiter neu auf die Gebäude.
function Logic.PlayerReAttachAllWorker(_player) end

--- Setzt den Player auf Spiel verlassen.
function Logic.PlayerSetGameStateToLeft(_player) end

--- Setzt den Spieler auf verloren.
function Logic.PlayerSetGameStateToLost(_player) end

--- Setzt den Spieler auf spielend.
function Logic.PlayerSetGameStateToPlaying(_player) end

--- Setzt den Spieler auf gewonnen.
function Logic.PlayerSetGameStateToWon(_player) end

--- Setzt, ob der Spieler menschlich ist.
function Logic.PlayerSetIsHumanFlag(_player, _flag) end

--- Setzt die Spielerfarbe für die Statistiken. (MP)
function Logic.PlayerSetPlayerColor(_player, _r, _g, _b) end

--- Entfernt den Distanz-Check zwischen diesen Entities.
function Logic.RemoveEntityToEntityDistanceCheck(_id1, _id2) end

--- Entfernt den Distanz-Check dieses Entities zu allen anderen Entities.
function Logic.RemoveEntityToEntityDistanceCheckForMainID(_id1) end

--- Entfernt die Quest komplett aus dem Auftragsbuch.
function Logic.RemoveQuest(_player, _questId) end

--- Entfernt den Tribut aus dem Tributmenü.
function Logic.RemoveTribute(_player, _tribId) end

--- Hebt SuspendAllEntities auf.
function Logic.ResumeAllEntities(_player) end

--- Hebt SuspendEntity auf.
function Logic.ResumeEntity(_id) end

--- Lässt das Entity sich zu der angegebenen Gradzahl drehen. Entity muss sich bewegen können.
function Logic.RotateEntity(_id, _orientation) end

--- Gibt zurück, ob in Darios Falkenreichweite Gegner sind. (Für Dario-Button-Blinken)
-- (Funktioniert mit anderen Entities?)
function Logic.SentinelGetUrgency(_id) end

--- Setzt das Territoriumszentrum, indem sich ein Tier bewegt
-- _id
-- _positionX
-- _positionY
function Logic.SetAnimalTerritoryCenter(_id, _positionX, _positionY) end

--- Setzt (für kurze Zeit!) die Animation eines Gebäudes.
-- _index: 0-3
-- _animation: String
function Logic.SetBuildingSubAnim(_id, _index, _animation) end

--- Setzt den Deflationswert des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.SetCurrentDeflation(_player, _rTyp, _def) end

--- Setzt den Inflationswert des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.SetCurrentInflation(_player, _rTyp, _inf) end

--- Setzt die maximalen Arbeiter des Gebäudes.
-- nicht syncronisiert (GUI benutzen).
-- nicht aus der GameCallback_OnBuildingConstructionComplete oder ähnlichem nutzen,
-- führt zu doppelten einträgen in shok_GGL_CPlayerAttractionHandler.WorkBuildingsArray -> crash on destroy
function Logic.SetCurrentMaxNumWorkersInBuilding(_id, _maxWorker) end

--- Setzt den Preis des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
function Logic.SetCurrentPrice(_player, _rTyp, _pri) end

--- Setzt den DiplomatieStatus zwischen diesen Playern.
-- _diplStat: Diplomacy.XXX
function Logic.SetDiplomacyState(_player1, _player2, _diplSat) end

--- !!! democopy
-- Setzt die Länge des Wetterwechsels für einen Player???
function Logic.SetDurationOfWeatherChange(_player, _dur) end

--- !!! democopy funktionslos
-- Setzt, ob das Entity sein Standardverhalten verwendet.
function Logic.SetEntityDefaultBehaviorFlag(_id, _flag) end

--- Setzt die Sichtweite einer XD_ScriptEntity. 
-- (auch möglich für Entities.PB_Tower2_Ballista ... ;für Salims Falle und Pilgrims Bombe)
function Logic.SetEntityExplorationRange(_entityId, _range) end

--- Macht ein Entity (un)verwundbar.
-- Wenn es unverwundbar ist, wird zwar der Entity_Hurt_Entity-Trigger ausgelöst, das Entity kann aber keine LP verlieren.
function Logic.SetEntityInvulnerabilityFlag(_id, _flag) end

--- Setzt den Scriptnamen eines Entity. (nil löscht den Scriptnamen)
function Logic.SetEntityName(_entityId, _entityName) end

--- Direkter zugriff auf den Arbeitsspeicher.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/Scripting-Values-18361.htm
function Logic.SetEntityScriptingValue(_entityId, _index, _value) end

--- Setzt die Selektierbarkeit eines Entity. (Nur bei Entities des Spielers)
function Logic.SetEntitySelectableFlag(_entityId, _flag) end

--- Steuerbarkeit ändern?? funktionslos
function Logic.SetEntityUserControlFlag(_id, _flag) end

--- Setzt die Globale Unverwundbarkeit. Wenn an, wird kein Entity_Hurt_Entity-Trigger mehr aufgerufen.
function Logic.SetGlobalInvulnerability(_flag) end

--- Setzt Modell und Animation die genutzt werden. 
-- (Einheiten Models werden falsch angezeigt, die Animation kann nicht gesetzt werden!)
function Logic.SetModelAndAnimSet(_id,_modelset,_animset) end

--- Setzt die Anzahl im HQ kaufbarer Helden. (MP)
function Logic.SetNumberOfBuyableHerosForPlayer(_player, _num) end

--- Setzt das NPC-Ausrufezeichen über diesem Entity.
function Logic.SetOnScreenInformation(_id, _flag) end

--- Setzt den Namen des Players (im Diplomatiemenü).
-- _name: StringTableText-Key
function Logic.SetPlayerName(_player, _name) end

--- Setzt, ob der Spieler seine Leader bezahlen muss.
function Logic.SetPlayerPaysLeaderFlag(_player, _flag) end

--- Setzt den Namen des Players (im Diplomatiemenü).
-- _name: Name des Spielers (nil löscht aus Diplomatiemenü)
function Logic.SetPlayerRawName(_player, _name) end

--- funktionslos seit 1.6 ?
function Logic.SetPlayerTaxAmountFactor() end

--- !!! democopy
-- Setzt die Questposition.
function Logic.SetQuestPosition(_player, _questId, _posX, _posY, _info) end

--- Setzt den Questtyp: MAINQUEST/SUBQUEST.._..OPEN/CLOSED
function Logic.SetQuestType(_player, _questId, _qTyp, _info) end

--- Setzt die Menge abbaubarer Rohstoffe des Schachts/Haufens.
function Logic.SetResourceDoodadGoodAmount(_id, _amount) end

--- Lässt _player1 sehen, was _player2 sieht. (an/aus schalten)
function Logic.SetShareExplorationWithPlayerFlag(_player1, _player2, _flag) end

--- Setzt den Geschwindigkeitsfaktor eines Entity (normal 1.0).
function Logic.SetSpeedFactor(_id, _factor) end

--- ???
function Logic.SetSubQuestDoneFlag() end

--- Setzt die TaskList.
-- _tasklist: TaskLists.XXX
function Logic.SetTaskList(_id, _tasklist) end

--- Setzt den Technologiestatus.
-- _state: 0->verboten
-- 			1->waiting?
-- 			2->erlaubt
-- 			3->wird erforscht
-- 			4->erforscht
-- 			5->benötigt vorher andere Technologien
function Logic.SetTechnologyState(_player, _tech, _state) end

--- Setzt die Terrainhöhe.
-- round(pos/100)
function Logic.SetTerrainNodeHeight(_posX, _posY, _hei) end

--- Setzt den Terraintyp.
-- round(pos/100)
function Logic.SetTerrainNodeType(_posX, _posY, _terTyp) end

--- Setzt die Terrain-Vertexfarbe.
-- round(pos/100)
function Logic.SetTerrainVertexColor(_posX, _posY, _r, _g, _b) end

--- !!! democopy
-- Setzt beim Mapstart, wieviel Sekunden bereits vom ersten Wetterelement abgelaufen sind. 
-- (Bsp: 	Logic.AddWeatherElement(1, 700, ...) Logic.AddWeatherElement(2,...) Logic.SetWeatherOffset(600) ändert bereits nach 100 sek. das Wetter
	
function Logic.SetWeatherOffset(_sec) end

--- !!! democopy
-- Produktionsgeschwindigkeit???
-- Funktioniert noch?????
function Logic.SetWorkTaskListsPerCycle(_player, _entitytype, _num) end

--- ???
function Logic.SettlerAggressive(_id) end

--- ???
function Logic.SettlerDefend(_id) end

--- ???
function Logic.SettlerStand(_id) end

--- Funktionslos
function Logic.SetupGfxSet() end

--- Funktionslos     SCV 69 verwenden
function Logic.SoldierGetLeaderEntityID() end

--- Erzeugt einen Partikel Effekt für Siedler (Bsp: Kanonenrauch bei PV_Cannon)
-- _id
-- _node (??? Manche Eingaben liefern hier einen Absturz)
-- effectID (siehe GGL_Effects table)
function Logic.SpawnParticleEffect(_id, _node, _eff) end

--- Blendet Nebel ein und aus.
-- _alpha: 1/0
function Logic.StartAlphaBlending(_id, _alpha, _time) end

--- Funktionslos
function Logic.StartRain() end

--- Funktionslos
function Logic.StartSnow() end

--- Funktionslos 
function Logic.StopPrecipitation() end

--- Entfernt Rohstoffe eines Spielers.
function Logic.SubFromPlayersGlobalResource(_player, _resTyp, _amount) end

--- Macht alle Entities unbeweglich, unselektierbar und unangreifbar.
function Logic.SuspendAllEntities(_player) end

--- Macht ein Entity unbeweglich, unselektierbar und unangreifbar.
function Logic.SuspendEntity(_id) end

--- Funktionslos
function Logic.ToggleDebugMode() end

--- Aktualisiert das Blocking.
-- round(pos/100)
function Logic.UpdateBlocking(_minX, _minY, _maxX, _maxY) end

--- !!! democopy
-- Wertet alle Gebäude der UpgradeCategory auf???
function Logic.UpgradeBuildingCategory(_upCat, _player) end

--- !!! democopy
-- Wertet einen Siedler auf?
function Logic.UpgradeSettler(_id) end

--- !!! democopy
-- Wertet alle Entities der UpgradeCategory auf.
-- Technologieersatz?
function Logic.UpgradeSettlerCategory(_upCat, _player) end

--- Setzt die Wasserhöhe.
-- round(pos/100)
function Logic.WaterSetAbsoluteHeight(_minX, _minY, _maxX, _maxY, _hei) end

--- Ändert die Wasserhöhe um den angegebenen Betrag.
-- round(pos/100)
function Logic.WaterSetRelativeHeight(_minX, _minY, _maxX, _maxY, _hei) end

--- Setzt den Wassertyp.
-- round(pos/100)
function Logic.WaterSetType(_minX, _minY, _maxX, _maxY, _watTyp) end

--- Gibt die Weltgröße zurück.
-- return: x, y (normalerweise x==y)
function Logic.WorldGetSize() end

--- !!! democopy
-- funktionslos
function Logic.WriteStatisticsToLogFile(_player) end

return nil
