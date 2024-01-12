---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras dlls

CUtilMemory = {}

-- Intern, Zeichnet alle internen new/mallocs auf.
function CUtilMemory.ActivateMemoryTracking() end
-- Intern
function CUtilMemory.Create() end
-- Intern
function CUtilMemory.CreateSafe() end
-- Intern, Beendet die Aufzeichnung.
function CUtilMemory.DeactivateMemoryTracking() end

-- Gibt die Adresse einer Entity zurück
---@param _entityId number
---@return number address
function CUtilMemory.GetEntityAddress(_entityId) end

-- Gibt einen Pointer auf ein Adresse zurück
---@param _address number
---@return userdata pointer
function CUtilMemory.GetMemory(_address) end

-- Intern, Gibt die Rücksprungadresse aus new/malloc zurück welche verwendet für den gegebenen Speicher.
---@param _address number
function CUtilMemory.GetMemoryCreator(_address) end

-- Aktiviert den floating point precision Fix
function CUtilMemory.SetPreciseFPU() end

-- Intern
function CUtilMemory.test() end