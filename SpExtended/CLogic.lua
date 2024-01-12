---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CLogic.dll

CLogic = {}

-- Gibt den mit CLogic.SetAttractionLimitOffset hinzugefügten Siedlungsplatz zurück
---@param _playerId number
---@return number offset
function CLogic.GetAttractionLimitOffset(_playerId) end

-- Gibt den von diesem Gebäudetyp beireitgestellten Siedlungsplatz zurück
---@param _entityType number
---@return number amount
function CLogic.GetBuildingsAttractionLimit(_entityType) end

-- Gibt den von diesem Einheitentyp benötigten Siedlungsplatz zurück
---@param _entityType number
---@return number amount
function CLogic.GetEntitiesAttractionUsage(_entityType) end

-- Vorsicht, verbietet eine Technologie unwiderruflich.
---@param _playerId number
---@param _technologyId number
function CLogic.LockTechnology(_playerId, _technologyId) end

-- Gibt einen Pointer auf die EntityTypeProperties eines EntityType zurück
---@param _entityType number
---@return number
---@return string
function CLogic.Pointer_GetEntityTypeProperties(_entityType) end

-- Setzt eine Erhöhung/Verringerung des Siedlungsplatzes eines Spielers
---@param _playerId number
---@param _offset number
function CLogic.SetAttractionLimitOffset(_playerId, _offset) end

-- Setzt den Siedlungsplatz, den ein Gebäudetyp gibt
---@param _entityType number
---@param _amount number
function CLogic.SetBuildingsAttractionLimit(_entityType, _amount) end

-- Setzt den Siedlungsplatz, den ein Einheitentyp benötigt
---@param _entityType number
---@param _amount number
function CLogic.SetEntitiesAttractionUsage(_entityType, _amount) end

-- Setzt die Menge an abgebauten Rohstoffen eines Minengebäudetyps
---@param _entityType number
---@param _amount number
function CLogic.SetMinedResourcesValue(_entityType, _amount) end

-- Setzt die Menge an veredelten Rohstoffen eines Veredlungsgebäudetyps
---@param _entityType number
---@param _amount number
function CLogic.SetRefinedResourcesValue(_entityType, _amount) end

-- Setzt die Menge von _serfEntityType an _resourceEntityType abgebauten Rohstoffen
---@param _serfEntityType number
---@param _resourceEntityType number
---@param _amount number
function CLogic.SetSerfExtractionAmount(_serfEntityType, _resourceEntityType, _amount) end

-- Setzt die Zeit von _serfEntityType an _resourceEntityType abgebauten Rohstoffen
---@param _serfEntityType number
---@param _resourceEntityType number
---@param _time number
function CLogic.SetSerfExtractionTime(_serfEntityType, _resourceEntityType, _time) end