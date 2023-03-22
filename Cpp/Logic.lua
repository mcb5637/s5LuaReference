
---@diagnostic disable: missing-return, duplicate-set-field
--- Funktionen um das Spiel grundlegend zu manipulieren.
--- soweit nicht anders notiert, ist keine funktion hier syncronisiert. Fuktionen die den spielstatus ändern, müssen aus einem syncronen kontext aufgerufen werden.
--- C
Logic = {}

--- Mapeditor Funktion; funktionslos
function Logic.ActivateBuildingPlacementChecks() end

--- Aktiviert einen Partikel Effekt an Gebäuden (Bsp: Power Plant; Sägewerk; Büchsenmanufaktur)
---@param _id number
---@param _effIndex number (0-3)
function Logic.ActivateParticleEffect(_id, _effIndex) end

--- Aktiviert das Sichtbereichsupdate für alle Player. (im SP standardmäßig abgeschaltet)
function Logic.ActivateUpdateOfExplorationForAllPlayers() end

--- Wenn sich _entity1 _entity2 auf _distance nähert, wird der Triggertyp _eventtyp getriggert. SimpleJob
---@param _entity1 number
---@param _entity2 number
---@param _distance number
---@param _eventtyp number
function Logic.AddEntityToEntityDistanceCheck(_entity1, _entity2, _distance, _eventtyp) end

--------------------------------------
-- Fügt ein Angebot bei einem Söldnerquartier hinzu.
---@param _id number
---@param _entityType number
---@param _amount number
---@param _resourceType1 number
---@param _cost1 number
---@param ... number Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddMercenaryOffer(_id, _entityType, _amount, _resourceType1, _cost1, ...) end

--- Fügt einen Quest den Aufträgen des Spielers der angegebenen _playerId hinzu.
--- wenn eine questid schon benutzt ist, wird die vorherige quest überschrieben.
---@param _playerId number
---@param _questId number
---@param _type number Der Quest-Typ, welcher das Symbol des Quests im Auftragsmenü verändert. Möglichkeiten: MAINQUEST_OPEN, MAINQUEST_CLOSED, SUBQUEST_OPEN, SUBQUEST_CLOSED
---@param _title string Der Name der Quest im Auftragsbuch als string (StringTableTextKey oder direkter string)
---@param _text string Die Quest-Beschreibung als string  (StringTableTextKey oder direkter string)
---@param _info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.AddQuest(_playerId, _questId, _type, _title, _text, _info) end

--- Wie AddQuest, nur mit Position, zu der gesprungen wird, wenn auf die Questbenachrichtigung geklickt wird.
--- wenn eine questid schon benutzt ist, wird die vorherige quest überschrieben.
---@param _playerId number
---@param _questId number
---@param _type number Der Quest-Typ, welcher das Symbol des Quests im Auftragsmenü verändert. Möglichkeiten: MAINQUEST_OPEN, MAINQUEST_CLOSED, SUBQUEST_OPEN, SUBQUEST_CLOSED
---@param _title string Der Name der Quest im Auftragsbuch als string (StringTableTextKey oder direkter string)
---@param _text string Die Quest-Beschreibung als string  (StringTableTextKey oder direkter string)
---@param _posX number
---@param _posY number
---@param _info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.AddQuestEx(_playerId, _questId, _type, _title, _text, _posX, _posY, _info) end

--- Verworfen, Logic funktioniert noch, GUI fehlt.
--- Fügt eine Tech zum kauf hinzu.
---@param _id number
---@param _techType number
---@param _amount number
---@param _resourceType1 number
---@param _cost1 number
---@param ... number Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddTechOffer(_id, _techType, _amount, _resourceType1, _cost1, ...) end

--- Gibt einem Spieler Rohstoffe.
---@param _player number
---@param _resourceType number ResourceType.XXX
---@param _amount number
function Logic.AddToPlayersGlobalResource(_player, _resourceType, _amount) end

--- Fügt einen Tribut hinzu. Es wird nicht geprüft, wann dieser bezahlt wurde! (Siehe SetupTributePaid oder Events.LOGIC_EVENT_TRIBUTE_PAID)
--- wenn dieselbe id wiederverwendet wird, werden die daten vom tribut überschrieben.
---@param _player number
---@param _tributeId number einzigartig für diesen Spieler
---@param _ownerEntityId number unbekannt, was das macht, sollte 0 sein
---@param _offeringPlayerId number unbekannt, was das macht, sollte 0 sein
---@param _text string anzeigetext im tributmenü, StringTableTextKey oder direkter string
---@param _resourceType1 number
---@param _cost1 number
---@param ... number Die Kosten (Bis zu 6 Rohstofftypen, abwechselnd ResourceType.xxx und Kosten dieses Typs)
function Logic.AddTribute(_player, _tributeId, _ownerEntityId, _offeringPlayerId, _text, _resourceType1, _cost1, ...) end

--- Ändert das Wetter.
-- Periodische Wettereffekte werden einer nach dem anderen (einfügereihenfolge) in Endlosschleife ausgeführt,
-- Nichtperiodische überschreiben dieses Normale Periodische Wetter für _duration
---@param _state number Welches Wetter? (1=normal,2=Regen,3=Schnee)
---@param _duration number Wie lange dieses Wetter sein soll (Sekunden)
---@param _periodic number (1=normal periodic,0=Wetterturm-Effekt)
---@param _gfxset number GFX-Set (normal: 1-3, wenn mehr GFX-Typen gesetzt sind, können diese auch verwendet werden)
---@param _forerun number Der Übergang benötigt einen Vorlauf, dieser wird hier in Sekunden gesetzt
---@param _transition number Dauer des Übergangs 
function Logic.AddWeatherElement(_state,_duration,_periodic,_gfxset,_forerun,_transition) end

--- Kann der Spieler (von der Motivation her) neue Entitys erhalten?
---@param _player number
---@return number flag
function Logic.AreVillageCentersLocked(_player) end

--- Lässt eine Kaserne,Schießstand,Reiterei einen Leader des angegebenen Typs ausbilden.
-- Beachtet Ressourcen und Platz im VC. Kann z.B. auch Schützen/Kanonen in der Kaserne ausbilden.
-- Funktioniert nicht mit Kanonengießereien!
---@param _barrackId number
---@param _upgradeCategory number UpgradeCategories.XXX
function Logic.BarracksBuyLeader(_barrackId, _upgradeCategory) end

--- Kauft ein Angebot im Söldnerzelt.
---@param _entityId number
---@param _playerId number
---@param _slot number (1-4)
function Logic.BuyMerchantOffer(_entityId, _playerId, _slot) end

--- Kann ein Rohstoff gekauft werden?
--- wird meines wissens nach nirgendwo geprüft.
---@return number flag
---@param _player number
---@param _resType number
function Logic.CanBuyResource(_player, _resType) end

--- Kann ein Rohstoff verkauft werden?
--- wird meines wissens nach nirgendwo geprüft.
---@return number flag
---@param _player number
---@param _resType number
function Logic.CanSellResource(_player, _resType) end

--- Bricht den ausbau eines gebäudes ab.
--- macht nix bei fehler.
---@param _buildingId number
function Logic.CancelBuildingUpgrade(_buildingId) end

--- Übergibt alle Entities von _oldPlayer an _newPlayer.
-- Probleme mit Ballista/Kanonentürmen und Leadern mit Soldiern!
---@param _oldPlayer number
---@param _newPlayer number
function Logic.ChangeAllEntitiesPlayerID(_oldPlayer, _newPlayer) end

--- Übergibt ein Entity an einen anderen Spieler.
-- Probleme mit Leadern mit Soldiern!
-- Ändert die EntityId!
---@return number newId
---@param _id number
---@param _player number
function Logic.ChangeEntityPlayerID(_id, _player) end

--- Übergibt ein Entity an einen anderen Spieler.
--- Probleme mit Leadern mit Soldiern!
--- Ändert die EntityId!
---@param _id number
---@param _player number
---@return number newId (kann 0 sein, insbesondere bei leadern)
function Logic.ChangeSettlerPlayerID(_id, _player) end

--- iterirert über gebäude und macht ???
function Logic.CheckBuildingPlacement() end

--- Prüft, ob die Entfernung von _id1 und _id2 kleiner ist als _distance (Kreisradius)
-- Keine Laufzeitvorteile zu GetDistance.
---@param _id1 number
---@param _id2 number
---@param _distance number
---@return number flag
function Logic.CheckEntitiesDistance(_id1,_id2,_distance) end

--- !!! Map Editor Funktion; unbrauchbar??
-- Prüft, ob alle Siedler nicht im blocking stehen.
-- Wozu???
function Logic.CheckSettlerPlacement() end

--- Platziert eine Baustelle.
---Ist constructing und AI aktiv, wird sie gebaut.
---kann bei falschen parametern crashen.
---@param _posX number
---@param _posY number
---@param _rotation number
---@param _entityType number
---@param _playerId number
---@return number id id der constructionsite
function Logic.CreateConstructionSite(_posX, _posY, _rotation, _entityType, _playerId) end

--- Erstellt einen Grafikeffekt.
--- funktioniert nicht mit flying effects (arrow/cannonball).
--- fire effects crashen beim speichern/laden.
---@return number id
---@param _effectType number GGL_Effects.XXX  (einige führen zu Abstürzen!)
---@param _posX number
---@param _posY number
---@param _playerId number
function Logic.CreateEffect(_effectType, _posX, _posY, _playerId) end

--- Erstellt ein Entity.
-- Stürzt bei falschen Parametern gerne ab!
---@param _entityType number
---@param _posX number
---@param _posY number
---@param _angle number
---@param _playerId number
---@return number id (0 bei fehler der nicht crasht)
function Logic.CreateEntity(_entityType, _posX, _posY, _angle, _playerId) end

--- funktionslos
function Logic.DEBUG_OutputRegionArray() end

--- funktionslos
function Logic.DEBUG_OutputRegionIteration(_regX, _regY, _accesCategory) end

--- funktionslos
function Logic.DEBUG_TestNearbyEntityIterator() end

--- Baut ein Gebäude unverzüglich aus (ohne Wartezeit bis 100%)
-- ändert die Id!
---@param _id number
function Logic.DEBUG_UpgradeBuilding(_id) end

--- Wertet ein Entity auf. (z.B. PU_LeaderSword1 -> PU_LeaderSword2)
-- TaskList und Bewegung werden übernommen.
-- id ändert sich
---@param _id number
function Logic.DEBUG_UpgradeSettler(_id) end

--- ??? Map Editor Funktion; unbrauchbar
function Logic.DeactivateBuildingPlacementChecks() end

--- Deaktiviert einen Partikel Effekt an Gebäuden (Bsp: Power Plant; Sägewerk; Büchsenmanufaktur)
---@param _id number
---@param _effIndex number (0-3)
function Logic.DeactivateParticleEffect(_id, _effIndex) end

--- funktionslos
function Logic.DebugDumpSettlersToAttract() end

--- Beendet einen Grafikeffekt sofort.
---@param _effectId number
function Logic.DestroyEffect(_effectId) end

--- Entfernt ein Entity aus dem Spiel. (nicht tötet)
---@param _entityId number
function Logic.DestroyEntity(_entityId) end

--- Entfernt einen Leader und seine Soldiers.
---@param _leaderId  number
function Logic.DestroyGroupByLeader(_leaderId) end

--- Verhindert den Kauf von Rohstoffen.
---meines wissens nach nirgendwo geprüft.
---@param _player number
---@param _resType number
function Logic.DisableCanBuyResource(_player, _resType) end

--- Verhindert den Verkauf von Rohstoffen.
---meines wissens nach nirgendwo geprüft.
---@param _player number
---@param _resType number
function Logic.DisableCanSellResource(_player, _resType) end

--- führt einen sofortigen handel durch.
--- ruft keine trigger/callbacks auf, aber ändert die preise.
--- im gegensatz zu anderen handles-funktionen, prüft CanSellResource unf CanBuyResource flags des spielers.
---@param _playerid number
---@param _resTypeSell number
---@param _resTypeBuy number
---@param _amountBuy number
---@return number flag handel erfolgreich
function Logic.DoInstantTransaction(_playerid, _resTypeSell, _resTypeBuy, _amountBuy) end

--- Startet einen normalen Handel an einem marktplatz.
--- keine prüfung, ob genug rohstoffe vorhanden sind.
---@param _buildingID number
---@param _sellResourceType number
---@param _buyResourceType number
---@param _buyResourceAmount number
function Logic.DoTransaction(_buildingID, _sellResourceType, _buyResourceType, _buyResourceAmount) end

--- Erlaubt den Kauf von Rohstoffen.
---meines wissens nach nirgendwo geprüft.
---@param _player number
---@param _resType number
function Logic.EnableCanBuyResource(_player, _resType) end

--- Erlaubt den Verkauf von Rohstoffen.
---meines wissens nach nirgendwo geprüft.
---@param _player number
---@param _resType number
function Logic.EnableCanSellResource(_player, _resType) end

--- Spieler des Entities.
---@return number player
---@param _id number
function Logic.EntityGetPlayer(_id) end

--- return x, y, z Position des Entities.
---@param _id number
---@return number x (0 bei fehler)
---@return number y (0 bei fehler)
---@return number z (0 bei fehler)
function Logic.EntityGetPos(_id) end

--- Dreht _id so, dass es _target ansieht.
---comment
---@param _id number|string
---@param _target number|string
function Logic.EntityLookAt(_id, _target) end


--- Ersetzt alle vorkommen im Gebiet von _oldTerrain (0 -> alle) durch _newTerrain.
--- (auflösung p/100/4, input p/100)
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
---@param _oldTerrain number zu ersetzen (0->alle)
---@param _newTerrain number ersetzen zu
function Logic.ExchangeTerrainType(_minX, _minY, _maxX, _maxY, _oldTerrain, _newTerrain) end

---  Ersetzt alle vorkommen im Gebiet von _oldWater (0 -> alle) durch _newWater.
--- (auflösung p/100/4, input p/100)
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
---@param _oldWater number zu ersetzen (0->alle)
---@param _newWater number ersetzen zu
function Logic.ExchangeWaterType(_minX, _minY, _maxX, _maxY, _oldWater, _newWater) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum ersten Mal ein bestimmter Siedler Typ aus dem Dorfzentrum eines Spielers
--  gekommen ist; wenn noch kein Siedler des Typs existiert, dann wird 0 zurückgegeben.
---@param _player number
---@param _entityType number
---@return number ms
function Logic.FeedbackGetEntityTypeArrivalGameTimeMS(_player, _entityType) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal eine Feedback Meldung über eine Siedler Beschwerde kam und den betreffenden Siedler Typ
---@param _player number
---@param _feedbackState number was ist der Zustand des Siedlers?  siehe Feedback Table Bsp. Feedback.SettlerStateSad
---@param _feedbackReason number warum gab es die Beschwerde? siehe Feedback Table Bsp. Feedback.SettlerReasonTooMuchWork
---@return number ms
---@return number ety
function Logic.FeedbackGetLastGrievanceGameTimeMS(_player, _feedbackState, _feedbackReason) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal eine Feedback Message kam und falls vorhanden die auslösende EntityID.
---@param _player number
---@param _feedbackMsg number siehe Feedback Table Bsp. Feedback.MessageAttack
---@return number ms
---@return number id (kann 0 sein)
function Logic.FeedbackGetLastMessageGameTimeMS(_player, _feedbackMsg) end

--- Gibt die Zeit in Millisekunden zurück, bei der zum letzten Mal die Feedback Meldung, dass ein Rohstoff zur Neige geht, kam.
---@param _player number
---@param _resourceType number
---@return number ms
---@return number posX
---@return number posY
function Logic.FeedbackGetLastRunningOutOfResourceMessageGameTimeMS(_player, _resourceType) end

--- Füllt _t mit den Kosten für den Bau dieses Gebäudes.
---@param _entityType number
---@param _t CostInfo
function Logic.FillBuildingCostsTable(_entityType, _t) end

--- Füllt _t mit den Kosten für den Ausbau eines Gebäudes des Typs _entityType.
-- (Für Ausbau PB_Tower1 -> PB_Tower2: PB_Tower1 übergeben)
---@param _entityType number
---@param _t CostInfo
function Logic.FillBuildingUpgradeCostsTable(_entityType, _t) end

--- Füllt _t mit den Kosten für den aktuellen Hauptmann der UpgradeCategorie.
--- == Logic.FillSoldierCostsTable
---@param _playerId number
---@param _upgradeCategory number
---@param _t CostInfo
function Logic.FillLeaderCostsTable(_playerId, _upgradeCategory, _t) end

--- Füllt _t mit den Kosten für einen Serf.
---@param _t CostInfo
function Logic.FillSerfCostsTable(_t) end

--- ungenutzt, füllt t mit den upgradekosten eines entities.
---@param etyp number
---@param t CostInfo
function Logic.FillSettlerUpgradeCostsTable(etyp, t) end

--- Füllt _t mit den Kosten für den Kauf eines Soldiers dieser Kategorie.
--- (Immer die Kosten für den zum aktuell auszubildenden Leader)
--- == Logic.FillLeaderCostsTable
---@param _player number
---@param _upCat number
---@param _t CostInfo
function Logic.FillSoldierCostsTable(_player, _upCat, _t) end

--- Füllt _t mit den Kosten für das Erforschen der angegebenen Technologie.
---@param _tech number
---@param _t CostInfo
function Logic.FillTechnologyCostsTable(_tech, _t) end

--- Führt eine Aktualisierung des Sichtbereiches durch. (Nur aktueller Spieler?)
-- (Wird ca. mit der Geschwindigkeit eines SimpleJob automatisch ausgeführt)
function Logic.ForceFullExplorationUpdate() end

--- Zwingt einen Arbeiter zum Arbeiten.
--  Effekt auf Motivation!
---selber mechanismus wie überstunden.
---@param _id number
function Logic.ForceWorkerToWork(_id) end

--- Gibt die aktuelle Alarm-Aufladezeit zurück.
-- return: 0-100 (0-> aktivierbar)
---@return number perc 0-100 (0-> aktivierbar, 100 bei fehler)
---@param _player number
function Logic.GetAlarmRechargeTimeInPercent(_player) end

--- Sucht Entities des Angegebenen Spielers.
---@param _player number
---@param _max number (maximal 48)
---@return number amount
---@return number id1 ...
function Logic.GetAllPlayerEntities(_player, _max) end

--- Gibt alle Quest-Ids des Spielers zurück.
---@return number amount
---@return number id1 ...
---@param _player any
function Logic.GetAllQuests(_player) end

--- Gibt alle Tribut-Ids des Spielers zurück.
---@param _player number
---@return number amount
---@return number id1 ...
function Logic.GetAllTributes(_player) end

--- Gibt die mit diesem Gebäude verknüpften "Esser" zurück.
---@param _id number
---@return number amount
---@return number id1 ...
function Logic.GetAttachedEaterToBuilding(_id) end

--- Gibt die mit diesem Gebäude verknüpften Bewohner zurück.
---@param _id number
---@return number amount
---@return number id1 ...
function Logic.GetAttachedResidentsToBuilding(_id) end

--- Gibt die mit diesem Gebäude verknüpften Arbeiter zurück.
---@param _id number
---@return number amount
---@return number id1 ...
function Logic.GetAttachedWorkersToBuilding(_id) end

--- Gibt die anzahl der VC plätze zurück, die ein siedler des typs benötigt.
---@return number
---@param _eTyp number
function Logic.GetAttractionLimitValueByEntityType(_eTyp) end

--- Gibt die durchschnittliche Motivation zurück.
---@return number moti 1-> 100% Motivation (0 bei fehler)
---@param _player number
function Logic.GetAverageMotivation(_player) end

--- Verworfen
---@return number sec
function Logic.GetBattleSerfMaxSeconds() end

--- Verworfen
---@param id number
---@return number sec
function Logic.GetBattleSerfSecondsLeft(id) end

--- Gibt die Segnungskosten für diese Segnung zurück.
-- immer gleich, da jede Segnung genau 5000 Glauben (ResourceType.Faith) benötigt
---@return number cost
---@param _blessCat number
function Logic.GetBlessCostByBlessCategory(_blessCat) end

--- Gibt die segnungskosten zurück.
--- local t = {Logic.GetBlessingCosts()} sollte ein notmales CostInfo table ergeben.
---@return number rty1
---@return number rty2
---@return number rty3
---@return number rty4
---@return number rty5
---@return number rty6
---@return number rty7
---@return number rty8
---@return number rty9
---@return number rty10
---@return number rty11
---@return number rty12
---@return number rty13
---@return number rty14
---@return number rty15
---@return number rty16
---@return number rty17
function Logic.GetBlessingCosts() end

--- Gibt die Schadensklasse des Gebäudes zurück.
--- vermutlich nutzlos (verworfen?).
---@param _id number
---@return number dc MilitaryInfo[3] ?
function Logic.GetBuildingDamageClass(_id) end

--- Gibt die maximale Anzahl an "Essern" für dieses Gebäude zurück.
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingFarmPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an "Essern" für dieses Gebäude zurück.
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingFarmPlaceUsage(_id) end

--- Gibt die maximale Anzahl an Bewohnern für dieses Gebäude zurück.
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingSleepPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an Bewohnern für dieses Gebäude zurück.
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingSleepPlaceUsage(_id) end

--- Gibt den ersten Gebäudetyp der UpgradeCategory zurück.
---@param _upCat number
---@param playerId number
---@return number (0 bei fehler)
function Logic.GetBuildingTypeByUpgradeCategory(_upCat, playerId) end

--- Gibt alle Gebäude in der UpgradeCategory zurück.
-- return: number, type1, type2, ...
---@param _upCat number
---@return number nRet
---@return number type1 ...
function Logic.GetBuildingTypesInUpgradeCategory(_upCat) end

--- Gibt die maximale Anzahl an Arbeitern für dieses Gebäude zurück (laut gebäudetyp, nicht dynamisch gesetzt).
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingWorkPlaceLimit(_id) end

--- Gibt die aktuelle Anzahl an Arbeitern für dieses Gebäude zurück.
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetBuildingWorkPlaceUsage(_id) end

--- Gibt Gebäude zurück, bei denen Spieler, UpgradeCategory und Ort passen.
---@param _upCat number
---@param _player number
---@param _posX number
---@param _posY number
---@param _range number
---@param _amount number
---@return number id1 ...
function Logic.GetBuildingsByUpgradeCategory(_upCat, _player, _posX, _posY, _range, _amount) end

--- Gibt die maximale Tarnungsdauer für ein Entity an. (nur für Ari interessant, sonst 0)
---@param _id number
---@return number
function Logic.GetCamouflageDuration(_id) end

--- Gibt die noch übrige Tarnungsdauer zurück.
---@param _id number
---@return number
function Logic.GetCamouflageTimeLeft(_id) end

--- Gibt den Kanonenbaufortschritt zurück.
---@return number perc 0-100 (100 -> fertig/keine Kanone in Arbeit)
---@param _id number
function Logic.GetCannonProgress(_id) end

--- Gibt den Deflationswert des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@return number def (0 bei fehler)
function Logic.GetCurrentDeflation(_player, _rTyp) end

--- Gibt den Inflationswert des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@return number inf (0 bei fehler)
function Logic.GetCurrentInflation(_player, _rTyp) end

--- Gibt das aktuelle Arbeitermaximum dieses Gebäudes zurück (dynamisch, nicht vom entitytyp).
---@param _id number
---@return number am (o bei fehler)
function Logic.GetCurrentMaxNumWorkersInBuilding(_id) end

--- Gibt den Preis des Rohstoffes zurück.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@return number price (0 bei fehler)
function Logic.GetCurrentPrice(_player, _rTyp) end

--- Gibt die aktuelle TaskList der Entity zurück.
--- funktioniert nur bei settlern
---@return string|nil tlname
---@param _id number
function Logic.GetCurrentTaskList(_id) end

--- Gibt die Spielzeit der Map zurück (in Ticks => 1/10 sec)
---@return number ticks
function Logic.GetCurrentTurn() end

--- Gibt die noch verfügbaren Verteidiger (= Arbeiter) zurück, die hier noch Platz finden.
---@param _id number
---@return number
function Logic.GetDefendersSlotsAvailable(_id) end

--- Gibt die Beziehung zwischen den Spielern zurück.
---@param _player1 number
---@param _player2 number
---@return number state Diplomacy.XXX (0 bei fehler)
function Logic.GetDiplomacyState(_player1, _player2) end

--- Gibt die benötigte Wetterturm-Energie für einen Wetterwechsel zurück.
---@return number sec
function Logic.GetEnergyRequiredForWeatherChange() end

--- Gibt Entities des Typs zurück.
---@param _type number
---@param _max number (maximal 16)
---@return number amount
---@return number id1 ...
function Logic.GetEntities(_type,_max) end

--- Gibt Entities in einem Gebiet zurück.
--- Rückgabe nach Entfernung sortiert.
--- accessCategory wird nur genutzt, wenn entitytype == 0 ist.
---@param _entityType number
---@param _posX number
---@param _posY number
---@param _range number
---@param _amount number (maximal 16)
---@param _accessCategory number|nil bitfield (2->settler, 4->animal, 8->building, 16->resource doodad, 32->static, 64->ornamental), default 10
---@return number amount
---@return number id1 ...
function Logic.GetEntitiesInArea(_entityType, _posX, _posY, _range, _amount, _accessCategory) end

--- Gibt den Rüstungswert des Entities zurück.
---@param _entityId number
---@return number|nil
function Logic.GetEntityArmor(_entityId) end

--- Gibt das Entity (genau ?) an dieser Position zurück.
---@return number id (0 bei fehler)
---@param _posX number
---@param _posY number
function Logic.GetEntityAtPosition(_posX, _posY) end

--- Gibt den Schaden des Entities zurück.
---@param _entityId number
---@return number|nil
function Logic.GetEntityDamage(_entityId) end

--- Gibt die Sichtweite des Entities zurück.
---@param _id number
---@return number
function Logic.GetEntityExplorationRange(_id) end

--- Gibt die aktuellen LP (absolut) eines Entities zurück.
---@param _entityId number
---@return number hp (-1 bei fehler)
function Logic.GetEntityHealth(_entityId) end

--- Gibt die id des Scriptnamens zurück.
---@param _name string
---@return number id
function Logic.GetEntityIDByName(_name) end

--- Gibt die maximalen LP eines Entity zurück.
---@param _entityId number
---@return number mhp (-1 bei fehler)
function Logic.GetEntityMaxHealth(_entityId) end

--- Gibt den Entitynamen zurück (oder nil)
---@param _entityId number
---@return string|nil
function Logic.GetEntityName(_entityId) end

--- Gibt die Rotation in Grad zurück. (meistens... , selten 0)
---@return number ori degrees
---@param _entityId number|string
function Logic.GetEntityOrientation(_entityId) end

--- Gibt die Position des Entities zurück.
-- return: x, y (z nicht, Logic.EntityGetPos nutzen)
---@param _id number
---@return number x (0 bei fehler)
---@return number y (0 bei fehler)
function Logic.GetEntityPosition(_id) end

--- Direkter zugriff auf den Arbeitsspeicher.
-- Sehr vorsichtig verwenden!
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/Scripting-Values-18361.htm
---@param _entityId number
---@param _index number
---@return number value
function Logic.GetEntityScriptingValue(_entityId, _index) end

--- Gibt den EntityTyp zurück.
---@param _entityId number
---@return number ety EntityType.XXX (0 bei fehler)
function Logic.GetEntityType(_entityId) end

--- Gibt den Namen (string) des Entitytyps zurück.
---@param _entityType number
---@return string name
function Logic.GetEntityTypeName(_entityType) end

--- Gibt das Geschütz des Turmes (Kanonen/Ballista/Wohnstätte) zurück.
---@param _towerId number
---@return number id (0 bei fehler)
function Logic.GetFoundationTop(_towerId) end

--- Sind alle Entities Unverwundbar? (Wenn ja, wird auch kein Events.LOGIC_EVENT_ENTITY_HURT_ENTITY getriggert)
-- (Ist während eines briefings akitv)
---@return number flag
function Logic.GetGlobalInvulnerability() end

--- Füllt _t mit den Ids der Helden dieses Players.
---@param _player number
---@param _t number
function Logic.GetHeroes(_player, _t) end

--- Gibt die Erfahrungslevel (Sterne) des Leaders zurück.
---@return number lvls Anzahl Sterne (-1 = keine; 0 = 1 Stern usw.)
---@param _id number
function Logic.GetLeaderExperienceLevel(_id) end

--- Gibt einen Leader zurück, der an diesen Gebäude trainiert.
--- könnte mit etwas pech auch gerade ein solider sein...
---@return number id
---@param _buildingId number
function Logic.GetLeaderTrainingAtBuilding(_buildingId) end

--- Gibt die VC plätze zurück die der leader mit seinen soldiers belegt.
---@return number
---@param _id number
function Logic.GetLeadersGroupAttractionLimitValue(_id) end

--- Gibt die Motivation zurück, ab der ein Siedler verärgert ist.
---@return number moti 1 -> 100%? Normal = 0.7
function Logic.GetLogicPropertiesMotivationThresholdAngry() end

--- Gibt die Motivation zurück, ab der ein Siedler glücklich ist.
---@return number moti 1 -> 100%? Normal = 1.5
function Logic.GetLogicPropertiesMotivationThresholdHappy() end

--- Gibt die Motivation zurück, ab der die Siedler verschwinden.
---@return number moti 1 -> 100%? Normal = 0.25
function Logic.GetLogicPropertiesMotivationThresholdLeave() end

--- Gibt die Motivation zurück, ab der ein Siedler traurig ist.
---@return number moti 1 -> 100%? Normal = 1
function Logic.GetLogicPropertiesMotivationThresholdSad() end

--- Gibt die Motivation zurück, ab der keine neuen Siedler erscheinen.
---@return number moti 1 -> 100%? Normal = 0.3
function Logic.GetLogicPropertiesMotivationThresholdVCLock() end

--- Gibt die maximal verfügbaren Verteidiger (= Arbeiter) zurück, die hier Platz finden.
---@return number|nil
---@param _id number
function Logic.GetMaxDefenders(_id) end

--- Gibt die Maximalzahl der Arbeiter für dieses Gebäudes zurück (vom entitytyp, nicht dynamisch)
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetMaxNumWorkersInBuilding(_id) end

--- Gibt die Maximalzahl der "Esser" für dieses Gebäudes zurück.
--- == Logic.GetBuildingFarmPlaceLimit
---@param id number
---@return number am (0 bei fehler)
function Logic.GetMaxNumberOfEaters(id) end

--- Gibt die Maximalzahl der Bewohner für dieses Gebäudes zurück.
--- == Logic.GetBuildingSleepPlaceLimit
---@param id number
---@return number am (0 bei fehler)
function Logic.GetMaxNumberOfResidents(id) end

--- Gibt den maximalen Glaubenswert des Spielers zurück.
--- wird mit player als parameter benutzt, der wird aber intern nicht verwendet.
---@return number max
function Logic.GetMaximumFaith() end

--- Gibt die maximale möglichen Spieler zurück.
--- immer 8.
---@return number am 8
function Logic.GetMaximumNumberOfPlayer() end

--- Gibt Informationen über das Söldnerangebot zurück und schreibt die Kosten in _t.
---@param _buildingId number
---@param _slot number (1-4)
---@param _t table
---@return number|nil leaderType
---@return number|nil amount
function Logic.GetMercenaryOffer(_buildingId, _slot, _t) end

--- Gibt das passende Söldnerzelt zum Söldnerverkäufer zurück.
---@param _id number|string
---@return number id
function Logic.GetMerchantBuildingId(_id) end

--- Gibt den Motivationseinfluss dieses Gebäudes zurück.
---@param _Id number
---@return number|nil
function Logic.GetMotivationEffect(_Id) end

--- Gibt das nächste Entity vom selben Typ und player zurück. Kann 0 oder dieselbe id zurückgeben.
---@param _id number
---@return number nextId
function Logic.GetNextEntityOfPlayerOfType(_id) end

--- ???
---@return number id
---@param id number
---@param ty number
function Logic.GetNextEntityOfPlayerOfTypeAtBuilding(id, ty) end

--- Gibt den nächsten unbeschäftigten Serf zurück.
---@param _player number
---@param _serf number
---@return number id
function Logic.GetNextIdleSerf(_player, _serf) end

--- Gibt den nächsten Leader zurück.
-- (Typabhängig??? Verwendet für shortcut)
---@param _player number
---@param _leader number
---@return number
function Logic.GetNextLeader(_player, _leader) end

--- Gibt den nächsten Wetterstatus zurück.
---@return number ws 1/2/3 -> Sommer/Regen/Winter
function Logic.GetNextWeatherState() end

--- Gibt den nächsten Arbeiter ohne Essensplatz zurück.
---@param _player number
---@param _worker number
---@return number id
function Logic.GetNextWorkerWithoutFarm(_player, _worker) end

--- ??? Vermutung aufgrund ähnlicher Funktionen
---@param _player number
---@param _worker number
---@return number id
function Logic.GetNextWorkerWithoutFarmOrResidence(_player, _worker) end

--- Gibt den nächsten Arbeiter ohne Schlafplatz zurück.
---@param _player number
---@param _worker number
---@return number id
function Logic.GetNextWorkerWithoutResidence(_player, _worker) end

--- Gibt die aktuelle Anzahl der Siedler (VC-Platze relevant) dieses players zurück.
--- zählt jeden siedler als 1, unabhängig von seinen VC platz kosten.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetNumberOfAttractedSettlers(_player) end

--- Gibt die aktuelle Anzahl der Soldaten eines players zurück.
--- Zählt leader und soldiers.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetNumberOfAttractedSoldiers(_player) end

--- Gibt die aktuelle Anzahl der Arbeiter eines players zurück.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetNumberOfAttractedWorker(_player) end

--- Gibt die noch am HQ kaufbaren Helden zurück. (Original aus im MP)
---@param _playerId number
---@return number amount (0 bei fehler)
function Logic.GetNumberOfBuyableHerosForPlayer(_playerId) end

--- Gibt die Anzahl der Entities dieses Typs zurück.
---@param _eTyp number
---@return number
function Logic.GetNumberOfEntitiesOfType(_eTyp) end

--- Gibt die Anzahl der Entities des Typs und Players zurück.
---@param _player number
---@param _eTyp number
---@return number
function Logic.GetNumberOfEntitiesOfTypeOfPlayer(_player, _eTyp) end

--- Gibt die Anzahl der unbeschäftigten Serfs eines players zurück.
---@param _player number
---@return number
function Logic.GetNumberOfIdleSerfs(_player) end

--- Gibt die Anzahl der Leader eines players zurück.
---@param _player number
---@return number amount (0 bei felher)
function Logic.GetNumberOfLeader(_player) end

--- Gibt die Anzahl der Arbeiter eines Players und Typs zurück.
---@param _player number
---@param _eTyp number
---@return number amount (0 bei felher)
function Logic.GetNumberOfPlayersWorkerOfType(_player, _eTyp) end

--- Gibt die Anzahl der Siedler dieses Spielers zurück.
---@param _player number (kann 0 sein für alle spieler)
---@return number
function Logic.GetNumberOfSettlers(_player) end

--- Gibt die Anzahl der Arbeiter ohne Essensplatz zurück.
---@param _player number
---@return number amount (0 bei felher)
function Logic.GetNumberOfWorkerWithoutEatPlace(_player) end

--- Gibt die Anzahl der Arbeiter ohne Schlafplatz zurück.
---@param _player number
---@return number amount (0 bei felher)
function Logic.GetNumberOfWorkerWithoutSleepPlace(_player) end

--- Gibt die Anzahl der Söldnerangebote zurück.
---@param _buildingId number
---@return number am (0 bei fehler)
function Logic.GetNumerOfMerchantOffers(_buildingId) end

--- Gibt die Aufladung der Überstunden zurück.
---@return number perc 0-100 (0-> aktivierbar, 100 bei fehler)
---@param _id number
function Logic.GetOvertimeRechargeTimeAtBuilding(_id) end

--- Gibt die Maximale Anzahl an VC-Plätzen zurück.
---@param _player number
---@return number limit (0 bei fehler)
function Logic.GetPlayerAttractionLimit(_player) end

--- Gibt die Aktuelle VC-Belegung zurück.
---@param _player number
---@return number usage (0 bei fehler)
function Logic.GetPlayerAttractionUsage(_player) end

--- Gibt die aktuell genutzten Essensplätze zurück.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetPlayerEatPlaceUsage(_player) end

--- Gibt die maximalen Essensplätze zurück.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetPlayerEatPlacesLimit(_player) end

--- Gibt Entities nach player und Typ zurück.
---@param _playerId number
---@param _entityType number
---@param _amount number (maximal 48)
---@return number amount
---@return number id1 ...
function Logic.GetPlayerEntities(_playerId, _entityType, _amount) end

--- Gibt Entities nach player, Typ und Gebiet zurück.
-- Sortiert nach Entfernung zur Mitte.
---@param _playerId number
---@param _entityType number
---@param _posX number
---@param _posY number
---@param _range number
---@param _amount number (maximal 16)
---@param accessCategory number|nil flags 2->Siedler, 4->Tiere, 8->Gebäude, 16->Statics, 32->Ornamental, default 10
---@return number amount
---@return number id1 ...
function Logic.GetPlayerEntitiesInArea(_playerId, _entityType, _posX, _posY, _range, _amount, accessCategory) end

--- == Logic.GetNumberOfAttractedWorker
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetPlayerNumberOfPaidWorker(_player) end

--- Gibt die zu erwartenden Steuern zurück. (ohne Leaderkosten)
---@param _player number
---@return number taxes (0 bei fehler)
function Logic.GetPlayerPaydayCost(_player) end

--- Gibt die Zeit zwischen zwei Zahltagen zurück. (1/100 ticks).
---@param _player number
---@return number time (0 bei fehler)
function Logic.GetPlayerPaydayFrequency(_player) end

--- Gibt den zu erwartenden Sold für die Leader zurück.
---@param _player number
---@return number pay (0 bei fehler)
function Logic.GetPlayerPaydayLeaderCosts(_player) end

--- Gibt die Zeit bis zum nächsten Zahltag zurück. (1/100 ticks).
---@param _player number
---@return number time (0 bei fehler)
function Logic.GetPlayerPaydayTimeLeft(_player) end

--- Muss der Spieler seine Hauptmänner bezahlen?
---@param _player number
---@return number flag (0 bei fehler)
function Logic.GetPlayerPaysLeaderFlag(_player) end

--- Gibt die aktuellen Steuern pro Arbeiter zurück.
---@param _player number
---@return number tax (0 bei fehler)
function Logic.GetPlayerRegularTaxPerWorker(_player) end

--- Gibt die aktuell genutzten Schlafplätze zurück.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetPlayerSleepPlaceUsage(_player) end

--- Gibt die maximalen Schlafplätze zurück.
---@param _player number
---@return number amount (0 bei fehler)
function Logic.GetPlayerSleepPlacesLimit(_player) end

--- Gibt die sondersteuern zurück (GUI.LevyTax).
---@param _player number
---@return number tax (0 bei fehler)
function Logic.GetPlayerTaxIncome(_player) end

--- Gibt die aktuell vorhandene Rohstoffmenge zurück. Unterschied zwischen Roh und Veredelt.
---@param _player number
---@param _resTyp number ResourceType.XXX
---@return number am (0 bei fehler)
function Logic.GetPlayersGlobalResource(_player, _resTyp) end

--- Gibt eine pseudozufällige Zahl zwischen 0 und _max aus.
---@param _max number
---@return number
function Logic.GetRandom(_max) end

--- Gibt die maximale Zeit einer Aura dieses Entitys zurück.
---@param _id number
---@return number
function Logic.GetRangedEffectDuration(_id) end

--- Gibt zurück, wie lange die Aura des Entitys noch aktiv ist.
---@param _id number
---@return number
function Logic.GetRangedEffectTimeLeft(_id) end

--- Gibt zu einem Rohstofftyp den unveredelten Rohstofftyp zurück.
---@param _resTyp number
---@return number rawType
function Logic.GetRawResourceType(_resTyp) end

--- Gibt die Zeit aus, in der das Gebäude noch ausgebaut wird.
-- Wird es gerade nicht ausgebaut, wird die Maximale Zeit zurückgegeben (Logic.GetTotalUpgradeTimeForBuilding).
---@param _id number
---@return number time (0 bei fehler)
function Logic.GetRemainingUpgradeTimeForBuilding(_id) end

---anzahl der resourcen im schacht unter dem gebäude id
---@param _id number
---@return number am (0 bei fehler)
function Logic.GetResourceAmountBelowMine(_id) end

--- Gibt zurück, wie viele Rohstoffe noch in einem Schacht/Haufen sind.
---@return number am
---@param _id number
function Logic.GetResourceDoodadGoodAmount(_id) end

--- Gibt zurück, was für Rohstoffe in einem Schacht/Haufen sind.
---@param _id number
---@return number rty
function Logic.GetResourceDoodadGoodType(_id) end

--- Gibt den Sektor zurück, in dem sich das Entity befindet.
-- 0 -> Blocking
-- gleicher Sektor -> gibt einen Weg zwischen beiden.
-- unterschiedlicher Sektor -> kein Weg (Zugbrücken werden anscheinend nicht beachtet...)
---@param _entityId number
---@return number sectorId
function Logic.GetSector(_entityId) end

--- Berechnet die Kosten für den Handel.
---@param _player number
---@param _selltype number
---@param _buyType number
---@param _buyAmount number
---@return number sellAmount
function Logic.GetSellAmount(_player, _selltype, _buyType, _buyAmount) end

--- Gibt den aktuellen Leadertyp des Players zurück.
---@param _upCat number
---@param _player number
---@return number
function Logic.GetSettlerTypeByUpgradeCategory(_upCat, _player) end

--- Gibt die Siedlertypen in dieser Upgradecategory zurück.
---@param _upcat number
---@return number amount
---@return number id1 ...
function Logic.GetSettlerTypesInUpgradeCategory(_upcat) end

--- Gibt zurück, vie viel Platz das Entity im VC belegt.
---@return number
---@param _id number
function Logic.GetSettlersAttractionLimitValue(_id) end

--- Gibt das Gebäude mit dem Essensplatz des Arbeiters zurück.
---@param _id number
---@return number id (oder 0)
function Logic.GetSettlersFarm(_id) end

--- Gibt die Motivation des Siedlers zurück.
---@return number moti Wert zwischen 0.0 und 3.0 (0 bei fehler)
---@param _id number
function Logic.GetSettlersMotivation(_id) end

--- Gibt das Gebäude mit dem Schlafplatz des Arbeiters zurück.
---@param _id number
---@return number id (oder 0)
function Logic.GetSettlersResidence(_id) end

--- Gibt das Arbeitsgebäude des Arbeiters zurück.
---@param _id number
---@return number id (oder 0)
function Logic.GetSettlersWorkBuilding(_id) end

--- Gibt alle Soldiers des Leaders zurück.
---@param _id number
---@return number amount
---@return number id1 ...
function Logic.GetSoldiersAttachedToLeader(_id) end

--- Gibt Typ und Menge der Rohstoffe zurück, die ein Dieb trägt.
-- return: resTyp, amount
---@return number resType (0 bei fehler)
---@return number amount (0 bei fehler)
---@param _id number
function Logic.GetStolenResourceInfo(_id) end

--- Gibt die Ssondersteuermenge eines Arbeiters zurück (GUI.LevyTax).
--- Logic.SetPlayerTaxAmountFactor ist nicht mit einberechnet.
---@return number tax
function Logic.GetTaxAmountOfWorker() end

--- Gibt die Höhe der Steuern zurück.
---@return number tl (0-4)
---@param _player number (crash wenn kein spieler)
function Logic.GetTaxLevel(_player) end

--- Gibt Informationen über den Technologiehandel zurück und schreibt dessen Kosten in _t.
---@param _buildingId number
---@param _index number (1-4)
---@param _t table
---@return number|nil techId
---@return number|nil amount
function Logic.GetTechOffer(_buildingId, _index, _t) end

--- Gibt an, wie weit die Technoloie erforscht ist.
---@param _player number
---@param _techTyp number
---@return number prog (0-100)
function Logic.GetTechnologyProgress(_player, _techTyp) end

--- Gibt zurück, welche Technologie hier gerade erforscht wird.
---@param _id number
---@return number techid (0 bei fehler, aber vermutlich auch bei keiner forschung)
function Logic.GetTechnologyResearchedAtBuilding(_id) end

--- Gibt den Technologiestatus zurück.
--- siehe s5CommunityLb/tabes/TechState.lua.
---@param _player number
---@param _techTyp number
function Logic.GetTechnologyState(_player, _techTyp) end

--- Gibt die Zeit seit der die Map gestartet wurde in Sekunden zurück.
---@return number sec
function Logic.GetTime() end

--- Gibt die Zeit seit der die Map gestartet wurde in Millisekunden zurück.
---@return number ms
function Logic.GetTimeMs() end

--- Gibt die Zeit bis zum nächsten Wetterwechsel zurück (in Sekunden).
---@return number sec
function Logic.GetTimeToNextWeatherPeriod() end

--- Gibt die Zeit zurück, die ein Gebäude für den Ausbau benötigt.
---@param _id number
---@return number time (0 bei fehler)
function Logic.GetTotalUpgradeTimeForBuilding(_id) end

--- Gibt den Handelsfortschritt zurück.
---@return number perc 0-100 (100 -> gerade kein Handel) (0 bei fehler)
---@param _id number
function Logic.GetTransactionProgress(_id) end

--- Gibt die Tributkosten zurück.
--- local costinfo = {Logic.GetTributeCosts(...)}; sollte ein brauchbares CostInfo table sein.
---@param _player number
---@param _tribId number
---@return number rty1
---@return number rty2
---@return number rty3
---@return number rty4
---@return number rty5
---@return number rty6
---@return number rty7
---@return number rty8
---@return number rty9
---@return number rty10
---@return number rty11
---@return number rty12
---@return number rty13
---@return number rty14
---@return number rty15
---@return number rty16
---@return number rty17
function Logic.GetTributeCosts(_player, _tribId) end

--- Gibt die UpgradeCategory zurück, in der das Gebäude ist.
---@param _eTyp number
---@return number (0 bei felher)
function Logic.GetUpgradeCategoryByBuildingType(_eTyp) end

--- Gibt zurück, wie weit das Gebäude ausgebaut wurde (Ausbaustufe).
---@return number ups 0->nicht ausgebaut, aber auch bei fehler
---@param _id number
function Logic.GetUpgradeLevelForBuilding(_id) end

--- Gibt den Aktuellen Wetterstatus zurück.
---@return number ws 1/2/3 -> Sommer/Regen/Winter
function Logic.GetWeatherState() end

--- Gibt den Arbeitertyp eines Gebäudes zurück.
---@param _id number
---@return number ty (0 bei fehler)
function Logic.GetWorkerTypeByBuilding(_id) end

--- Fügt einen Punkt zu einer mit Logic.GroupPatrol begonnen Patroullie hinzu.  
--- Reihenfolge bei Punkten S (aktuelle pos bei Logic.GroupPatrol), P (ziel von Logic.GroupPatrol) und AP (Logic.GroupAddPatrolPoint):  
--- S -> P -> AP -> P -> S -> P -> AP...  
--- @param _id number leader id
--- @param _positionX number
--- @param _positionY number
function Logic.GroupAddPatrolPoint(_id, _positionX, _positionY) end

--- Befiehlt _id (und seinen Soldiers) _target anzugreifen.
---@param _id number
---@param _target number
function Logic.GroupAttack(_id, _target) end

--- Befiehlt _id (und seinen Soldiern) sich zur angegebenen Position zu bewegen und unterwegs alles anzugreifen.
-- ! Nach einem Kampf auf dem Weg dorthin bleiben die Entities teilweise einfach stehen.
-- _rot: Rotation am Ziel ???, -1->Automatisch (Funktioniert mit _rot==nil)
---@param _id number
---@param _posX number
---@param _posY number
---@param _rot number
function Logic.GroupAttackMove(_id, _posX, _posY, _rot) end

--- _id bleibt stehen und verteidigt sich (Standardverhalten von Leadern).
---@param _id number
function Logic.GroupDefend(_id) end

--- _id folgt und verteidigt _target
-- ! Bleibt teilweise einfach stehen, insbesondere wenn _id schneller ist als _target
---@param _id number
---@param _target number
function Logic.GroupGuard(_id, _target) end

--- Beginnt eine Patroullie für eine Militäreinheit zwischen der Aktuellen und der Zielposition.  
--- Mit Logic.GroupAddPatrolPoint können weitere Punkte hinzugefügt werden.  
--- @param _id number leader id
--- @param _positionX number
--- @param _positionY number
function Logic.GroupPatrol(_id, _positionX, _positionY) end

--- _id bleibt stehen und bewegt sich auch nicht, wenn es angegriffen wird.
-- (AutoAttack-Range von Fernkämpfern erhöht)
---@param _id number
function Logic.GroupStand(_id) end

--- Heilt ein Entity. LP-Maximum wird beachtet.
---@param _entityId number
---@param _heal number
function Logic.HealEntity(_entityId, _heal) end

--- Verworfen
---==Logic.HeroSetActionPoints
---@param id number
---@param ap number
function Logic.HeroChangeActionPoints(id, ap) end

--- Gibt die maximale Auflafezeit der Fähigkeit zurück.
---@param _id number
---@param _ability number
---@return number sec
function Logic.HeroGetAbilityRechargeTime(_id, _ability) end

--- Gibt die aktuelle Aufladezeit der Fähigkeit zurück.
-- Bei Logic.HeroGetAbilityRechargeTime ist die Fähigkeit komplett aufgeladen.
---@param _id number
---@param _ability number
---@return number sec
function Logic.HeroGetAbiltityChargeSeconds(_id, _ability) end

--- Verworfen
---@param id number
---@return number ap
function Logic.HeroGetActionPointCostForAbility(id) end

--- Verworfen
---@param id number
---@return number ap
function Logic.HeroGetActionPoints(id) end

--- Verworfen
---@param id number
---@return number ap
function Logic.HeroGetMaxActionPoints(id) end

--- Gibt zurück, ob der Held die Fähigkeit besitzt.
---@param _id number
---@param _ability number
---@return number flag
function Logic.HeroIsAbilitySupported(_id, _ability) end


--- setzt die aktuelle Aufladezeit der Heldenfähigkeit.
-- Bei Logic.HeroGetAbilityRechargeTime ist die Fähigkeit komplett aufgeladen.
---@param _id number
---@param _ability number
---@param _value number
function Logic.HeroSetAbilityChargeSeconds(_id, _ability, _value) end

--- Verworfen
---==Logic.HeroChangeActionPoints
---@param id number
---@param ap number
function Logic.HeroSetActionPoints(id, ap) end

--- Verletzt ein Entity. Es kann dabei sterben.
-- Wird ein negativer Wert übergeben, wird das Entity geheilt.
-- (Bei nicht-Gebäuden wird dabei das LP-Maximum ignoriert)
---@param _entityId number
---@param _hurt number
function Logic.HurtEntity(_entityId, _hurt) end

--- Gibt zurück, ob das Gebäude im Alarm-Modus ist.
--- (kann nur am HQ gesetzt werden, abfrage sollte aber bei allen entities funktionieren).
---@param _building number
---@return boolean active
function Logic.IsAlarmModeActive(_building) end

--- Gibt zurück, ob für ausgebildete Leader automatisch Soldiers gekauft werden.
---@param _building number
---@return number flag (0 bei fehler)
function Logic.IsAutoFillActive(_building) end

--- Gibt zurück, ob das Entity ein Gebäude ist.
---@param _entityId number
---@return number flag
function Logic.IsBuilding(_entityId) end

--- IsActive flag des entities (?)
---@param _id number
---@return number|nil flag
function Logic.IsBuildingActive(_id) end

--- Gibt zurück, ob das gebäude fertig gebaut ist.
---@param _buildingId number
---@return number|nil flag
function Logic.IsConstructionComplete(_buildingId) end

--- Gibt zurück, ob das Gebäude im Alarmmodus verteidigt werden kann.
---@param _id number
---@return boolean|nil
function Logic.IsDefendableBuilding(_id) end

--- Gibt zurück, ob das Entity lebt.
--- (HP > 0)
---@param _id number|string
---@return boolean
function Logic.IsEntityAlive(_id) end

--- Gibt zurück, ob das Entity entfernt wurde (nicht mehr existiert)
--- konvertiert erst zu einer zahl, d.H. wenn der entityname "1234" ist, wird das entity mit der id 1234 geprüft.
---@param _id number|string
---@return boolean
function Logic.IsEntityDestroyed(_id) end

--- Gibt zurück, ob das Entity in der angegebenen Kategorie ist.
---@param _id number
---@param _entCat number
---@return number flag
function Logic.IsEntityInCategory(_id, _entCat) end

--- Gibt zurück, ob sich das Entity bewegt. (Unabhängig von der TaskList).
---@param _entityId number
---@return boolean
function Logic.IsEntityMoving(_entityId) end

--- Gibt zurück, ob der Entitytyp in der angegebenen Kategorie ist.
---@param _etyp number
---@param _eCat number
---@return number flag
function Logic.IsEntityTypeInCategory(_etyp, _eCat) end

--- Gibt zurück, ob das Entity ein Held ist.
---@param _entityId number
---@return number flag
function Logic.IsHero(_entityId) end

--- Gibt zurück, ob das Entity ein Leader ist.
---@param _entityId number
---@return number flag
function Logic.IsLeader(_entityId) end

--- Gibt zurück, ob die Position sichtbar ist.
-- (Bei KI-Spielern muss vorher mit Logic.ActivateUpdateOfExplorationForAllPlayers() der Sichtbereich erst aktiviert werden.)
---@param _player number
---@param _posX number
---@param _posY number
---@return number flag
function Logic.IsMapPositionExplored(_player, _posX, _posY) end

--- Gibt zurück, ob dieses Entity ein Söldnerquartier ist.
---@param _id number
---@return boolean
function Logic.IsMercenaryBuilding(_id) end

--- Gibt zurück, ob das Söldnerquartier für diesen Spieler geöffnet ist.
---@param _id number
---@param _player number
---@return boolean
function Logic.IsMerchantOpened(_id, _player) end

--- Gibt zurück, ob Überstunden an diesem Gebäude aktiv sind.
---@param _id number
---@return number flag (0 bei fehler)
function Logic.IsOvertimeActiveAtBuilding(_id) end

--- Gibt zurück, ob dieser Spieler neue Seiedler bekommen kann.
--- Tested VC Plätze, sowie Motivation. Immer 1 für AI spieler.
---@param _player number
---@return number flag (0 bei fehler)
function Logic.IsPlayerAttractionSlotAvailable(_player) end

--- Gibt zurück, ob Entities im Gebiet sind.
--- maximale reichweite ~6400, ab ~3200 falsch negativ möglich?
---@param _player number
---@param _posX number
---@param _posY number
---@param _range number
---@param _accessCategory number|nil bitfield (2->settler, 4->animal, 8->building, 16->resource doodad, 32->static, 64->ornamental), default 10
---@return number flag
function Logic.IsPlayerEntityInArea(_player, _posX, _posY, _range, _accessCategory) end

--- Prüft, ob Entities im Gebiet sind.
--- _catName: EntityCategory als String ("Hero" anstatt EntityCategories.Hero)
--- maximale reichweite ~6400, ab ~3200 falsch negativ möglich?
--- in jedem fall, werden nur siedler und gebäude abgefragt (über AccessCategory).
---@param _player number
---@param _posX number
---@param _posY number
---@param _range number
---@param _catName1 string
---@param ... string|nil additional categories, max 5 (with cat1)
---@return number flag
function Logic.IsPlayerEntityOfCategoryInArea(_player, _posX, _posY, _range, _catName1, _catName2, ...) end

--- Gibt zurück, ob das Entity ein Serf ist.
---@param _entityId number
---@return number flag
function Logic.IsSerf(_entityId) end

--- Gibt zurück, ob das Entity ein Siedler (Arbeiter/Militär) ist.
---@param _entityId number
---@return number flag
function Logic.IsSettler(_entityId) end

--- Gibt zurück, ob das Entity in einer Farm/Taverne ist.
---@param _id number
---@return number flag
function Logic.IsSettlerAtFarm(_id) end

--- Gibt zurück, ob das Entity in einem Wohnhaus ist.
---@param _id number
---@return number flag
function Logic.IsSettlerAtResidence(_id) end

--- Gibt zurück, ob das Entity in einer Arbeitsstätte ist.
---@param _id number
---@return number flag
function Logic.IsSettlerAtWork(_id) end

--- Gibt zurück, ob das Gebäude ein Technologiehändler ist.
---@return boolean
---@param _id number
function Logic.IsTechTraderBuilding(_id) end

--- Gibt zurück, ob eine Technologie erforscht ist.
---@param _player number
---@param _techtTyp number
---@return number flag
function Logic.IsTechnologyResearched(_player, _techtTyp) end

--- Gibt zurück, ob sich das Wetter gerade ändert.
---@return number flag
function Logic.IsWeatherChangeActive() end

--- Gibt zurück, ob das Entity ein Arbeiter ist.
---@param _id number
---@return number flag
function Logic.IsWorker(_id) end

--- Ändert die Formation der Soldiers
-- _formation:	1-> Gruppe hinten
-- 				2-> Quadrat
-- 				3-> ?
-- 				4-> Doppelreihe vorne
-- 				5-> Kreis
-- 				6-> Pfeil vorne
-- 				7-> Reihe vorne
---@param _id number
---@param _formation number
function Logic.LeaderChangeFormationType(_id, _formation) end

--- Gibt die Kaserne/Schießstand/Stall zurück, an dem der Leader gerade ausgibildet wird. (oder 0)
--- (sollte auch das gebäude zurückgeben, aus dem ein soldier gerade nach rekrutierung rausläuft).
---@return number id
---@param _id number
function Logic.LeaderGetBarrack(_id) end

--- Gibt den aktuellen Befehl des Leaders zurück.
-- 	0-> Angriff
-- 	3-> Verteidigen (normal stehen)
-- 	4-> Patroullieren
-- 	5-> Angriffsbewegung
-- 	6-> Bewachen
-- 	7-> Stehen bleiben
-- 	8-> Bewegen
--  10->Heldenfähigkeit
---@param _id number (0-8)
---@return number cmd
function Logic.LeaderGetCurrentCommand(_id) end

--- Gibt die maximale Anzahl an Soldiers für diesen Leader zurück.
---@param _id number
---@return number
function Logic.LeaderGetMaxNumberOfSoldiers(_id) end

--- Gibt das nächste passende Militärgebäude in Soldatenkaufreichweite zurück. (oder 0)
---@return number id (kann 0 sein)
---@param _id number
function Logic.LeaderGetNearbyBarracks(_id) end

--- Gibt die aktuelle Anzahl an Soldiern zurück.
---@param _id number
---@return number nsol
function Logic.LeaderGetNumberOfSoldiers(_id) end

--- Verbindet einen existierenden Soldier mit diesem Leader.
---keine ahnung welcher soldier verknüpft wird, aber vermutlic der nächste.
---@param _id number
function Logic.LeaderGetOneSoldier(_id) end

--- Gibt die UpgradeCategory der Soldiers dieses Leaders zurück.
---@param _id number
---@return number
function Logic.LeaderGetSoldierUpgradeCategory(_id) end

--- Gibt den EntityType der Soldiers dieses Leaders zurück.
---@param _id number
---@return number
function Logic.LeaderGetSoldiersType(_id) end

---entitytype zu ucat, funktioniert auch bei nicht soldiern?
---@return number
---@param _player number
---@param _SolETyp number
function Logic.LeaderGetUpgradeCategoryFromSoldierType(_player, _SolETyp) end

--- Gibt den Sold für diesen Leader zurück.
---@param _id number
---@return number
function Logic.LeaderGetUpkeepCost(_id) end

--- Entlässt einen Soldier
---@param _id number
function Logic.LeaderReleaseOneSoldier(_id) end

--- Gebiet bewachen?????
---@param _id number
---@param _posX number
---@param _posY number
---@param _range number
function Logic.LeaderSetTerritory(_id, _posX, _posY, _range) end

--- Blitzeinschlag an Position; gleichbedeutend mit Lighning Effekt?
--- CreateEffect benutztn
---@param _positionX number
---@param _positionY number
function Logic.Lightning(_positionX, _positionY) end

--- Bewegt ein Entity zu einer Position. Die TaskList wird nicht geändert!
-- (Auch Steine lassen sich damit bewegen)
-- Vorsicht: Siedler werden manchmal gelöscht, wenn sie über Gebiet mit Blocking kommen! 
---@param _entityId number
---@param _posX number
---@param _posY number
function Logic.MoveEntity(_entityId, _posX, _posY) end

--- Gibt einen Bewegungsbefehl.
---@param _id number
---@param _posX number
---@param _posY number
function Logic.MoveSettler(_id, _posX, _posY) end

--- Gibt den Status des Spielers zurück.
-- 	0-> nicht im Spiel
-- 	1-> Spielt
-- 	2-> Gewonnen
-- 	3-> Verloren
-- 	4-> Verlassen (Verbundungsabbruch MP)
---@param _player number
---@return number status
function Logic.PlayerGetGameState(_player) end

--- Gibt den Zeitpunkt zurück, an dem der Satus des Spielers geändert wurde. (oder 0)
-- (in 1/10 sec)
---@param _player number
---@return number ticks
function Logic.PlayerGetGameStateChangedTime(_player) end

--- Gibt zurück, ob der Player das Spiel verlassen hat.
---@param _player number
---@return number flag
function Logic.PlayerGetLeftGameFlag(_player) end

--- Verteilt alle Arbeiter sofort neu auf die Gebäude.
--- Nützlich, wenn arbeiter per script erstellt werden, ansonsten funktioniert es automatisch.
---@param _player number
function Logic.PlayerReAttachAllWorker(_player) end

--- Setzt den Player auf Spiel verlassen.
---@param _player number
function Logic.PlayerSetGameStateToLeft(_player) end

--- Setzt den Spieler auf verloren.
---@param _player number
function Logic.PlayerSetGameStateToLost(_player) end

--- Setzt den Spieler auf spielend.
---@param _player number
function Logic.PlayerSetGameStateToPlaying(_player) end

--- Setzt den Spieler auf gewonnen.
---@param _player number
function Logic.PlayerSetGameStateToWon(_player) end

--- Setzt, ob der Spieler menschlich ist.
---@param _player number
---@param _flag number
function Logic.PlayerSetIsHumanFlag(_player, _flag) end

--- Setzt die Spielerfarbe für die Statistiken. (MP)
---@param _player number
---@param _r number (0-255)
---@param _g number (0-255)
---@param _b number (0-255)
function Logic.PlayerSetPlayerColor(_player, _r, _g, _b) end

--- Entfernt den Distanz-Check zwischen diesen Entities.
---@param _id1 number
---@param _id2 number
function Logic.RemoveEntityToEntityDistanceCheck(_id1, _id2) end

--- Entfernt den Distanz-Check dieses Entities zu allen anderen Entities.
---@param _id1 number
function Logic.RemoveEntityToEntityDistanceCheckForMainID(_id1) end

--- Entfernt die Quest komplett aus dem Auftragsbuch.
---@param _player number
---@param _questId number
---@param _info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.RemoveQuest(_player, _questId, _info) end

--- Entfernt den Tribut aus dem Tributmenü.
---@param _player number
---@param _tribId number
function Logic.RemoveTribute(_player, _tribId) end

--- Hebt SuspendAllEntities auf.
function Logic.ResumeAllEntities() end

--- Hebt SuspendEntity auf.
---@param _id number
function Logic.ResumeEntity(_id) end

--- Lässt das Entity sich zu der angegebenen Gradzahl drehen. Entity muss sich bewegen können.
---@param _id number
---@param _orientation number grad
function Logic.RotateEntity(_id, _orientation) end

--- Gibt zurück, ob in Darios Falkenreichweite Gegner sind. (Für Dario-Button-Blinken)
-- (Funktioniert nur mit dario)
---@return number flag
---@param _id number
function Logic.SentinelGetUrgency(_id) end

--- Setzt das Territoriumszentrum, indem sich ein Tier bewegt
-- _id
-- _positionX
-- _positionY
function Logic.SetAnimalTerritoryCenter(_id, _positionX, _positionY) end

--- Setzt (für kurze Zeit!) die Animation eines Gebäudes.
---@param _id number 
---@param _index number 0-3
---@param _animation string
function Logic.SetBuildingSubAnim(_id, _index, _animation) end

--- Setzt den Deflationswert des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@param _def number
function Logic.SetCurrentDeflation(_player, _rTyp, _def) end

--- Setzt den Inflationswert des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@param _inf number
function Logic.SetCurrentInflation(_player, _rTyp, _inf) end

--- Setzt die maximalen Arbeiter des Gebäudes.
--- nicht syncronisiert (GUI benutzen).
--- nicht aus der GameCallback_OnBuildingConstructionComplete oder ähnlichem nutzen,
--- führt zu doppelten einträgen in shok_GGL_CPlayerAttractionHandler.WorkBuildingsArray -> crash on destroy.
--- überzälige arbeiter werden detached, freie arbeitsplätze über die üblichen mechanismen besetzt.
--- keine UI, aber die Logic funktioniert.
---@param _id number
---@param _maxWorker number
function Logic.SetCurrentMaxNumWorkersInBuilding(_id, _maxWorker) end

--- Setzt den Preis des Rohstoffes.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/DeflationInflation-19435.htm
---@param _player number
---@param _rTyp number
---@param _pri number
function Logic.SetCurrentPrice(_player, _rTyp, _pri) end

--- Setzt den DiplomatieStatus zwischen diesen Playern.
---@param _player1 number
---@param _player2 number
---@param _diplSat number Diplomacy.XXX
function Logic.SetDiplomacyState(_player1, _player2, _diplSat) end

--- Setzt die Länge des Wetterwechsels für einen Player???
---wetterturm?
---@param _player number
---@param _dur number
function Logic.SetDurationOfWeatherChange(_player, _dur) end

--- Setzt, ob das Entity sein Standardverhalten verwendet.
--- setzt die StandardBehaviorActive bool im entity, nicht sicher, ob das iregndwas macht.
---@param _id number
---@param _flag number
function Logic.SetEntityDefaultBehaviorFlag(_id, _flag) end

--- Setzt die Sichtweite eines Entities. Funktioniert nicht bei Settlers und Buildings.
--- (hauptsächlich genutzt für XD_ScriptEntity).
---@param _entityId number
---@param _range number
function Logic.SetEntityExplorationRange(_entityId, _range) end

--- Macht ein Entity (un)verwundbar.
-- Wenn es unverwundbar ist, wird zwar der Entity_Hurt_Entity-Trigger ausgelöst, das Entity kann aber keine LP verlieren.
---@param _id number
---@param _flag number
function Logic.SetEntityInvulnerabilityFlag(_id, _flag) end

--- Setzt den Scriptnamen eines Entity. (nil löscht den Scriptnamen)
---@param _entityId number
---@param _entityName string|nil
function Logic.SetEntityName(_entityId, _entityName) end

--- Direkter zugriff auf den Arbeitsspeicher.
-- http://www.siedler-maps.de/forum/Siedler-DEdK-Script-Forum/Scripting-Values-18361.htm
---@param _entityId number
---@param _index number
---@param _value number
function Logic.SetEntityScriptingValue(_entityId, _index, _value) end

--- Setzt die Selektierbarkeit eines Entity. (Nur bei Entities des Spielers)
---@param _entityId number
---@param _flag number
function Logic.SetEntitySelectableFlag(_entityId, _flag) end

--- Steuerbarkeit ändern?? funktionslos
---@param _id number
---@param _flag number
function Logic.SetEntityUserControlFlag(_id, _flag) end

--- Setzt die Globale Unverwundbarkeit. Wenn an, wird kein Entity_Hurt_Entity-Trigger mehr aufgerufen.
---@param _flag number
function Logic.SetGlobalInvulnerability(_flag) end

--- Setzt Modell und Animation die genutzt werden. 
-- (Settler Models werden falsch angezeigt, die Animation kann nicht gesetzt werden!)
---die meisten animationen sind nicht im animset, und können nicht extra gesetzt werden.
---@param _id number
---@param _modelset number
---@param _animset number|nil
function Logic.SetModelAndAnimSet(_id,_modelset,_animset) end

--- Setzt die Anzahl im HQ kaufbarer Helden. (MP)
---@param _player number
---@param _num number
function Logic.SetNumberOfBuyableHerosForPlayer(_player, _num) end

--- Setzt das NPC-Ausrufezeichen über diesem Entity.
---@param _id number
---@param _flag number
function Logic.SetOnScreenInformation(_id, _flag) end

--- Setzt den Namen des Players (im Diplomatiemenü).
---@param _player number
---@param _name string StringTableText-Key
function Logic.SetPlayerName(_player, _name) end

--- Setzt, ob der Spieler seine Leader bezahlen muss.
---@param _player number
---@param _flag number
function Logic.SetPlayerPaysLeaderFlag(_player, _flag) end

--- Setzt den Namen des Players (im Diplomatiemenü).
---@param _player number
---@param _name string Name des Spielers (nil löscht aus Diplomatiemenü)
function Logic.SetPlayerRawName(_player, _name) end

---setzt einen faktor für sondersteuern (GUI.LevyTax).
--- scheint keinen einfluss auf die verlorene motivation zu haben.
---@param player number
---@param factor number
function Logic.SetPlayerTaxAmountFactor(player, factor) end

--- Setzt die Questposition.
---@param _player number
---@param _questId number
---@param _posX number
---@param _posY number
---@param _info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.SetQuestPosition(_player, _questId, _posX, _posY, _info) end

--- Setzt den Questtyp: MAINQUEST/SUBQUEST.._..OPEN/CLOSED
---@param _player number
---@param _questId number
---@param _qTyp number Der Quest-Typ, welcher das Symbol des Quests im Auftragsmenü verändert. Möglichkeiten: MAINQUEST_OPEN, MAINQUEST_CLOSED, SUBQUEST_OPEN, SUBQUEST_CLOSED
---@param _info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.SetQuestType(_player, _questId, _qTyp, _info) end

--- Setzt die Menge abbaubarer Rohstoffe des Schachts/Haufens.
---setzt aktuelles und maximum.
---@param _id number
---@param _amount number
function Logic.SetResourceDoodadGoodAmount(_id, _amount) end

--- Lässt _player1 sehen, was _player2 sieht. (an/aus schalten)
---@param _player1 number
---@param _player2 number
---@param _flag number
function Logic.SetShareExplorationWithPlayerFlag(_player1, _player2, _flag) end

--- Setzt den Geschwindigkeitsfaktor eines Entity (normal 1.0).
---@param _id number
---@param _factor number
function Logic.SetSpeedFactor(_id, _factor) end

--- Setzt die subquest flag. kann mit @customcolor:id im quest text getested werden.
--- farbe: 0->weiß, 1->grau.
---@param player number
---@param questId number
---@param subquestId number (0-19)
---@param flag number
---@param info number|nil Information "neue Quest" links unten Anzeugen 0 = aus; 1 = an (wenn _name ein sttKey ist, wird er im tooltip angezeigt) (default 0)
function Logic.SetSubQuestDoneFlag(player, questId, subquestId, flag, info) end

--- Setzt die TaskList.
---@param _id number
---@param _tasklist number
function Logic.SetTaskList(_id, _tasklist) end

--- Setzt den Technologiestatus.
--- siehe s5CommunityLib/tables/TechState.lua.
---@param _player number
---@param _tech number
---@param _state number
function Logic.SetTechnologyState(_player, _tech, _state) end

--- Setzt die Terrainhöhe.
---@param _posX number round(pos.X/100)
---@param _posY number round(pos.Y/100)
---@param _hei number
function Logic.SetTerrainNodeHeight(_posX, _posY, _hei) end

--- Setzt den Terraintyp.
--- (auflösung p/100/4, input p/100)
---@param _posX number round(pos.X/100)
---@param _posY number round(pos.Y/100)
---@param _terTyp number
function Logic.SetTerrainNodeType(_posX, _posY, _terTyp) end

--- Setzt die Terrain-Vertexfarbe.
---@param _posX number round(pos.X/100)
---@param _posY number round(pos.Y/100)
---@param _r number (0-255)
---@param _g number (0-255)
---@param _b number (0-255)
function Logic.SetTerrainVertexColor(_posX, _posY, _r, _g, _b) end

--- Setzt beim Mapstart, wieviel Sekunden bereits vom ersten Wetterelement abgelaufen sind. 
--- (Bsp: 	Logic.AddWeatherElement(1, 700, ...) Logic.AddWeatherElement(2,...) Logic.SetWeatherOffset(600) ändert bereits nach 100 sek. das Wetter)
---@param _sec number
function Logic.SetWeatherOffset(_sec) end

--- Funktionslos
--- (lua API existiert, aber das entity event ist leer).
function Logic.SetWorkTaskListsPerCycle(_player, _entitytype, _num) end

--- ???
function Logic.SettlerAggressive(_id) end

--- leader stop befehl (bewegt sich weiter um gegner in reichweite anzugreifen).
---@param _id number
function Logic.SettlerDefend(_id) end

--- leader position halten Befehl.
--- memoryleak?
---@param _id number
function Logic.SettlerStand(_id) end

--- Funktionslos
function Logic.SetupGfxSet() end

--- Funktionslos     SCV 69 verwenden
--- sieht anscheinend in nem attachment zum effect nach...
---@param id number
---@return number
function Logic.SoldierGetLeaderEntityID(id) end

--- Erzeugt einen Partikel Effekt für Siedler (Bsp: Kanonenrauch bei PV_Cannon)
--- EGL::CParticleEffectAttachmentBehavior
---@param _id number
---@param _node number (??? Manche Eingaben liefern hier einen Absturz)
---@param _eff number
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
--- tut nichts, wenn nicht genug rohstoffe vorhanden.
---@param _player number
---@param _resTyp number
---@param _amount number
---@return number flag 1 wenn erfolgreich entfernt
function Logic.SubFromPlayersGlobalResource(_player, _resTyp, _amount) end

--- Macht alle Entities unbeweglich, unselektierbar und unangreifbar.
function Logic.SuspendAllEntities() end

--- Macht ein Entity unbeweglich, unselektierbar und unangreifbar.
---@param _id number
function Logic.SuspendEntity(_id) end

--- Funktionslos
function Logic.ToggleDebugMode() end

--- Aktualisiert das Blocking.
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
function Logic.UpdateBlocking(_minX, _minY, _maxX, _maxY) end

--- Wertet alle Gebäude der UpgradeCategory auf.
---ändert auch den neu zu bauende gebäudetyp.
---@param _upCat number
---@param _player number
function Logic.UpgradeBuildingCategory(_upCat, _player) end

--- Wertet alle Entities der UpgradeCategory auf.
-- ohne syncronisierung.
---@param ucat number
---@param player number
function Logic.UpgradeSettler(ucat, player) end

--- Wertet alle Entities der UpgradeCategory auf.
-- ohne syncronisierung.
---@param _upCat number
---@param _player number
function Logic.UpgradeSettlerCategory(_upCat, _player) end

--- Setzt die Wasserhöhe.
--- (auflösung p/100/4, input p/100)
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
---@param _hei number (0-10000)
function Logic.WaterSetAbsoluteHeight(_minX, _minY, _maxX, _maxY, _hei) end

--- Ändert die Wasserhöhe um den angegebenen Betrag.
--- (auflösung p/100/4, input p/100)
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
---@param _hei number endhöhe (0-10000)
function Logic.WaterSetRelativeHeight(_minX, _minY, _maxX, _maxY, _hei) end

--- Setzt den Wassertyp.
---@param _minX number round(pos1.X/100)
---@param _minY number round(pos1.Y/100)
---@param _maxX number round(pos2.X/100)
---@param _maxY number round(pos2.Y/100)
---@param _watTyp number (<=15)
function Logic.WaterSetType(_minX, _minY, _maxX, _maxY, _watTyp) end

--- Gibt die Weltgröße zurück. (normalerweise x==y)
---@return number x
---@return number y
function Logic.WorldGetSize() end

--- funktionslos
---@param _player number
function Logic.WriteStatisticsToLogFile(_player) end
