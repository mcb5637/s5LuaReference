---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CPlaceBuilding.dll

CPlaceBuilding = {}

-- Gibt zurück, ob ein Gebäude an der Position in scm platziert werden kann.
---@param _upgradeCategory number
---@param _playerId number
---@param _x number
---@param _y number
---@param _rotation number
---@param _buildOn number
---@return boolean canPlace
function CPlaceBuilding.CanPlaceBuilding(_upgradeCategory, _playerId, _x, _y, _rotation, _buildOn) end

-- Schaltet den Check auf das rotierte Blocking beim platzieren einer Entity aus.
---@param _upgradeCategory number
function CPlaceBuilding.SetIgnoreRotationCheckOnEntityType(_upgradeCategory) end

-- Gibt die Rotation im PlaceBuilding State zurück.
---@return number rotation
function CPlaceBuilding.GetRotation() end

-- Setzt die Rotation im PlaceBuilding State.
---@param _rotation number
function CPlaceBuilding.SetRotation(_rotation) end

-- Gibt die Position im PlaceBuilding State zurück.
---@return number x
---@return number y
function CPlaceBuilding.GetPlaceBuildingPosition() end