--- C
-- funktionen innerhalb von triggern
Event = {}

--- gibt die gekaufte menge zurück.  Events.LOGIC_EVENT_GOODS_TRADED
---@return number
function Event.GetBuyAmount() end

--- gibt den gekauften typ zurück.  Events.LOGIC_EVENT_GOODS_TRADED
---@return number
function Event.GetBuyResource() end

--- gibt den neuen diplomatiestatus zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED
---@return number
function Event.GetDiplomacyState() end

--- gibt die entfernung zurück.  Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
---@return number
function Event.GetDistance() end

--- gibt die id des betroffenen entitys zurück. Events.LOGIC_EVENT_ENTITY_CREATED Events.LOGIC_EVENT_ENTITY_DESTROYED Events.LOGIC_EVENT_GOODS_TRADED
---@return number
function Event.GetEntityID() end

--- gibt den angreifer zurück.  Events.LOGIC_EVENT_ENTITY_HURT_ENTITY Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
---@return number
function Event.GetEntityID1() end

--- gibt das ziel zurück.  Events.LOGIC_EVENT_ENTITY_HURT_ENTITY Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
---@return number
function Event.GetEntityID2() end

--- gibt die neue wetterid zurück.  Events.LOGIC_EVENT_WEATHER_STATE_CHANGED
---@return number
function Event.GetNewWeatherState() end

--- gibt die alte wetterid zurück.  Events.LOGIC_EVENT_WEATHER_STATE_CHANGED
---@return number
function Event.GetOldWeatherState() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_RESEARCH_DONE Events.LOGIC_EVENT_PLAYER_DIED
---@return number
function Event.GetPlayerID() end

--- gibt die verkaufte menge zurück.  Events.LOGIC_EVENT_GOODS_TRADED
---@return number
function Event.GetSellAmount() end

--- gibt den verkauften typ zurück.  Events.LOGIC_EVENT_GOODS_TRADED
---@return number
function Event.GetSellResource() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED Events.LOGIC_EVENT_TRIBUTE_PAID
---@return number
function Event.GetSourcePlayerID() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED Events.LOGIC_EVENT_TRIBUTE_PAID
---@return number
function Event.GetTargetPlayerID() end

--- gibt die technologie turück.  Events.LOGIC_EVENT_RESEARCH_DONE
---@return number
function Event.GetTechnologyType() end

--- gibt die id des bezahlten Tributes zurück.  Events.LOGIC_EVENT_TRIBUTE_PAID
---@return number
function Event.GetTributeUniqueID() end