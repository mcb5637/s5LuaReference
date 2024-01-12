---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras dlls

CUtilStatistics = {}

-- Fügt eine Statistik hinzu
---@param _name string
---@param _displayName string
---@param _category string
---@param _callback string
function CUtilStatistics.AddStatistic(_name, _displayName, _category, _callback) end

-- Fügt eine Statistikkategorie hinzu
---@param _name string
---@param _displayName string
function CUtilStatistics.AddStatisticCategory(_name, _displayName) end

-- Fügt eine Statistik hinzu
---@param _name string
---@param _displayName string
---@param _displayNamePM string
---@param _category string
---@param _callback string
---@param _callbackPM string
function CUtilStatistics.AddStatisticWithPM(_name, _displayName, _displayNamePM, _category, _callback, _callbackPM) end

-- Gibt alle Statistikkategorien zurück
---@return table names
function CUtilStatistics.GetAllCategories(_name) end

-- Gibt alle Statistikkategorienamen zurück
---@return table displayNames
function CUtilStatistics.GetAllCategoriesDisplayNames() end

-- Gibt alle Statistikkategorien zurück
---@return table statistics {category=...,name=...,displayName=... ...}
function CUtilStatistics.GetAllStatistics() end

---@return number id
function CUtilStatistics.GetSelectedStatistic() end

-- Gibt zurück, ob eine Statistik existiert
---@param _name string
---@return boolean
function CUtilStatistics.IsStatisticExisting(_name) end

-- Setzt alle Statistiken zurück
function CUtilStatistics.ResetStatistics() end

-- Setzt die angezeigte Statistik
---@param _name string
function CUtilStatistics.SetActiveStatistic(_name) end

-- Setzt die Eigenschaften des Buttons einer Statistik
---@param _buttonState string
---@param _statisticName string
---@param _texturePath string
---@param _x number
---@param _y number
---@param _percentX number
---@param _percentY number
function CUtilStatistics.SetStatisticWidgetValues(_buttonState, _statisticName, _texturePath, _x, _y, _percentX, _percentY) end