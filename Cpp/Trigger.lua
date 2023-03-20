---@diagnostic disable: duplicate-set-field, missing-return
--- C
--- Trigger system.
--- nicht syncronisiert. wenn ein trigger aus einem syncronen kontext gestartet wird, sind alle seine ausführungen ebenfalls syncron.
--- (es sei denn, etwas anderes asyncrones ändert den spielstatus)
Trigger = {}

--- pausiert einen Trigger.
---@param _tId number
function Trigger.DisableTrigger(_tId) end

--- pausiert alle trigger (1)/lässt sie weiterlaufen (0). (Cutscene, Defeat)
---@param _flag number
function Trigger.DisableTriggerSystem(_flag) end

--- lässt einen Trigger weiterlaufen.
---@param _tId number
function Trigger.EnableTrigger(_tId) end

--- Gibt den pausestatus des triggers zurück.
-- Trigger.DisableTriggerSystem nicht beachtet.
---@param _tId number
---@return number flag
function Trigger.IsTriggerEnabled(_tId) end

--- Erstellt einen neuen Trigger. Innerhalb der _conFunc und _actFunc können passende Funktionen aus Event aufgerufen werden.
-- Empfolen ist die Verwendung eines Trigger-Fixes, damit können funktionen und allgemeine tables übergeben werden.
---@param _event number Events.XXX
---@param _conFunc string Aufgerufen wird: _G[_conFunc](unpack(_conParam)). Muss true returnen, damit _actFunc aufgerufen wird. nil,""->immer ausgeführt
---@param _actFunc string  Aufgerufen wird: _G[_actFunc](unpack(_actParam)). return true entfernt Trigger
---@param _enabled number 1-> Trigger läuft, 0-> muss mit Trigger.EnableTrigger aktiviert werden.
---@param _conParam table table mit Parametern für _conFunc. darf nur numbers und strings enthalten.
---@param _actParam table table mit parametern für _actFunc. darf nur numbers und strings enthalten.
---@return number tid
---@return number eventid
function Trigger.RequestTrigger(_event, _conFunc, _actFunc, _enabled, _conParam, _actParam) end

--- entfernt einen Trigger komplett.
---@param _tId number
function Trigger.UnrequestTrigger(_tId) end
