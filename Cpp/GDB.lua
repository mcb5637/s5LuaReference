---@diagnostic disable: missing-return
--- Funktionen, um Werte savegameübergreifend zu speichern.
-- C
GDB = {}

--- Gibt eine gespeicherte Zeichenkette zurück.
---@param _key string
---@return string -- gespeicherte Zeichenkette (leer, falls Schlüssel nicht vorhanden)
function GDB.GetString(_key) end

--- Gibt einen gespeicherten Wert zurück (untested).
---@param _key string
---@return number -- gespeicherter Wert (0, falls Schlüssel nicht vorhanden)
function GDB.GetValue(_key) end

--- !!! democopy
--- Prüft, ob _key vorhanden und in Ordnung ist.
---@param _key string
---@return boolean
function GDB.IsKeyValid(_key) end

--- !!! democopy
-- Speichert GDB-Datei.
-- Funktioniert auch ohne! Warum???
function GDB.Save() end

--- Speichert eine Zeichenkette unter einem Schlüssel ab.
---@param _key string
---@param _string string
function GDB.SetString(_key, _string) end

--- Speichert eine Zahl unter einem Schlüssel ab.
---@param _key string
---@param _value number
function GDB.SetValue(_key, _value) end

--- ???
function GDB.SetStringNoSave() end

--- ???
function GDB.SetValueNoSave() end
