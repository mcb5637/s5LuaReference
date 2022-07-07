--- Funktionen um Scripte zu laden.
-- C
Script = {}

--- !!! Democopy
-- Schreibt missionScripting Variablen in das Logfile
function Script.Debug_DumpVariables(_pref) end

--- Lädt angegebenes Script.
-- _path: interner oder externer (absoluter) Pfad zum zu ladenden Script
---@param _path string
function Script.Load(_path) end

--- Lädt alle Scripte im angegebenen Ordner.
---@param _path string
function Script.LoadFolder(_path) end
