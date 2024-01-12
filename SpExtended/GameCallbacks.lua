---@diagnostic disable: missing-return, duplicate-set-field
-- Callbacks aus Kimichuras MP und SP Extended

-- ------------------------------------------------------------------------------------------------------ --
-- CWidget
-- ------------------------------------------------------------------------------------------------------ --

-- Wenn eine GUI geladen wird (Ausnahme CWidget.Transaction_Commit())
ApplicationCallback_GUILoaded = function() end;

-- ------------------------------------------------------------------------------------------------------ --
-- CUtil
-- ------------------------------------------------------------------------------------------------------ --

-- Wenn eine Einheit sich bewegt
---@param _entityId number
---@param _oldX number
---@param _oldY number
---@param _newX number
---@param _newY number
GameCallback_EntityMoved = function(_entityId, _oldX, _oldY, _newX, _newY) end;

-- Wenn sich der Text in einem CustomWidget ändert (User Input).
-- called when input changed, string = updated string
---@param _string string
GameCallback_CustomWidgetInput = function(_string) end;

-- ?
---@param _string string
GameCallback_CustomWidgetEnter = function(_string) end;

-- Wenn die Daten für die Statistik 'Erledigte Feinde' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_KilledUnits = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik 'Verlorene Einheiten' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_LostUnits = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik 'Zerstörte Gebäude' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_DestroyedBuildings = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik 'Verlorene Gebäude' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_LostBuildings = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik 'Alle Gebäude' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_NumberOfBuildings = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik 'Motivation' ermittelt wird
---@param _playerId number
---@param _value number
---@return number newValue
GameCallback_Statistics_Motivation = function(_playerId, _value) end;

-- Wenn die Daten für die Statistik einer Entity Category ermittelt wird
-- Wird für folgende Kategorien aufgerufen:
-- EntityCategory.Serf (13) -> Leibeigene
-- EntityCategory.Worker (12) -> Arbeiter
-- EntityCategory.Leader (29) -> (unverwendet)
-- EntityCategory.Soldier (28) -> Soldaten
-- EntityCategory.Hero (22) -> (unverwendet)
-- EntityCategory.Farm (49) -> Bauernhöfe
-- EntityCategory.Residence (50) -> Wohnhäuser
-- EntityCategory.Workspace (48) -> Arbeitsplätze
-- EntityCategory.MilitaryBuilding (47) -> (unverwendet)
-- EntityCategory.VillageCenter (6) -> (unverwendet)
---@param _playerId number
---@param _category number
---@param _value number
---@return number newValue
GameCallback_Statistics_NumberOfEntityCategory = function(_playerId, _category, _value) end;

-- Unmittelbar bevor eine Einheit bekehrt wird (nach der Animation)
---@param _converterId number
---@param _toConvertId number
---@return boolean newCanConvert
GameCallback_PreConvert = function(_converterId, _toConvertId) end;

-- Unmittelbar nachdem eine Einheit bekehrt wurde
---@param _converterId number
---@param _convertedId number
GameCallback_EntityConverted = function(_converterId, _convertedId) end;

-- Wenn ein Minengebäude Rohstoffe fördert
---@param _mineId number
---@param _pitId number
---@param _resourceType number
---@param _amount number
---@return number newMineId
---@return number newPitId
---@return number newResourceType
---@return number newAmount
GameCallback_GainedResourcesFromMine = function(_mineId, _pitId, _resourceType, _amount) end;

-- Wenn ein Veredler rohe Ressourcen aus dem HQ/Lager nimmt
---@param _id number
---@param _resourceType number
---@param _amount number
---@return number newId
---@return number newResourceType
---@return number newAmount
GameCallback_ResourceTaken = function(_id, _resourceType, _amount) end;

-- Wenn ein Veredlungsgebäude Rohstoffe veredelt
---@param _buildingId number
---@param _resourceType number
---@param _amount number
---@return number newbuildingId
---@return number newResourceType
---@return number newAmount
GameCallback_RefinedResource = function(_buildingId, _resourceType, _amount) end;

-- Wenn die maximale Anzahl an Attachmentslots ermittelt wird
---@param _id number
---@param _attachment number
---@param _value number
---@return number newValue
GameCallback_GetAttachmentMaximum = function(_id, _attachment, _value) end;

-- Intern
-- 106503 only
---@param _id number
---@param _event1 number
---@param _event2 number
---@param _value number
---@return number newValue
GameCallback_EventGetValue = function(_id, _event1, _event2, _value) end;

-- Intern
---@param _id number
---@param _event number
---@param _value number
---@return number newValue
GameCallback_GetAttachment = function(_id, _event, _value) end;

-- Bevor ein Leibeigener gekauft wird
---@param _buildingId number
---@return boolean newCanBuy
GameCallback_PreBuySerf = function(_buildingId) end;

-- Nachdem ein Leibeigener angefordert wurde
-- success = true: Event wurde durchgeführt und Rohstoffe wurden abgezogen
---@param _buildingId number
---@param _success boolean
GameCallback_PostBuySerf = function(_buildingId, _success) end;

-- Bevor ein Hauptmann gekauft wird
---@param _buildingId number
---@param _upgradeCategory number
---@return boolean newCanBuy
GameCallback_PreBuyLeader = function(_buildingId, _upgradeCategory) end;

-- Nachdem ein Hauptmann angefordert wurde
-- success = true: Event wurde durchgeführt und Rohstoffe wurden abgezogen
---@param _buildingId number
---@param _upgradeCategory number
---@param _success boolean
GameCallback_PostBuyLeader = function(_buildingId, _upgradeCategory, _success) end;

-- Bevor ein Soldat gekauft wird
---@param _buildingId number
---@param _leaderId number
---@return boolean newCanBuy
GameCallback_PreBuySoldier = function(_buildingId, _leaderId) end;

-- Nachdem ein Soldat angefordert wurde
-- success = true: Event wurde durchgeführt und Rohstoffe wurden abgezogen
---@param _buildingId number
---@param _leaderId number
---@param _success boolean
GameCallback_PostBuySoldier = function(_buildingId, _leaderId, _success) end;

-- Wenn ein Task vom Typ WaitForAnim ausgeführt wird
---@param _id number
---@param _task number
---@param _slot number
---@param _time number
---@return number newTime
GameCallback_WaitForAnim = function(_id, _task, _slot, _time) end;

-- Wenn ein Task vom Typ BattleWaitUntil ausgeführt wird
---@param _id number
---@param _task number
---@param _slot number
---@param _time number
---@return number newTime
GameCallback_BattleWaitUntil = function(_id, _task, _slot, _time) end;

-- Wenn ein Arbeiter Ausdauer auffüllt (Wohnhaus, Bauernhof, Lagerfeuer)
---@param _workerId number
---@param _currentStamina number
---@param _factor number
---@param motivation number
---@return number newAmount
GameCallback_GetStaminaToRestore = function(_workerId, _currentStamina, _factor, motivation) end;

-- Wenn beim auffüllen der Ausdauer die maximale Ausdauer abgefragt wird
---@param _workerId number
---@param _motivation number
---@param _maxStamina number
---@return number newMaxStamina
GameCallback_GetMaxStamina = function(_workerId, _motivation, _maxStamina) end;

-- Wenn eine Baustelle Baufortschritt macht
---@param _constructionSite number
---@param _numberOfSerfs number
---@param _currentProgress number
---@return number newCurrentProgress
GameCallback_ConstructBuilding = function(_constructionSite, _numberOfSerfs, _currentProgress) end;

-- Wenn eine Technologie Forschungsfortschritt macht
---@param _playerId number
---@param _buildingId number
---@param _technologyId number
---@param _entityId number
---@param _researchAmount number
---@param _currentProgress number
---@param _maxProgress number
---@return number newResearchAmount
GameCallback_ResearchProgress = function(_playerId, _buildingId, _technologyId, _entityId, _researchAmount, _currentProgress, _maxProgress) end;

-- Immer wenn sich bei einem Spieler eine Rohstoffmenge verändert
---@param _playerId number
---@param _resourceType number
---@param _amount number
GameCallback_ResourceChanged = function(_playerId, _resourceType, _amount) end;

-- Subject to change; Wenn sich eine TaskList ändert
---@param _id number
---@param _tl number
---@param _tl_new number
GameCallback_TastListChanged = function(_id, _tl, _tl_new) end;

-- Subject to change; ? Wenn sich die Geschwindigkeit (Animation?) einer TL ändert
---@param _id number
---@param _speed number
---@param _speed_new number
GameCallback_TastListSpeedChanged = function(_id, _speed, _speed_new) end;

-- Wenn ein Spieler einen Zahltag hat
---@param _playerId number
---@param _amount number
---@return number newAmount
GameCallback_PaydayPayed = function(_playerId, _amount) end;

-- Wenn eine Technologie in Auftrag gegeben wird
---@param _entityId number
---@param _technologyId number
---@param _success boolean
GameCallback_StartResearch = function(_entityId, _technologyId, _success) end;

-- Unmittelbar bevor eine Kanone fertiggestellt wird.
-- Nur MIT CUtil.DisableStandardBuyCannon
---@param _foundryId number
---@param _cannonType number
GameCallback_CannonNotProduced = function(_foundryId, _cannonType) end;

-- Unmittelbar bevor eine Kanone fertiggestellt wird.
-- Nur OHNE CUtil.DisableStandardBuyCannon
---@param _foundryId number
---@param _cannonType number
GameCallback_CannonProduced = function(_foundryId, _cannonType) end;

-- Wird vom upgrade _event aufgerufen. Upgrade spam wird abgefangen, dass Rohstoffe nicht mehrfach abgezogen werden
-- (siehe MP_SettlerServer/main.lua)
---@param _buildingId number
---@return boolean
GameCallback_AboutToUpgrade = function(_buildingId) end;

-- Default Rückgabewert wäre amount, kann abgeändert werden um das Spawnen von Arbeitern zu verhindern/erlauben.
---@param _playerId number
---@param _amount number
---@return number newLimit
function GameCallback_GetPlayerAttractionLimitForSpawningWorker(_playerId, _amount) end

-- Default Rückgabewert wäre amount, kann abgeändert werden um das Spawnen von Arbeitern zu verhinden/erlauben.
---@param _playerId number
---@param _amount number
---@return number newLimit
function GameCallback_GetPlayerAttractionUsageForSpawningWorker(_playerId, _amount) end

-- Rückgabe entscheidet ob der Spieler noch Platz für eine Einheit hat, wird bei den Events BUY_SERF, BUY_LEADER, BUY_SOLDIER aufgerufen über die
-- Event Data kann der Typ der zu Spawnenden Entity ermittelt werden. CanSpawn ist vorbelegt mit derm Wert der ursprünglich ermittelt würde.
-- Der Ressourcencheck findet nach dieser Abfrage statt weshalb nicht garantiert ist, dass eine Entity auch spawnen kann wenn hier true zurückgegeben wird!
-- (GUI muss gesondert betrachtet werden)
---@param _playerId number
---@param _canSpawn number
---@return number newCanSpawn
function GameCallback_BuyEntityAttractionLimitCheck(_playerId, _canSpawn) end

-- ------------------------------------------------------------------------------------------------------ --
-- CPlaceBuilding
-- ------------------------------------------------------------------------------------------------------ --

-- Wenn ein Gebäude platziert wurde
---@param _upgradeCategory number
---@param _x number
---@param _y number
---@param _rotation number
---@param _isBuildOn boolean
GameCallback_PlaceBuildingGeneric = function(_upgradeCategory, _x, _y, _rotation, _isBuildOn) end;

-- Während ein Gebäude unter der Maus ist
--
-- x2,y2,x3,y3: Blocking? or TerrainPos?
---@param _upgradeCategory number
---@param _x number
---@param _y number
---@param _rotation number
---@param _isBuildOn boolean
---@param _x2 number
---@param _y2 number
---@param _x3 number
---@param _y3 number
---@return boolean newCanPlace
GameCallback_PlaceBuildingCheck = function(_upgradeCategory, _x, _y, _rotation, _isBuildOn, _x2, _y2, _x3, _y3) end;

-- Während ein Gebäude unter der Maus ist
---@param _upgradeCategory number
---@param _x number
---@param _y number
---@param _rotation number
---@param _isBuildOn boolean
---@return boolean newCanPlace
GameCallback_PlaceBuildingAdditionalCheck = function(_upgradeCategory, _x, _y, _rotation, _isBuildOn) end;

-- ------------------------------------------------------------------------------------------------------ --
-- CInputCallback:
-- ------------------------------------------------------------------------------------------------------ --

-- Wenn eine Taste gedrückt wurde
---@param _ctrlPressed boolean
---@param _shitPressed boolean
---@param _altPressed boolean
---@param _keyCode number
---@return boolean consumeEvent
function InputCallback_KeyDown(_ctrlPressed, _shitPressed, _altPressed, _keyCode) end;

-- Wenn eine Taste losgelassen wurde
---@param _ctrlPressed boolean
---@param _shitPressed boolean
---@param _altPressed boolean
---@param _keyCode number
---@return boolean consumeEvent
function InputCallback_KeyUp(_ctrlPressed, _shitPressed, _altPressed, _keyCode) return true or false; end;

-- Wenn eine Taste gedrückt wurde und der Char Trigger ausgelöst wird
-- return: true if consume _event, false to trigger engine handling
---@param _char number
---@return boolean consumeEvent
function InputCallback_Char(_char) end;

-- ? https://learn.microsoft.com/de-de/windows/win32/inputdev/wm-deadchar
-- return: true if consume _event, false to trigger engine handling
---@param _char number
---@return boolean consumeEvent
function InputCallback_DeadChar(_char) end;

-- ? https://learn.microsoft.com/de-de/windows/win32/inputdev/wm-unichar
-- return: true if consume _event, false to trigger engine handling
---@param _char number
---@return boolean consumeEvent
function InputCallback_UniChar(_char) end;

-- Wenn Shift + rechte Maustaste gedrückt wurde
---@return boolean consumeEvent
function InputCallback_ShiftRightClick() end;

-- Wenn Strg + Shift + rechte Maustaste gedrückt wurde
---@return boolean consumeEvent
function InputCallback_CtrlShiftRightClick() end;

-- Wenn das Mausrad gedreht wurde
---@param _forward boolean
---@return boolean consumeEvent
function InputCallback_MouseWheel(_forward) end;

-- ------------------------------------------------------------------------------------------------------ --
-- CEntity
-- ------------------------------------------------------------------------------------------------------ --

-- Wird aufgerufen wenn eine Entity an eine andere attached wird
---@param _attachee number
---@param _attached number
---@param _attachment number
---@param _attachEvent number
function GameCallback_EntityAttached(_attachee, _attached, _attachment, _attachEvent) end

-- Wird aufgerufen wenn eine Entity von eine anderen dettached wird
---@param _attachee number
---@param _attached number
---@param _attachment number
---@param _flag number
function GameCallback_EntityDetached(_attachee, _attached, _attachment, _flag) end

-- Wird bei Klick im ConvertSettlersCommandState ausgelöst
-- return: true - entity kann konvertiert werden, false, nicht.
---@param _toConvertId number
---@param _orig number
---@return boolean
function GameCallback_GUI_CanEntityBeConverted(_toConvertId, _orig) end;

-- Wenn ein unbekannter Task ausgeführt werden soll
---@param _id number
---@return number 0 - weiter, 1 - weiter im nächsten tick, 2 - bleiben
function GameCallback_UnknownTask(_id) end;

-- Unmittelbar bevor eine Bombe explodiert
---@param _bombId number
---@param _range number
---@param _damage number
---@return number newRange
---@return number newDamage
function GameCallback_BombExplodes(_bombId, _range, _damage) end;

-- Unmittelbar bevor ein Sprengsatz explodiert
---@param _kegId number
---@param _range number
---@param _damage number
---@return number newRange
---@return number newDamage
function GameCallback_KegExplodes(_kegId, _range, _damage) end;

-- Wenn eine Bombe platziert wurde
---@param _creatorId number
---@param _bombId number
function GameCallback_BombPlaced(_creatorId, _bombId) end;

-- Wenn eine Einheit einen Rohstoff abbaut
---@param _extractorId number
---@param _resourceId number
---@param _resourceType number
---@param _amount number
---@return number newExtractorId
---@return number newResourceId
---@return number newResourceType
---@return number newAmount
function GameCallback_GainedResourcesExtended(_extractorId, _resourceId, _resourceType, _amount) end;

-- Nicht aktiv
---@param _attackerId number
---@param _startX number
---@param _startY number
---@return number newStartX
---@return number newStartY
function GameCallback_ProjectileFired(_attackerId, _startX, _startY) end

-- ------------------------------------------------------------------------------------------------------ --
-- CNetwork
-- ------------------------------------------------------------------------------------------------------ --

-- Nur im Hauptmenü
function ApplicationCallback_BeforeGameStart() end;

-- Unmittelbar nach GameCallback_OnGameStart
function GameCallback_OnPostGameStart() end;

-- Wenn eine Multiplayer Spiel gespeichert wird
-- called on save game
-- return: table with key and _value pairs (both string only!)
---@return table
function GameCallback_SettlerServer_SaveGame() end;

-- Intern
---@param _tick number
---@param _maxTick number
function GameCallback_OnTickReceived(_tick, _maxTick) end;

-- Intern
---@param _cmd table
function GameCallback_OnAsyncCommandReceived(_cmd) end;

-- Wird vor ApplicationCallback_ReceivedChatMessage aufgerufen und kann den Aufruf unterdrücken (return true)
-- return: true if call origs, false if not
---@param _name string
---@param _message string
---@param _color string
---@param _alliedOnly number
---@param _senderPlayerId number
---@return boolean
function ApplicationCallback_ReceivedChatMessageRaw(_name, _message, _color, _alliedOnly, _senderPlayerId) end;

-- Called when the _playerId interacts with the game (e.g. Mouse Clicks, GUI-Calls, etc.) - ONLY MP && ONLY when MP started (not Singleplayer in Multiplayer)
InputHandlers = {
	onPlaceBuilding = function(_playerId, _upgradeCategory, _x, _y, _rotation) end;
	onHeroPlaceCannon = function(_entityId, foundation, top, _x, _y) end;
	onPatrol = function(_entityId, _x, _y, _rotation) end;
	onMove = function(_entityId, _x, _y, _rotation) end;
	onExtractResource = function(_entityId, _resourceType, _x, _y) end;
	onAcceptTrade = function(_buildingId, _sellType, _buyType, _buyAmount) end;
	onScoutPlaceTorch = function(_entityId, _x, _y) end;
	onBuyHero = function(_playerId, _entityId, _entityType) end;
	onBuyMerchantOffer = function(_playerId, _merchantId, _slotId) end;
	onBuySerf = function(_playerId, _entityId) end;
	onSellBuilding = function(_playerId, _entityId) end;
	
	onGuard = function(_entityId1, _entityId2) end;
	onConstructBuilding = function(_entityId1, _entityId2) end;
	onRepairBuilding = function(_entityId1, _entityId2) end;
	onAttack = function(_entityId1, _entityId2) end;
	onHeroConvertSettler = function(_entityId1, _entityId2) end;
	onHeroSnipeSettler = function(_entityId1, _entityId2) end;
	onHeroShuriken = function(_entityId1, _entityId2) end;
	onThiefSabotage = function(_entityId1, _entityId2) end;
	onThiefDefuse = function(_entityId1, _entityId2) end;
	onTalkToNPC = function(_entityId1, _entityId2) end; -- NPC Interaction
	onThiefStealGoods = function(_entityId1, _entityId2) end;
	onThiefSecureStolenGoods = function(_entityId1, _entityId2) end;
	
	onResearchTechnology = function(_entityId, _technologyId) end;
	
	onBuyLeader = function(_entityId, _upgradeCategory) end;
	
	onBuyCannon = function(_entityId, _type) end;
	onChangeFormation = function(_entityId, _formation) end;
	onSetCurrentMaxNumWorkersInBuilding = function(_entityId, _amount) end;
	
	onSetTaxes = function(_playerId, _level) end;
	onBlessSettlers = function(_playerId, _level) end;
	onUpgradeTroops = function(_playerId, _upgradeCategory) end;
	onSetWeather = function(_playerId, _weatherId) end;
	
	onPayTribute = function(_playerId, _tributeId) end;
	
	onHoldPosition = function(_entityId) end;
	onDefend = function(_entityId) end;
	onUpgradeBuilding = function(_entityId) end;
	onCancelResearch = function(_entityId) end;
	onCancelUpgrade = function(_entityId) end;
	onChangeToBattleSerf = function(_entityId) end;
	onChangeToSerf = function(_entityId) end;
	onExpelSettler = function(_entityId) end;
	onHeroActivateAura = function(_entityId) end;
	onHeroCircularAttack = function(_entityId) end;
	onHeroInflictFear = function(_entityId) end;
	onHeroSummon = function(_entityId) end;
	onHeroCamouflage = function(_entityId) end;
	onHeroMotivateWorkers = function(_entityId) end;
	onBuySoldier = function(_entityId) end;
	onCancelTrade = function(_entityId) end;
	onScoutFindResources = function(_entityId) end;
	onToggleOvertimeAtBuilding = function(_entityId) end;
	onDeactivateAutoFillAtBarracks = function(_entityId) end;
	onActivateAutoFillAtBarracks = function(_entityId) end;
	
	onActivateAlarm = function(_playerId) end;
	onDeactivateAlarm = function(_playerId) end;
};