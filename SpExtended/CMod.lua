---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CMod.dll

CMod = {}

-- Fügt der Entities.xml einen Eintrag hinzu.
-- Funktioniert nur im OnMapStart Callback (oder früher) aus einer Mods lua oder der Map.
-- Siehe MP_SettlerServer/Mod_menu.lua
---@param _entityTypeName string
function CMod.AddEntity(_entityTypeName) end

-- Fügt der Logic.xml einen Eintrag hinzu.
-- Funktioniert nur im OnMapStart Callback (oder früher) aus einer Mods lua oder der Map.
-- Siehe MP_SettlerServer/Mod_menu.lua
---@param _logicProperty string xml
function CMod.AppendToLogicXML(_logicProperty) end

-- Fügt einer xml einen Eintrag hinzu.
-- Funktioniert nur im OnMapStart Callback (oder früher) aus einer Mods lua oder der Map.
---@param _fileName string
---@param _logicProperty string xml
function CMod.AppendToXML(_fileName, _logicProperty) end

-- Leitet den Pfad um
---@param _oldPath string
---@param _newPath string
function CMod.DetourFile(_oldPath, _newPath) end

-- Leitet eine Texture auf eine Memory Texture (CMod.TextureCreate) um
---@param _path string
---@param _textureID number
function CMod.DetourTextureWithMemoryTexture(_path, _textureID) end

-- Gibt alle geladenen Archive zurück. Der erste return Wert ist das Archiv welches zuletzt geladen wurde
---@return string archive
---@return string ...
function CMod.GetAllArchives() end

-- Gibt den Mapnamen der Karte anhand des Savegames zurück
---@param _savegame string
---@return string mapname
function CMod.GetMapNameFromSaveGame(_savegame) end

-- Gibt die TextureID zurück
---@param _path string
---@return number textureID
function CMod.GetTextureID(_path) end

-- intern
function CMod.LoadFromMPSettlerServer() end

-- intern
function CMod.LoadLogic() end

-- Entfernt das zuletzt geladene Archiv
function CMod.PopArchive() end

-- Fügt ein Archiv hinzu
---@param _fullPath string
---@return boolean success
function CMod.PushArchive(_fullPath) end

-- Fügt ein Archiv hinzu
---@param _relativePath string
---@return boolean success
function CMod.PushArchiveRelative(_relativePath) end

-- Enrfernt eine LogicProperty aus der Logic.xml
---@param _logicProperty string
function CMod.RemoveFromLogicXML(_logicProperty) end

-- Setzt Detours/Entities/Logic/XML-Appends zurück.
function CMod.Reset() end

-- Erstellt eine Textur
---@param _width number
---@param _height number
---@return number textureID
function CMod.TextureCreate(_width, _height) end

-- Löscht eine Textur
---@param _textureID number
function CMod.TextureDelete(_textureID) end

-- Setzt den RGBA-Wert eines Pixel einer Textur
---@param _textureID number
---@param _x number
---@param _y number
---@param _r number
---@param _g number
---@param _b number
---@param _a number
function CMod.TextureSetPixel(_textureID, _x, _y, _r, _g, _b, _a) end

-- Updatet eine Textur
---@param _path string
function CMod.UpdateTexture(_path) end