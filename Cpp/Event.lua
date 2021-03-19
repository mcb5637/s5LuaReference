--- C
-- funktionen innerhalb von triggern
Event = {}

--- gibt die gekaufte menge zurück.  Events.LOGIC_EVENT_GOODS_TRADED
function Event.GetBuyAmount() end

--- gibt den gekauften typ zurück.  Events.LOGIC_EVENT_GOODS_TRADED
function Event.GetBuyResource() end

--- gibt den neuen diplomatiestatus zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED
function Event.GetDiplomacyState() end

--- gibt die entfernung zurück.  Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
function Event.GetDistance() end

--- gibt die id des betroffenen entitys zurück. Events.LOGIC_EVENT_ENTITY_CREATED Events.LOGIC_EVENT_ENTITY_DESTROYED Events.LOGIC_EVENT_GOODS_TRADED
function Event.GetEntityID() end

--- gibt den angreifer zurück.  Events.LOGIC_EVENT_ENTITY_HURT_ENTITY Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
function Event.GetEntityID1() end

--- gibt das ziel zurück.  Events.LOGIC_EVENT_ENTITY_HURT_ENTITY Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY?
function Event.GetEntityID2() end

--- gibt die neue wetterid zurück.  Events.LOGIC_EVENT_WEATHER_STATE_CHANGED
function Event.GetNewWeatherState() end

--- gibt die alte wetterid zurück.  Events.LOGIC_EVENT_WEATHER_STATE_CHANGED
function Event.GetOldWeatherState() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_RESEARCH_DONE Events.LOGIC_EVENT_PLAYER_DIED
function Event.GetPlayerID() end

--- gibt die verkaufte menge zurück.  Events.LOGIC_EVENT_GOODS_TRADED
function Event.GetSellAmount() end

--- gibt den verkauften typ zurück.  Events.LOGIC_EVENT_GOODS_TRADED
function Event.GetSellResource() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED Events.LOGIC_EVENT_TRIBUTE_PAID
function Event.GetSourcePlayerID() end

--- gibt den Spieler zurück.  Events.LOGIC_EVENT_DIPLOMACY_CHANGED Events.LOGIC_EVENT_TRIBUTE_PAID
function Event.GetTargetPlayerID() end

--- gibt die technologie turück.  Events.LOGIC_EVENT_RESEARCH_DONE
function Event.GetTechnologyType() end

--- gibt die id des bezahlten Tributes zurück.  Events.LOGIC_EVENT_TRIBUTE_PAID
function Event.GetTributeUniqueID() end