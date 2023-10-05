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

--- Gibt zurück ob es sich um die Demoversion handelt, immer false
---@return boolean
function Framework.CheckIDV() end

--- Beendet die Map und geht zum Hauptmenü beim nächsten engine update.
function Framework.CloseGame() end

--- wirft eine BB::CMessageException, wenn in debug mode.
--- nicht verwenden, c++ exceptions durch lua zu werfen sorgt für probleme!
---@param msg string
function Framework.DbgCppException(msg) end

--- funktionslos
function Framework.DbgError() end

--- verursacht einen segfault, wenn in debug mode.
function Framework.DbgException() end

--- verursacht einen pure virtual func call, wenn in debug mode.
function Framework.DbgPureVirtualFunctionCall() end

--- Beendet das Spiel und kehrt zum Desktop zurück beim nächsten engine update.
function Framework.ExitGame() end

--- Updated die Endstatistiken (für das postgame im mainmenu)
function Framework.GameResult_Update() end

--- Gibt den vollen Pfad auf der S5-CD zurück.
---@return boolean found
---@return string path
---@param _file string
function Framework.GetCDPath(_file) end

--- Gibt den Namen der aktuellen Map zurück (ohne .s5x).
---@return string
function Framework.GetCurrentMapName() end

--- Gibt den Maptyp und den Kanpangienname zurück.
---@return number type
---@return string cName (may be empty string)
function Framework.GetCurrentMapTypeAndCampaignName() end

--- Gibt den Index der Map zurück.
-- Viel wichtiger: Einzige Funktuion, die nicht bei falscher Map abstürzt (gibt -1 zurück)!
---@param _name string
---@param _type number
---@param _cName string|nil
---@return number
function Framework.GetIndexOfMapName(_name, _type, _cName) end

--- Gibt Informationen zu Multiplayermaps zurück.
---@param _name string
---@param __type number
---@param _cName string|nil
---@return number mpFlag
---@return number maxPlayers
---@return number mpFlags
---@return string|nil mapGUID
function Framework.GetMapMultiplayerInformation(_name, __type, _cName) end

--- Gibt Name und Beschreibungstext zurück.
---@return string name
---@return string desc
function Framework.GetMapNameAndDescription(_name, _type, _cName) end

--- Gibt die mapnamen (filenamen) mit dem entsprechenden Indexs zurück.
--- _number muss <10 sein, ansonsten gibt es undefined behavior (wäre es so schwer gewesen, lua_checkstack zu benutzen?)
-- return: number, name1, name2,...
---@return number amount
---@return string name1
function Framework.GetMapNames(_startIndex, _number, _type, _cName) end

--- Gibt den Pfad zur Mapvorschautextur zurück.
-- bei einer s5x immer 'data\\graphics\\Textures\\GUI\\MapPics\\externalmap', egal was in der info.xml steht.
-- bei einer s5x wird außerdem die textur aus der s5x geladen.
---@return string
---@param _name string
---@param _type number
---@param _cName string|nil
function Framework.GetMapPreviewMapTextureName(_name, _type, _cName) end

--- Gibt die Anzahl der Maps zurück.
---@return number am (may be 0)
---@param _type number
---@param _cName string|nil
function Framework.GetNumberOfMaps(_type, _cName) end

--- Gibt die Programmversion als String zurück.
-- z.B.: "1.06.0217 Extra2"
---@return string
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
--- (nil, wenn der save nicht existiert)
---@return string|nil
function Framework.GetSaveGameString(_savegameSlot) end

--- Gibt zurück ob Autoupdate Angezeigt werden soll.
-- return: 0/-1
---@return number
function Framework.GetShowAutoupdate() end

--- Gibt das Datum als String der Form Jahr-Monat-Tag-Stunden-Minuten-Sekunden zurück.
-- (Für Savegames)
function Framework.GetSystemTimeDateString() end

--- Gibt leeren string zurück.
---@return string
function Framework.GetVName() end

--- Gibt zurück, ob ein Savegame geladen werden kann.
--- prüft, ob die im save gespeicherte map existiert und dieselbe GUID hat.
---@return boolean
function Framework.IsSaveGameValid(_savegameSlot) end

--- Lädt den Spielstand beim nächsten engine update.
---@param _savegameSlot string
function Framework.LoadGame(_savegameSlot) end

--- Funktionslos
function Framework.OpenDemoPostScreenUrl() end

--- Spielt ein Video im Vollbild ab.
---@param _file string
---@param _bool boolean|nil
function Framework.PlayVideo(_file, _bool) end

--- Startet die Map neu beim nächsten engine update.
function Framework.RestartMap() end

--- Speichert den Spielstand ohne Überschreibwarnung.
---@param _savegameSlot string sollte "save_X" oder "quicksave" sein (name des ordners, zum laden genutzt)
---@param _savegameName string anzeigename
---@param _debugSave boolean|nil sollte immer false/nil sein, ansonsten wird in Temp/DebugSave/ gespeichert, von wo nicht geladen werden kann.
function Framework.SaveGame(_savegameSlot, _savegameName, _debugSave) end

--- Gibt zurück, ob Videos abgespielt werden sollen.
---@return boolean
function Framework.ShouldPlayVideos() end

--- Gibt zurück ob 2 Spezialvideos existieren:
-- GCSpecial, MakingOf
---@return boolean
function Framework.SpecialVideosExisting() end

--- Startet Support\\AutoUpdate\\SHoKAutoUpdate.exe
---@return number found 0/-1
function Framework.StartAutoupdate() end

--- Startet die Map beim nächsten engine update.
---@param _name string
---@param _type number
---@param _cName string|nil
function Framework.StartMap(_name, _type, _cName) end

--- Startet ein Spiel im MP.
---@param _name string
---@param _type number
function Framework.StartMultiPlayer(_name, _type) end
