--- Funktionen für die KI
-- C
AI = {}

--- Fügt einen Wegpunkt für die Armee hinzu.
-- (Am Ende der Liste?)
function AI.Army_AddWaypoint(_player, _armyId, _entityId) end

--- Lässt die Armee alle Gegner in Sichtweite angreifen.
-- (Dauerhaft, kein abschalten!)
function AI.Army_BeAlwaysAggressive(_player, _armyId) end

--- Die Armee versucht einen Trupp Soldaten zu kaufen.
-- (Zur Armme hinzufügen?)
function AI.Army_BuyLeader(_player, _armyId, _upCat) end

--- Löscht alle Wegpunkte der Armee.
function AI.Army_ClearWaypoints(_player, _armyId) end

--- Schaltet die LeaderKI an oder aus. (AutoAttackRange?)
function AI.Army_EnableLeaderAi(_id, _flag) end

--- Gibt den Radius zurück, in dem Gegner angegriffen werden.
function AI.Army_GetAnchorRodeLength(_playerId, _armyId) end

--- Gibt die Entfernung zwischen Armee und dem nächsten Gegner zurück.
function AI.Army_GetDistanceBetweenAnchorAndEnemy(_playerId, _armyId) end

--- Gibt die id des nächsten Gegners zurück
function AI.Army_GetEntityIdOfEnemy(_playerId, _armyId) end

--- Gibt die Anzahl der Truppen zurück, die in dieser Armee sind.
function AI.Army_GetNumberOfTroops(_player, _armyId) end

--- ???
function AI.Army_GetOccupancyRate(_player, _armyId) end

--- Gibt den Player des nächsten Gegners zurück.
function AI.Army_GetPlayerIdOfEnemy(_player, _armyId) end

--- Gibt die Position der Armee zurück. (Armee-Anker)
-- return: posX, posY
function AI.Army_GetPosition(_player, _armyId) end

--- Gibt zurück, wie oft die Wegpunkte schon abgelaufen wurden.
function AI.Army_GetWaypointRuns(_player, _armyId) end

--- Kauft diese Armee gerade Nachschub??
-- return: true/false
function AI.Army_IsRefreshing(_player, _armyId) end

--- Gibt den nächsten Gegner im Gebiet zurück.
-- (Funktionsfähigkeit ohne Armee/inaktive KI?? -> Comfort bauen)
function AI.Army_SearchClosestEnemy(_player, _armyId, _posX, _posY, _range) end

--- Setzt das Bewegungsziel und die Angriffsreichweite der Armee (Move für Armeen).
function AI.Army_SetAnchor(_player, _armyId, _posX, _posY, _range) end

--- Setzt die Angriffsreichweite der Armee.
function AI.Army_SetAnchorRodeLength(_player, _armyId, _range) end

--- Setzt die Entfernung zwischen den Leadern?
-- SetupArmy setzt auf 4.
-- democopy: 0 -> low bis 4 -> high
function AI.Army_SetScatterTolerance(_player, _armyId, _value) end

--- !!! democopy
-- Setzt Formationsgröße
-- _val: 0->groß, 1->klein
function AI.Army_SetSize(_player, _armyId, _val) end

--- Ruft _callback auf, immer wenn die Armee einen Wegpunkt erreicht.
-- (nil -> entfernen???)
function AI.Army_SetWaypointCallback(_player, _armyId, _callback) end

--- Aktiviert den Neubau von zerstörten Gebäuden.
-- (Sekunden? Ticks?)
function AI.Entity_ActivateRebuildBehaviour(_player, _delay, _random) end

--- Verbindet einen Leader mit der Armee.
function AI.Entity_ConnectLeader(_id, _army) end

--- !!! democoy
-- Fügt unbeschäftigte Leader zu Armeen des Spielers hinzu.
function AI.Entity_ConnectUnemployedLeader(_player, _max) end

--- Fügt zu dieser Armee unbeschäftigte Leader hinzu.
function AI.Entity_ConnectUnemployedLeaderToArmy(_player, _armyId, _max) end

--- !!! democopy
-- Fügt _id zu _armyId hinzu.
function AI.Entity_ConnectWithArmy(_id, _armyId) end

--- Erstellt einen Trupp Soldaten.
-- (Keine aktive KI benötigt)
---@param _playerId number
---@param _leaderType number
---@param _soldierType number|nil nil,0->Automatisch ermitteln
---@param _soldiers number
---@param _posX number
---@param _posY number
---@param _0 number|nil
---@param _1 number|nil
---@param _experience number XXX_EXPERIENCE (0-3)
---@param _minSoldiers number Anzahl an Soldaten, bei denen der Trupp nachschub kaufen geht ??
---@return number id
function AI.Entity_CreateFormation(_playerId, _leaderType, _soldierType, _soldiers, _posX, _posY, _0, _1, _experience, _minSoldiers) end

--- !!! democopy
-- Gibt die armyId des Leaders zurück (-1->keine Armee)
function AI.Entity_GetConnectedArmy(_id) end

--- Gibt zurück, ob das Entity tot ist.
-- return: 0/1
function AI.Entity_IsDead(_id) end

--- Gibt zurück, ob das Entity existiert.
-- Besser: Logic.IsEntityDestroyed(_id)
-- return: 0/1
function AI.Entity_IsValid(_id) end

--- Setzt das Maximum an Soldaten, das der Leader nachkauft??
function AI.Entity_SetMaxNumberOfSoldiers(_id, _newMax) end

--- Deaktiviert die KI
function AI.Player_DisableAi(_player) end

--- Aktiviert die KI
function AI.Player_EnableAi(_player) end

--- !!! democopy
-- Gibt balancingwerte zurück??
-- return -1...1
function AI.Player_GetBalance(_player1, _player2) end

--- !!! democopy
-- Gibt die Anzahl der Leader zurück.
function AI.Player_GetNumberOfLeaders(_player) end

--- !!! democopy
-- Gibt die Anzahl der Serfs zurück.
function AI.Player_GetNumberOfSerfs(_player) end

--- !!! democopy
-- Setzt maximale Rohstoffe
function AI.Player_SetResourceLimits(_player, _gold, _clay, _iron, _sulfur, _stone, _wood) end

--- Gibt der KI alle _time Sekunden diese Rohstoffe.
function AI.Player_SetResourceRefreshRates(_player, _gold, _clay, _iron, _sulfur, _stone, _wood, _time) end

--- Setzt die aktuellen Rohstoffe.
function AI.Player_SetResources(_player, _gold, _clay, _iron, _sulfur, _stone, _wood) end

--- Führt _job am Zeitpunkt _time aus???
-- Genauigkeit SimpleJob
function AI.TimeLine_AddEvent(_name, _time, _job) end

--- Setzt die Zeit für die TimeLine.
-- (Automatisch per SimpleJob aufgerufen)
function AI.TimeLine_Update(_time) end

--- Löscht die Bauliste des Spielers.
function AI.Village_ClearConstructionQueue(_player) end

--- !!! democopy
-- Löscht die Erforschungsliste.
function AI.Village_ClearResearchQueue(_player) end

--- !!! democopy
-- Löscht die Ausbauliste.
function AI.Village_ClearResearchQueue(_player) end

--- !!! democopy
-- Gibt zurück, ob die Baulite leer ist.
-- return: true/false
function AI.Village_ConstructionQueueIsEmpty(_player) end

--- Deaktiviert den Neubau von Gebäuden.
function AI.Village_DeactivateRebuildBehaviour(_player) end

--- (De)Aktiviert das Bauen von Gebäuden.
-- (Zuweisung von Serfs zu Baustellen)
function AI.Village_EnableConstructing(_player, _flag) end

--- (De)Aktiviert das Abbauen von Rohstoffen durch Serfs.
function AI.Village_EnableExtracting(_player, _flag) end

--- (De)Aktiviert das reparieren von Gebäuden.
function AI.Village_EnableRepairing(_player, _flag) end

--- !!! democopy
-- Gibt die Anzahl der Bauaufträge zurück.
function AI.Village_GetConstructionsInQueue(_player) end

--- !!! democopy
-- Gibt die Anzahl an Militärgebäuden zurück.
-- return: numKaserne, numSchies, numStall, numKanonen
function AI.Village_GetNumberOfMilitaryBuildings(_player) end

--- !!! democopy
-- Diser Gebäudetyp wird nicht neu gebaut.
-- (Kann nicht rückgängig gemacht werden)
function AI.Village_IgnoreReconstructionForBuildingType(_player, _entityType) end

--- !!! democopy
-- In diesem Abstand wird nach Baustellen gesucht.
function AI.Village_LimitExpansionRadius(_player, _range) end

--- Dieser Rohstoff wird von Serfs bevorzugt abgebaut.
function AI.Village_SetResourceFocus(_player, _resType) end

--- Setzt, wie viele Serfs der Spieler kauft.
function AI.Village_SetSerfLimit(_player, _max) end

--- Lässt die KI in der Nähe der angegebenen Position ein Gebäude bauen.
-- (Funktioniert nicht immer, sucht teilweise unzugängliche Positionen)
-- _posX,_posY: -1/-1 -> letze Position
function AI.Village_StartConstruction(_player, _eTyp, _posX, _posY, _upgrades) end

--- Startet die Erforschung/Gebäudeausbau.
-- (Funktioniert nicht immer, welches Gebäude ist zufällig)
-- _type: Technologies.XXX oder Entities.XXX
-- _prob: Wahrscheinlichkeit (sollte 100 sein)
-- _command: Ausbau->0==UPGRADE / Erforschung->1==TECHNOLOGY
-- _location ??? (funktioniert mit nil) democopy: upgradeCategory???
function AI.Village_StartResearch(_player, _type, _prob, _command, _location) end
