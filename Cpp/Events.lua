--- C
-- eventtypen
Events = {}

--- diplomatie geändert
-- Event.GetDiplomacyState() 
Events.LOGIC_EVENT_DIPLOMACY_CHANGED = nil

--- entity erstellt (nachher)
-- Event.GetEntityID() Event.GetSourcePlayerID() Event.GetTargetPlayerID()
Events.LOGIC_EVENT_ENTITY_CREATED = nil

--- entity von der map entfernt (vorher)
-- Event.GetEntityID()
Events.LOGIC_EVENT_ENTITY_DESTROYED = nil

--- angriff (vorher)
-- ! crasht, wenn entity im trigger stirbt
-- Event.GetEntityID1() und Event.GetEntityID2()
Events.LOGIC_EVENT_ENTITY_HURT_ENTITY = nil

--- entty in reichweite (entitys/Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY per Logic.AddEntityToEntityDistanceCheck registrieren)  
-- geschwindigkeit von SimpleJob
-- Event.GetDistance() Event.GetEntityID1() Event.GetEntityID2() ??
Events.LOGIC_EVENT_ENTITY_IN_RANGE_OF_ENTITY = nil

--- jede Sekunde (SimpleJob)
Events.LOGIC_EVENT_EVERY_SECOND = nil

--- jede 10/sekunde (HiResJob)
Events.LOGIC_EVENT_EVERY_TURN = nil

--- handel erfolgreich?
-- Event.GetEntityID() Event.GetBuyAmount() Event.GetBuyResource() Event.GetSellAmount() Event.GetSellResource()
Events.LOGIC_EVENT_GOODS_TRADED = nil

--- funktionslos
Events.LOGIC_EVENT_PLAYER_DIED = nil

--- erforschung fertig (buggy?)
-- Event.GetPlayerID() Event.GetTechnologyType()
Events.LOGIC_EVENT_RESEARCH_DONE = nil

--- Tribut gezahlt
-- Event.GetTributeUniqueID() Event.GetSourcePlayerID() Event.GetTargetPlayerID()
Events.LOGIC_EVENT_TRIBUTE_PAID = nil

--- Wetter geändert
-- Event.GetNewWeatherState() Event.GetOldWeatherState()
Events.LOGIC_EVENT_WEATHER_STATE_CHANGED = nil
