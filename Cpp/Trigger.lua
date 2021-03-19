--- C
-- Trigger aktivieren/deaktivieren/pausieren
Trigger = {}

--- pausiert einen Trigger.
function Trigger.DisableTrigger(_tId) end

--- pausiert alle trigger (1)/lässt sie weiterlaufen (0). (Cutscene, Defeat)
function Trigger.DisableTriggerSystem(_flag) end

--- lässt einen Trigger weiterlaufen.
function Trigger.EnableTrigger(_tId) end

--- Gibt den pausestatus des triggers zurück.
-- return 0/1?
-- Trigger.DisableTriggerSystem beachtet?
function Trigger.IsTriggerEnabled(_tId) end

--- Erstellt einen neuen Trigger. Innerhalb der _conFunc und _actFunc können passende Funktionen aus Event aufgerufen werden.
-- Empfolen ist die Verwendung eines Trigger-Fixes, damit können funktionen und allgemeine tables übergeben werden.
-- 
-- Parameter:
-- - _event: Events.XXX
-- - _conFunc: Aufgerufen wird: _G[_conFunc](unpack(_conParam)). Muss true returnen, damit _actFunc aufgerufen wird. nil->immer ausgeführt
-- - _actFunc: Aufgerufen wird: _G[_actFunc](unpack(_actParam)). return true entfernt Trigger
-- - _enabled: 1-> Trigger läuft, 0-> muss mit Trigger.EnableTrigger aktiviert werden.
-- - _conParam: table mit Parametern für _conFunc. darf nur booleans, numberss und strings enthalten.
-- - _actParam: table mit parametern für _actFunc. darf nur booleans, numberss und strings enthalten.
-- 
-- return: tId
function Trigger.RequestTrigger(_event, _conFunc, _actFunc, _enabled, _conParam, _actParam) end

--- entfernt einen Trigger komplett.
function Trigger.UnrequestTrigger(_tId) end
