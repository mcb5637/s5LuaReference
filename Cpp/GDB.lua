--- Funktionen, um Werte Savegameübergreifend zu speichern.
-- C
GDB = {}

--- Gibt einen gespeicherten String zurück
-- _key: String unter dem der String abgespeichert wurde
-- return: gespeicherten String (key existiert nicht???)
function GDB.GetString(_key) end

--- Gibt einen gespeicherten Wert zurück (untested)
-- _key: STRING! unter dem der Wert abgespeichert wurde
-- return: Gespeicherter Wert oder 0, wenn _key nicht existent
function GDB.GetValue(_key) end

--- !!! democopy
-- Prüft, ob _key existiert und in Ordnung ist.
-- _key: String
-- return: true/false
function GDB.IsKeyValid(_key) end

--- !!! democopy
-- Speichert GDB-Datei.
-- Funktioniert auch ohne! Warum???
function GDB.Save() end

--- Setzt _key auf _string (beides strings)
function GDB.SetString(_key, _string) end

--- Setzt _key (STRING!) auf _value (int) (untested)
function GDB.SetValue(_key, _value) end

--- ???
function GDB.SetStringNoSave() end

--- ???
function GDB.SetValueNoSave() end
