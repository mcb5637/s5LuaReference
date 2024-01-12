---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CInterface.dll

CInterface = {}

CInterface.Logic = {}

-- intern
-- 
-- Gibt den Faktor eines Schadens-Rüstungsklassen-Pärchens aus der DamageClasses.xml zurück
---@param _damageClass number
---@param _armorClass number
---@return number factor
function CInterface.Logic.GetDamageFactorForDamageClassAndArmorClass(_damageClass, _armorClass) end

-- intern
-- 
-- Gibt die Rüstungsklasse eines EntityTypes zurück
---@param _entityType number
---@return number _armorClassId
function CInterface.Logic.GetEntityTypeArmorClass(_entityType) end

-- intern
-- 
-- Gibt die Schadensklasse eines EntityTypes zurück
---@param _entityType number
---@return number _armorClassId
function CInterface.Logic.GetEntityTypeDamageClass(_entityType) end

-- intern
-- 
-- Gibt den Base Damage einer EntityTypes zurück
---@param _entityType number
---@return number _baseDamage
function CInterface.Logic.GetTypeBaseDamage(_entityType) end

CInterface.TestInterface = {}

-- intern
function CInterface.TestInterface.CreateProjectile() end

-- intern
function CInterface.TestInterface.GetBuildOns() end

-- ****************************************************************************************************** --

CPlayerStatus = {}

-- intern
function CPlayerStatus.p() end

-- intern
function CPlayerStatus.p2() end

-- intern
-- 
-- Gibt ein Table mit allen Arbeitern des Spielers zurück
---@param _playerId number
---@return table
function CPlayerStatus.ReadWorkerList(_playerId) end

-- intern
-- 
-- Entfernt einen Arbeiter von der Liste.
-- Er ist noch im Spiel und arbeitet zählt aber nicht mehr zum Bevölkerungslimit ... lieber nicht anfassen
---@param _playerId number
function CPlayerStatus.RemoveOneWorkerFromList(_playerId) end

-- intern
function CPlayerStatus.WriteWorkerList() end

Attachment = {}
-- intern
function Attachment.GetNumberOfAttachedEnemies() end

-- ****************************************************************************************************** --

CGame = {}
-- intern
function CGame.e() end
-- intern
function CGame.t() end

-- ****************************************************************************************************** --

CGLGameLogic = {}
-- intern
function CGLGameLogic.gl() end

-- ****************************************************************************************************** --

Chunk = {}
-- intern
function Chunk.new() end

-- ****************************************************************************************************** --

Draw = {}
-- intern
function Draw.DrawCircle() end

-- ****************************************************************************************************** --

CSettler = {}
-- intern
function CSettler.e() end

-- ****************************************************************************************************** --

Pathfinding = {}

-- Gibt den Laufweg zwischen Position1 und Position2 mit Hunderter zurück
---@param _x1 number
---@param _y1 number
---@param _x2 number
---@param _y2 number
---@return table|nil positions
function Pathfinding.FindPath(_x1, _y1, _x2, _y2) end

-- Gibt den Laufweg zwischen Position1 und Position2 mit Hunderter zurück
---@param _x1 number
---@param _y1 number
---@param _x2 number
---@param _y2 number
---@return table|nil positions
function Pathfinding.FindPathNew(_x1, _y1, _x2, _y2) end

-- Gibt den Laufweg zwischen Position1 und Position2 mit Hunderter zurück, wenn dieser kürzer gleich _maxlength ist
---@param _x1 number
---@param _y1 number
---@param _x2 number
---@param _y2 number
---@param _maxlength number
---@return table|nil positions
function Pathfinding.FindPathStopLength(_x1, _y1, _x2, _y2, _maxlength) end

-- Gibt die Laufdistanz zwischen Position1 und Position2 zurück (-1, wenn kein Path existiert)
-- 
-- Achtung: Parameter sind mit Hunderter, Return ohne
---@param _x1 number
---@param _y1 number
---@param _x2 number
---@param _y2 number
function Pathfinding.GetPathDistance(_x1, _y1, _x2, _y2) end