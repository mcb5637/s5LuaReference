---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CEntityIterator.dll

CEntityIterator = {}

-- for id in CEntityIterator.Iterator( CEntityIterator.Filter(_Params), ... ) do
---@param ... function
function CEntityIterator.Iterator(...) end

-- for id in CEntityIterator.PrefetchedIterator( CEntityIterator.Filter(_Params), ... ) do
-- Kann in manchen Fällen schneller sein, als der normale Iterator
---@param ... function
function CEntityIterator.PrefetchedIterator(...) end

-- true, wenn die Distanz zwischen Entity und Position kleiner als _range ist.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _x number
---@param _y number
---@param _range number
function CEntityIterator.InCircleFilter(_x, _y, _range) end

-- true, wenn die Distanz zwischen Entity und Position kleiner oder gleich _range ist.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _x number
---@param _y number
---@param _range number
function CEntityIterator.InRangeFilter(_x, _y, _range) end

-- true, wenn die Entity ein Gebäude ist.
-- Nur als Parameter für CEntityIterator.Iterator
function CEntityIterator.IsBuildingFilter() end

-- true, wenn die Entity kein Soldat ist.
-- Nur als Parameter für CEntityIterator.Iterator
function CEntityIterator.IsNotSoldierFilter() end

-- true, wenn die Entity eine Einheit ist.
-- Nur als Parameter für CEntityIterator.Iterator
function CEntityIterator.IsSettlerFilter() end

-- true, wenn die Entity eine Einheit oder ein Gebäude ist.
-- Nur als Parameter für CEntityIterator.Iterator
function CEntityIterator.IsSettlerOrBuildingFilter() end

-- true, wenn die Entity einem anderen Spieler als _playerId gehört.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _playerId number
function CEntityIterator.NotOfPlayerFilter(_playerId) end

-- true, wenn die Entity irgendeiner der übergebenen EntityCategories angehört.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _entityCategory number
---@param ... number
function CEntityIterator.OfAnyCategoryFilter(_entityCategory, ...) end

-- true, wenn die Entity einem der übergebenen Spieler gehört.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _playerId number
---@param ... number
function CEntityIterator.OfAnyPlayerFilter(_playerId, ...) end

-- true, wenn die Entity einem der übergebenen EntityTpyes entspricht.
-- Nur als Parameter für CEntityIterator.Iterator
---@param _entityType number
---@param ... number
function CEntityIterator.OfAnyTypeFilter(_entityType, ...) end

-- true, wenn die Entity der übergebenen EntityCategory angehört.
---@param _entityCategory number
function CEntityIterator.OfCategoryFilter(_entityCategory) end

-- true, wenn die Entity der übergebenen EntityCategory angehört.
---@param _class number
function CEntityIterator.OfClassFilter(_class) end

-- true, wenn die Entity dem übergebenen Spieler gehört.
---@param _playerId number
function CEntityIterator.OfPlayerFilter(_playerId) end

-- true, wenn die Entity dem übergebenen EntityType entspricht.
---@param _entityType number
function CEntityIterator.OfTypeFilter(_entityType) end