--- Funktionen um Scripte zu laden.
-- C
Script = {}

--- !!! Democopy
-- Schreibt missionScripting Variablen in das Logfile
function Script.Debug_DumpVariables(_pref) end

--- Lädt angegebenes Script.
-- _path: interner oder externer (absoluter) Pfad zum zu ladenden Script
function Script.Load(_path) end

--- Lädt alle Scripte im angegebenen Ordner.
function Script.LoadFolder(_path) end
