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

--- triggerfix script event. entity getötet (vorher, nach hurt).
-- Event.GetEntityID1() und Event.GetEntityID2()
Events.SCRIPT_EVENT_ON_ENTITY_KILLS_ENTITY = nil

--- triggerfix script event.
Events.SCRIPT_EVENT_ON_SAVEGAME_LOADED = nil

--- triggerfix script event.
Events.SCRIPT_EVENT_ON_DO_INITIALIZATION = nil

--- triggerfix script event.
Events.SCRIPT_EVENT_LOW_PRIORITY = nil

--- EntityIdChangedHelper script event.
-- id changed from Event.GetEntityID1() to Event.GetEntityID2()
Events.SCRIPT_EVENT_ON_ENTITY_ID_CHANGED = nil

--- FrameworkWrapper script event.
-- Event.Reason
Events.SCRIPT_EVENT_ON_LEAVE_MAP = nil

--- FrameworkWrapper script event.
-- Event.Slot
Events.SCRIPT_EVENT_ON_PRE_SAVE = nil

--- FrameworkWrapper script event.
-- Event.Slot
Events.SCRIPT_EVENT_ON_POST_SAVE = nil
