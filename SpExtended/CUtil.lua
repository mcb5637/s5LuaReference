---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CUtil.dll

CUtil = {}

-- Aktiviert Mapsize größer als 768
function CUtil.ActivateMapsize() end

-- Aktiviert den Performance Modus.
-- Dabei wird ein Sleep ausgeschaltet, sodass das Spiel auch im Hintergrund die volle Leistung ziehen kann.
function CUtil.ActivatePerformanceMode() end

-- Aktiviert den 'TaskIncrementBugfix'
-- Bei dem Bugfix wird in der TL nicht erhöht wenn sie abgebrochen wurde.
-- Bsp.: Pilgrim soll eine Bombe legen und läuft los.
-- Ein Haus wird auf seiner Position platziert.
-- ohne Bugfix: Die Bombe wird direkt platziert.
-- mit Bugfix: Pilgrim läuft weiter dorthin wo er hin soll.
function CUtil.ActivateTaskIncrementBugfix() end

-- Fügt der Sounds.xml einen Eintrag hinzu.
-- Funktioniert nur im OnMapStart Callback (oder früher) aus einer Mods lua oder der Map wenn in TL oder anderer XMl verwendet werden soll.
-- Ansonsten funktioniert es auch im Spiel (für Sound.PlaySound) (im Spiel ist nicht zu empfehlen)
---@param _sound string
function CUtil.AddSound(_sound) end

-- Modifiziert die Maximale Motivation aus der Logic.xml eines Spielers
---@param _playerId number
---@param _offset number
function CUtil.AddToPlayersMotivationHardcap(_playerId, _offset) end

-- Modifiziert die aktuelle Maximale Motivation eines Spielers
---@param _playerId number
---@param _offset number
function CUtil.AddToPlayersMotivationSoftcap(_playerId, _offset) end

-- Fügt einen existirenden Soltaten einem Leader hinzu
---@param _soldierId number
---@param _leaderId number
function CUtil.AttachSoldierToLeader(_soldierId, _leaderId) end

-- Intern
function CUtil.BlockEvent() end

-- Intern
function CUtil.BlockWorkplace() end

CUtil.Chunks = {}

-- Intern, sollte nicht direkt verwendet werden. (siehe ChunkWrapper)
function CUtil.Chunks.new() end

-- Intern
function CUtil.CreateFAA() end
-- Intern
function CUtil.CreateFAASimple() end

-- Erzeugt ein Projektil 
---@param _effectType number
---@param _startX number
---@param _startY number
---@param _endX number
---@param _endY number
---@param _damage number
---@param _radius number
---@param _targetEntityId number
---@param _attackerEntityId number
---@param _playerId number
function CUtil.CreateProjectile(_effectType, _startX, _startY, _endX, _endY, _damage, _radius, _targetEntityId, _attackerEntityId, _playerId) end

-- Deaktiviert den Performance Modus
function CUtil.DeactivatePerformanceMode() end

-- Deaktiviert den 'TaskIncrementBugfix'
function CUtil.DeactivateTaskIncrementBugfix() end

-- Leitet ein Script um (ähnlich zu CMod.DetourFile)
---@param _oldPath string
---@param _newPath string
function CUtil.DetourScript(_oldPath, _newPath) end

-- Vorhandene Truppen werden nicht mehr automatisch aufgewertet
function CUtil.DisableAutoUpgradeForTroops() end

-- Disabled das verwenden der des erweiterten Entity Types als Upgrade Category.
function CUtil.DisableEntityTypeAsUpgradeCategory() end

-- Schaltet den Fog of War aus
function CUtil.DisableFoW() end

-- Schalten den Fix für Projektilhöhe auf Brücken aus
function CUtil.DisableHeightFix() end

-- Schaltet Override Costs aus.
function CUtil.DisableOverrideCosts() end

-- Schaltet das Standard-Kanonen produzieren aus.
-- Stattdessen wird bei Fertigstellung einer Kanone diese nicht erzeugt und der Callback
-- GameCallback_CannonNotProduced(_foundry, _cannon_type) aufgerufen.
function CUtil.DisableStandardBuyCannon() end

-- Prüft ob ein Effekt mit der ID existiert.
---@param _effectID number
---@return boolean exists
function CUtil.DoesEffectExist(_effectID) end

-- Prüft ob eine Datei existiert.
---@param _path string
---@return boolean exists
function CUtil.DoesFileExist(_path) end

-- Vorhandene Truppen werden wieder automatisch aufgewertet
function CUtil.EnableAutoUpgradeForTroops() end

-- Wenn aktiv kann (EntityType + 2^16) anstelle einer UpgradeCategory verwendet werden.
-- z.B. um verschiedene Truppenlevel ausbilden zu können.
function CUtil.EnableEntityTypeAsUpgradeCategory() end

-- Deprecated, siehe: CUtil.EnableEntityTypeAsUpgradeCategory()
function CUtil.EnableEntityTypeAsUgradeCategory() end

-- Schalten den Fix für Projektilhöhe auf Brücken ein
function CUtil.EnableHeightFix() end

-- Enabled Override Costs, damit werden die Kosten auf die Werte von CUtil.SetOverrideCosts gesetzt.
function CUtil.EnableOverrideCosts() end

-- Teleportiert eine Entity. Die EntityId bleibt erhalten
---@param _entityId number
---@param _x number
---@param _y number
function CUtil.EntitySetPosition(_entityId, _x, _y) end

-- Flasht das Fenster.
function CUtil.FlashWindow() end

-- Gibt alle anhängende Leibeigene einer Entity zurück (Ausnahme Gebäude in Konstruktion, dann wird die Baustelle ausgegeben)
---@param _entityId number
---@return number _serfId
---@return number ...
function CUtil.GetAttachedSerfs(_entityId) end

-- Intern, Gibt einen Pointer auf ein Behavior einer Entity zurück
---@param _entityId number
---@param _behaviorVtp number
---@return string pionter
function CUtil.GetBehaviour(_entityId, _behaviorVtp) end

-- Gibt das Blocking an einer Position in scm zurück
---@param _x number
---@param _y number
---@return number bitset 0: free, 1: blocked, 2: bridge, 4: terrain (green)
function CUtil.GetBlocking100(_x, _y) end

-- Gibt eine Liste an Entities zurück auf die das Gebäude platziert werden kann.
---@param _entityType number
---@return number ...
function CUtil.GetBuildOns(_entityType) end

-- Gibt die Größe des Fensters ohne Rahmen zurück.
---@return number width
---@return number height
function CUtil.GetClientSize() end

-- Gibt die Baustelle eines Gebäudes in Konstruktion zurück
---@param _buildingId number
function CUtil.GetConstructionSiteByBuilding(_buildingId) end

-- Intern, Gibt die Anzahl an terrain nodes in x und y Richtung auf der Karte zurück
---@return number amountX
---@return number amountY
function CUtil.GetCurrentMapsize() end

-- Gibt den vtp der Klasse einer Entity zurück
---@param _entityId number
---@return number vtp
function CUtil.GetEntityClass(_entityId) end

-- Gibt Font Eigenschaften zurück.
---@param _fontId number
---@return number size
---@return number offset
---@return number spacing
function CUtil.GetFontConfig(_fontId) end

-- Gibt die Anzahl freier Bauslots einer Baustelle bzw freier Reparaturslots eines Gebäudes wieder
---@param _entityId number
---@return number amount
function CUtil.GetFreeBuildingSlots(_entityId) end

-- Gibt die aktuelle Applikationsgeschwindigkeit zurück
---@return number factor
function CUtil.GetGameTimeFactor() end

-- Gibt den aktuellen Befehl eines Hauptmanns zurück
--
-- Identisch mit Logic.LeaderGetCurrentCommand
function CUtil.GetLeaderCommand() end

-- Gibt die Kartengröße in sm zurück
---@param _name string
---@param _type number
---@return number sizeX
---@return number sizeY
function CUtil.GetMapSizeByNameAndType(_name, _type) end

-- Veraltet
-- 
-- Benutze CPlaceBuilding.GetPlaceBuildingPosition
---@return number x
---@return number y
function CUtil.GetPlaceBuildingPosition() end

-- Gibt die Maximale Motivation eines Spielers aus der Logic.xml zurück.
-- Kann mit CUtil.AddToPlayersMotivationHardcap modifiziert werden
---@param _playerId number
---@return number
function CUtil.GetPlayersMotivationHardcap(_playerId) end

-- Gibt die aktuelle Maximale Motivation eines Spielers zurück.
-- Kann mit CUtil.AddToPlayersMotivationSoftcap modifiziert werden
---@param _playerId number
---@return number
function CUtil.GetPlayersMotivationSoftcap(_playerId) end

-- Gibt den Sektor einer Position in sm zurück
--
-- Crash bei fehlerhafter Eingabe
---@param _x number
---@param _y number
---@return number sector
function CUtil.GetSector(_x, _y) end

-- Gibt den Sektor einer Position in sm zurück
--
-- Crash bei fehlerhafter Eingabe
---@param _x number
---@param _y number
---@return number sector
function CUtil.GetSector2(_x, _y) end

-- Gibt zurück, ob _playerId1 _playerId2 sehen kann
---@param _playerId1 number
---@param _playerId2 number
---@return number flag
function CUtil.GetShareExplorationWithPlayerFlag(_playerId1, _playerId2) end

-- Gibt die Systemzeit des Nutzers zurück
---@return number systemTime
function CUtil.GetSystemTime() end

-- Gibt die Entity unter der Maus zurück, 0 wenn keine Einheit unter der Maus ist
---@return number entityId
function CUtil.GetTargetedEntity() end

-- Gibt Informationen über das Terrain an einer Position in scm zurück
---@param _x number
---@param _y number
---@return number terrainHeight
---@return number blocking
---@return number sector
---@return number terrainType
function CUtil.GetTerrainInfo(_x, _y) end

-- Gibt die Geländehöhe an einer Position in sm zurück
---@param _x number
---@param _y number
---@return number terrainHeight
function CUtil.GetTerrainNodeHeight(_x, _y) end

-- Gibt den Geländetyp an einer Position in sm zurück
---@param _x number
---@param _y number
---@return number terrainType
function CUtil.GetTerrainNodeType(_x, _y) end

-- Gibt die Vertexfarbe an einer Position in sm zurück
---@param _x number
---@param _y number
---@return number r
---@return number g
---@return number b
function CUtil.GetTerrainVertexColor(_x, _y) end

-- Gibt die Geländehöhe an einer Position in sm zurück
---@param _x number
---@param _y number
---@return number waterHeight
function CUtil.GetWaterHeight(_x, _y) end

-- Gibt die Geländehöhe an einer Position in sm zurück
---@param _x number
---@param _y number
---@return number waterType
function CUtil.GetWaterType(_x, _y) end

-- Intern, Gibt den Type eines Widgets zurück
---@param _widget number|string
---@return string widgetType
function CUtil.GetWidgetType(_widget) end

-- Gibt die Größe des Fensters zurück
---@return number width
---@return number height
function CUtil.GetWindowSize() end

-- Gibt zurück, ob eine Einheit getarnt ist
---@param _entityId number
---@return boolean
function CUtil.IsCamouflaged(_entityId) end

-- Prüft ob das Fenster im Vodergrund ist.
---@return boolean
function CUtil.IsInForeground() end

-- Prüft ob der Performance Modus aktiv ist.
---@return boolean
function CUtil.IsPerformanceModeActivated() end

-- Gibt zurück, ob ein EntityType eine Gebäude ist
---@param _entityType number
---@return boolean
function CUtil.IsTypeBuilding(_entityType) end

-- Intern
-- 
-- Gibt zurück ob irgendeine GUI geladen ist
---@return boolean exists
function CUtil.IsWidgetSystemAvailable() end

-- CWidget.LoadGUINoPreserve verwenden!
function CUtil.LoadGUI() end

-- Gibt die Zeit zwischen den Zahltagen eines Spielers zurück
---@param _playerId number
---@return number ticks
function CUtil.Payday_GetFrequency(_playerId) end

-- Gibt zurück, ob der Zahltag eines Spielers läuft 
---@param _playerId number
---@return boolean
function CUtil.Payday_IsActive(_playerId) end

-- Stoppt oder aktiviert den Zahltag für einen Spieler. Funktioniert nur sinnvol zum manuellen starten, da dieser beim stoppen vom Spiel sofort wieder gestartet wird
---@param _playerId number
---@param _active number
function CUtil.Payday_SetActive(_playerId, _active) end

-- Setzt die Zeit zwischen den Zahltagen eines Spielers
---@param _playerId number
---@param _frequency number
function CUtil.Payday_SetFrequency(_playerId, _frequency) end

-- Setzt den mit CUtil.SetEntityDisplayName() gesetzten Namen zurück
---@param _entityId number
---@return boolean success
function CUtil.RemoveEntityDisplayName(_entityId) end

-- Entfernt einen zuvor gesetzten StringTableText.
---@param _tableKey string
function CUtil.RemoveStringTableText(_tableKey) end

-- Ersetzt den Baum mit einem ResourceTree.
---@param _tree number
function CUtil.ReplaceEntityWithResourceEntity(_tree) end

-- Erzeugt einen temporären minimap marker an einer Position in scm
---@param _x number
---@param _y number
---@param _r number
---@param _g number
---@param _b number
---@param _a number (optional, default 255)
function CUtil.ScriptSignalColored(_x, _y, _r, _g, _b, _a) end

-- Intern
function CUtil.SendStopEvent() end

-- Sendet ein Feedback Event, dass eine nun erforschbar ist.
-- Dafür muss CWidget.Transaction_AddRawWidgetsFromFile("MP_SettlerServer/GUI/ShortMessagesListWindowGfxPrototypeNewTechnologyAvailable.xml"); geladen sein.
-- EventID ist ein Index der Textur.
---@param _player number
---@param _technology number
---@param _eventID number
function CUtil.SendTechnologyFeedbackEvent(_player, _technology, _eventID) end

-- Spielt eine Animation an einem Gebäude ab.
---@param _id number
---@param _subAnim number
---@param _anim string
---@param _playBackwards boolean
---@param _looped boolean
function CUtil.SetBuildingSubAnimExtended(_id, _subAnim, _anim, _playBackwards, _looped) end

-- Setzt den Namen einer Entity der im OverheadWidget angezeigt wird
---@param _entityId number
---@param _name string
---@return boolean success
function CUtil.SetEntityDisplayName(_entityId, _name) end

-- Setzt Font Eigenschaften.
---@param _fontID number
---@param _size number
---@param _offset number
---@param _spacing number
function CUtil.SetFontConfig(_fontID, _size, _offset, _spacing) end

-- Setzt die Applikationsgeschwindigkeit
---@param _factor number
function CUtil.SetGameTimeFactor(_factor) end

-- Setzt die Kosten für die Überschreibung.
---@param _gold number
---@param _goldRaw number
---@param _silver number
---@param _silverRaw number
---@param _stone number
---@param _stoneRaw number
---@param _iron number
---@param _ironRaw number
---@param _sulfur number
---@param _sulfurRaw number
---@param _clay number
---@param _clayRaw number
---@param _wood number
---@param _woodRaw number
---@param _weatherEnergy number
---@param _knowledge number
---@param _faith number
function CUtil.SetOverrideCosts(_gold, _goldRaw, _silver, _silverRaw, _stone, _stoneRaw, _iron,_ironRaw, _sulfur, _sulfurRaw, _clay, _clayRaw, _wood, _woodRaw, _weatherEnergy, _knowledge, _faith) end

-- Setzt den minimalen angezeigten Baufortschritt wenn ein Gebäude selektiert ist.
-- (Sinnvoll bei z.B. Mauerbau um zu sehen wie die ungebauten Mauern gedreht sind)
---@param _percentage number
function CUtil.SetPlaceBuildingMinimumVisualProgress(_percentage) end

-- Intern, Setzt die Rohstoffmenge in einem ResourceDoodad.
-- Identisch mit Logic.SetResourceDoodadGoodAmount()
---@param _entityId number
---@param _amount number
function CUtil.SetResourceDoodadGoodAmount(_entityId, _amount) end

-- Intern
function CUtil.SetSector(_x, _y, _sector) end

-- Setzt einen StringTableText.
---@param _key string
---@param _value string
function CUtil.SetStringTableText(_key, _value) end

-- Berechnet die Spiellogik für eine Stunde
function CUtil.SkipOneHour() end

-- Berechnet die Spiellogik für eine Minute
function CUtil.SkipOneMinute() end

-- Intern
function CUtil.SkipTicks(_skip) end

-- Intern
function CUtil.test() end

-- Intern
function CUtil.UnblockEvent() end

-- Intern
function CUtil.UnblockWorkplace() end

-- Setzt eine Weiterleitung zurück.
---@param _path string
function CUtil.UndetourScript(_path) end

-- Führt einen blocking update auf der gesamten Karte durch, ohne Höhenänderungen zu berücksichtigen
function CUtil.UpdateBlockingWholeMapNoHeight() end

-- Führt einen blocking update auf der gesamten Karte durch
function CUtil.UpdateBlockingWholeMapWithHeight() end

-- Intern, führt ein Exploration Update für den gegebenen Spieler durch.
---@param _playerId number
function CUtil.UpdateExplorationForCurrentPlayer(_playerId) end