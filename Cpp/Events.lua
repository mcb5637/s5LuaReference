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
-- Event.GetEntityID1() attacker und Event.GetEntityID2() target
-- mit TriggerFix+CppLogic: Event.AttackSource Event.GetPlayerID() attacker player Event.Damage modifyable
-- Event.GetPlayerID() may have an player set, even if Event.GetEntityID1() is 0
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

--- erforschung fertig (nicht aufgerufen ohne CppLogic)
--- Event.GetEntityID() gebäude, in dem geforscht wird.
--- Event.GetTechnologyType() tech die erforscht wird.
--- Event.GetPlayerID() spieler der forscht.
Events.LOGIC_EVENT_RESEARCH_DONE = nil

--- Tribut gezahlt
-- Event.GetTributeUniqueID() Event.GetSourcePlayerID() Event.GetTargetPlayerID()
Events.LOGIC_EVENT_TRIBUTE_PAID = nil

--- Wetter geändert
-- Event.GetNewWeatherState() Event.GetOldWeatherState()
Events.LOGIC_EVENT_WEATHER_STATE_CHANGED = nil

--- CppLogic event. entity getötet (vorher, nach hurt).
-- Event.GetEntityID1() attacker und Event.GetEntityID2() target
-- Event.AttackSource Event.GetPlayerID() attacker player
-- Event.GetPlayerID() may have an player set, even if Event.GetEntityID1() is 0
Events.CPPLOGIC_EVENT_ON_ENTITY_KILLS_ENTITY = nil

--- CppLogic event. nachdem steuern eingenommen wurden, aber bevor sold gezahlt wurde.
-- Event.GetPlayerID() player id
-- Event.GetBuyAmount() steuern Event.GetBuyResource() steuer resource (GoldRaw)
-- Event.GetSellAmount() sold Event.GetSellResource() sold resource (Gold)
Events.CPPLOGIC_EVENT_ON_PAYDAY = nil

--- CppLogic event. nachdem helias ein ziel bekehrt hat.
-- id changed from Event.GetEntityID1() (no longer valid) to Event.GetEntityID2()
-- Event.GetEntityID() is converting helias
Events.CPPLOGIC_EVENT_ON_CONVERT_ENTITY = nil

--- CppLogic event. nachdem ein effect erstellt wurde.
-- Event.GetEntityID() ist der effect
Events.CPPLOGIC_EVENT_ON_EFFECT_CREATED = nil

--- CppLogic event. bevor ein arrow oder cannonball effect einschlägt.
-- Event.GetEntityID() ist der effect
Events.CPPLOGIC_EVENT_ON_FLYINGEFFECT_HIT = nil

--- CppLogic event. während ein effect destroyed wird.
-- auch arrow und cannonball effekte sind bei aufruf nurnoch ein effect.
-- Event.GetEntityID() ist der effect
Events.CPPLOGIC_EVENT_ON_EFFECT_DESTROYED = nil

--- CppLogic event. während ein veredler resourcen veredelt.
-- vor dem hinzufügen der resource und GameCallback_GainedResources.
-- Event.GetEntityID() der veredler (worker) Event.GetBuyAmount() menge Event.GetBuyResource() ResourceType Event.GetSellResource() raw ResourceType
Events.CPPLOGIC_EVENT_ON_RESOURCE_REFINED = nil

--- CppLogic event. während ein minenarbeiter oder leibeigener resourcen abbaut.
-- vor dem hinzufügen der resource und GameCallback_GainedResources.
-- Event.GetEntityID() der veredler (worker)/serf Event.GetBuyAmount() menge Event.GetBuyResource()
Events.CPPLOGIC_EVENT_ON_RESOURCE_MINED = nil

--- CppLogic event. während ein veredler resourcen abholt.
-- vor dem entfernen der resource.
-- Event.GetEntityID() der veredler (worker) Event.GetSellAmount() menge Event.GetSellResource() ResourceType
Events.CPPLOGIC_EVENT_ON_REFINER_SUPPLY_TAKEN = nil

--- CppLogic event. während dem kauf von einem settler (und worker).
--- Event.GetEntityID() gebäude, das den settler kauft.
--- Event.ToBuy entitytyp, der gekauft werden soll.
--- Event.TargetID workplace für den worker, leader für den soldier, sonst 0.
--- Event.HasVCSpace hat der spieler genug VC platz (änderbar).
--- Event.HasCost hat der spieler genug resourcen (änderbar) (ignoriert bei worker).
--- Event.HasMotivation hat der spieler genug motivation (änderbar).
--- Event.IsNotAlarmLocked ist das kaufgebäude nicht im alarm (änderbar).
--- Event.HasHQSpace hat der spieler freie serf plätze (änderbar) (ignoriert bei allem was kein serf ist).
Events.CPPLOGIC_EVENT_CAN_BUY_SETTLER = nil

--- CppLogic ModLoader event. beim starten einer map, nach GameCallback_OnGameStart.
Events.CPPLOGIC_EVENT_ON_MAP_STARTED = nil

--- CppLogic ModLoader event. beim laden eines savegames, nach GameCallback_LocalRecreateGameLogic
Events.CPPLOGIC_EVENT_ON_SAVEGAME_LOADED = nil

--- CppLogic event. nachdem eine Forschung gestarted wurde.
--- Event.GetEntityID() gebäude, in dem geforscht wird.
--- Event.GetTechnologyType() tech die erforscht wird.
--- Event.GetPlayerID() spieler der forscht.
Events.CPPLOGIC_EVENT_ON_RESEARCH_STARTED = nil

--- CppLogic event. fotrschritt bei einer Forschung gemacht.
--- Event.GetEntityID2() gebäude, in dem geforscht wird.
--- Event.GetEntityID1() arbeiter, der fortschritt macht (oder 0).
--- Event.GetTechnologyType() tech die erforscht wird.
--- CppLogic.Logic.GetResearchTriggerProgress()/CppLogic.Logic.SetResearchTriggerProgress fortschritt
Events.CPPLOGIC_EVENT_ON_RESEARCH_PROGRESS = nil

--- CppLogic event. fortschritt beim gebäudebau.
--- Event.GetEntityID() constructionsite des gebäudes, das gebaut wird.
--- CppLogic.Logic.ConstructionTriggerGetProgress()/CppLogic.Logic.ConstructionTriggerSetProgress() fortschritt pro serf
Events.CPPLOGIC_EVENT_ON_CONSTRUCTION_PROGRESS = nil

--- CppLogic event. eine resource ändert sich aus irgendeinem grund (vor der änderung).
--- vorsicht, resourcen im trigger ändern ruft den trigger wieder auf, kann zu einem stackoverflow führen!
-- Event.GetPlayerID() player id
-- Event.GetSellAmount() res die abgezogen werden (negativ für hinzugefügte res)
-- Event.GetSellResource() res type der geändert wird
Events.CPPLOGIC_EVENT_ON_RESOURCE_CHANGED = nil

--- triggerfix script event. entity getötet (vorher, nach hurt).
-- ohne TriggerFixCppLogicExtension können ids von soldiern inkorrekt sein.
-- Event.GetEntityID1() attacker und Event.GetEntityID2() target
-- mit TriggerFix+CppLogic: Event.AttackSource Event.GetPlayerID() attacker player
-- Event.GetPlayerID() may have an player set, even if Event.GetEntityID1() is 0
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

--- TriggerFixCppLogicExtension script event.
-- id changed from Event.GetEntityID1() (no longer valid) to Event.GetEntityID2()
-- Event.GetEntityID() is converting helias
Events.SCRIPT_EVENT_ON_CONVERT_ENTITY = nil

--- CppLogic event. triggered when the local player clicks on the map
--- before gui states, but after widgets
Events.CPPLOGIC_EVENT_ON_CLICK_ON_MAP = nil
