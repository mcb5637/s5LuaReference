---@diagnostic disable: missing-return
--- Funktionen zum Speichern, Laden, Mapladen...
-- C
-- 
-- Maptyp: -1->Kampangie, 0->sp, 2->mp, 3->.s5x<br>
-- Kampangienname: Main, Extra1, Extra2\_1, Extra2\_2, Extra2\_3, Extra2\_4, nil  
-- \_mapname: Der Name einer Map. Bei .s5x-Dateien der Dateiname ohne Endung. Bei falschen Dateinamen stürzr S5 ab! (Prüfung mit Framework.GetIndexOfMapName)
-- 
-- \_savegameSlot: Normalerweise "save\_"..x. Existiert es nicht, stürtst S5 beim laden ab!  (Prüfung mit Framework.IsSaveGameValid)
Framework = {}

--- Gibt zurück ob es sich um die Demoversion handelt???
function Framework.CheckIDV() end

--- Beendet die Map und geht zum Hauptmenü.
function Framework.CloseGame() end

--- ???
function Framework.DbgCppException() end

--- ???
function Framework.DbgError() end

--- ???
function Framework.DbgException() end

--- ???
function Framework.DbgPureVirtualFunctionCall() end

--- Beendet das Spiel und kehrt zum Desktop zurück.
function Framework.ExitGame() end

--- !!! democopy
-- Updated die Endstatistiken.
function Framework.GameResult_Update() end

--- Gibt den vollen Pfad auf der S5-CD zurück.
-- return: found, path
function Framework.GetCDPath(_file) end

--- Gibt den Namen der aktuellen Map zurück (ohne .s5x).
---@return string
function Framework.GetCurrentMapName() end

--- Gibt den Maptyp und den Kanpangienname zurück.
---@return number
---@return string
function Framework.GetCurrentMapTypeAndCampaignName() end

--- Gibt den Index der Map zurück.
-- Viel wichtiger: Einzige Funktuion, die nicht bei falscher Map abstürzt (gibt -1 zurück)!
function Framework.GetIndexOfMapName(_name, _type, _cName) end

--- Gibt Informationen zu Multiplayermaps zurück.
-- return: isMPFlag, maxPlayers, mpFlags ???, mapGUID ???
function Framework.GetMapMultiplayerInformation(_name, __type, _cName) end

--- Gibt Name und Beschreibungstext zurück.
-- return: name, desc
function Framework.GetMapNameAndDescription(_name, _type, _cName) end

--- Gibt die mapnamen (filenamen) mit dem entsprechenden Indexs zurück.
--- _number muss <10 sein, ansonsten gibt es undefined behavior (wäre es so schwer gewesen, lua_checkstack zu benutzen?)
-- return: number, name1, name2,...
function Framework.GetMapNames(_startIndex, _number, _type, _cName) end

--- Gibt den Pfad zur Mapvorschautextur zurück.
-- bei einer s5x immer 'data\\graphics\\Textures\\GUI\\MapPics\\externalmap', egal was in der info.xml steht.
-- bei einer s5x wird außerdem die textur aus der s5x geladen.
function Framework.GetMapPreviewMapTextureName(_name, _type, _cName) end

--- Gibt die Anzahl der Maps zurück.
function Framework.GetNumberOfMaps(_type, _cName) end

--- Gibt die Programmversion als String zurück.
-- z.B.: "1.06.0217 Extra2"
function Framework.GetProgramVersion() end

--- Gibt die Savegameslots der Savegames zurück. (alles im SaveGames ordner)
--- _number muss <10 sein, ansonsten gibt es undefined behavior (wäre es so schwer gewesen, lua_checkstack zu benutzen?)
-- return: number, name1, name2,...
---@param _index number
---@param _number number
---@return number num
---@return string save1
function Framework.GetSaveGameNames(_index, _number) end

--- Gibt den Anzeigenamen des Savegames zurück.
function Framework.GetSaveGameString(_savegameSlot) end

--- Gibt zurück ob Autoupdate Angezeigt werden soll.
-- return: ???
function Framework.GetShowAutoupdate() end

--- Gibt das Datum als String der Form Jahr-Monat-Tag-Stunden-Minuten-Sekunden zurück.
-- (Für Savegames)
function Framework.GetSystemTimeDateString() end

--- Gibt den Versionsnamen zurück. (Angezeigt im Hauptmenü).
-- ==Framework.GetProgramVersion() ??
function Framework.GetVName() end

--- Gibt zurück, ob ein Savegame geladen werden kann.
--- prüft, ob die im save gespeicherte map existiert und dieselbe GUID hat.
---@return boolean
function Framework.IsSaveGameValid(_savegameSlot) end

--- Lädt den Spielstand.
function Framework.LoadGame(_savegameSlot) end

--- Funktionslos
function Framework.OpenDemoPostScreenUrl() end

--- Spielt ein Video im Vollbild ab.
-- _bool ??? (nil funktioniert)
function Framework.PlayVideo(_file, _bool) end

--- Startet die Map neu.
function Framework.RestartMap() end

--- Speichert den Spielstand ohne Überschreibwarnung.
---@param _savegameSlot string sollte "sane_X" oder "quicksave" sein (name des ordners, zum laden genutzt)
---@param _savegameName string anzeigename
---@param _debugSave boolean|nil sollte immer false/nil sein, ansonsten wird in Temp/DebugSave/ gespeichert, von wo nicht geladen werden kann.
function Framework.SaveGame(_savegameSlot, _savegameName, _debugSave) end

--- Gibt zurück, ob Videos abgespielt werden sollen.
-- return: true/false
function Framework.ShouldPlayVideos() end

--- Gibt zurück ob 2 Spezialvideos existieren:
-- GCSpecial, MakingOf
function Framework.SpecialVideosExisting() end

--- Startet das Autoupdate???
function Framework.StartAutoupdate() end

--- Startet die Map.
function Framework.StartMap(_name, _type, _cName) end

--- Startet ein Spiel im MP.
-- _cName: Überhaupt möglich???
function Framework.StartMultiPlayer(_name, _type, _cName) end
