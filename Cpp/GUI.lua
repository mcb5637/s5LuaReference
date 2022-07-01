--- Funktionen für die grafische Oberfläche
-- C
GUI = {}

--- cursor 19 / cursor über feind?
function GUI.ActivateAttackCommandState() end

--- cursor 24 / Command_Attack
function GUI.ActivateAttackMoveCommandState() end

--- aktiviert den automatischen Soldatenkauf nach der Ausbildung
function GUI.ActivateAutoFillAtBarracks(_buildingId) end

--- cursor 12
function GUI.ActivateBlessSettlerState() end

--- ??
function GUI.ActivateBuyLeaderState() end

--- ??
function GUI.ActivateBuySoldierState() end

--- ??
function GUI.ActivateConvertBuildingCommandState() end

--- cursor 14 / Helias-Bekehren
function GUI.ActivateConvertSettlerCommandState() end

--- cursor unsichtbar / während Cutscene/Briefing
function GUI.ActivateCutSceneState() end

--- ? / Dieb Bombe entschärfen ?
function GUI.ActivateDisarmKegCommandState() end

--- cursor 14 /  ??
function GUI.ActivateExpelSettlerState() end

--- ?? / ??
function GUI.ActivateForceWorkerToWorkState() end

--- cursor 25 / Command_Guard
function GUI.ActivateGuardCommandState() end

--- cursor 29 / Held kann NPC ansprechen
function GUI.ActivateNPCInteractionState() end

--- cursor 26 / Command_Patrol
function GUI.ActivatePatrolCommandState() end

--- cursor 27 / Pilgim Bombe legen
function GUI.ActivatePlaceBombCommandState() end

--- cursor 11 / Gebäude bauen (Serfmenü)
function GUI.ActivatePlaceBuildingState(_upCat) end

--- ? / Pilgrim Kanone + Salim Falle (Parameter als Entities.XXX)
function GUI.ActivatePlaceCannonState(_unterteilTyp, _oberteilTyp) end

--- ? / Dieb Bombe legen
function GUI.ActivatePlaceKegCommandState() end

--- ? / Scout Fackel setzen
function GUI.ActivatePlaceTorchState() end

--- ? / Scout Fernglas
function GUI.ActivateScoutBinocularsCommandState() end

--- ? / Dieb Rohstoffe abliefern ?
function GUI.ActivateSecureStolenGoodsState() end

--- cursor 16/10 / Normales selektiern
function GUI.ActivateSelectionState() end

--- ? / ?
function GUI.ActivateSellBuildingState() end

--- ? / Dario Falke senden
function GUI.ActivateSendHawkCommandState() end

--- cursor 20 / Serf Cursor über Baustelle
function GUI.ActivateSerfConstructBuildingState() end

--- cursor 21 / Serf Cursor über Rohstoffhaufen/Schacht
function GUI.ActivateSerfExtractResourceState() end

--- cursor 22 / Serf Cursor über Gebäude
function GUI.ActivateSerfRepairBuildingState() end

--- ? / Yuki Wurfsterne
function GUI.ActivateShurikenCommandState() end

--- ? / Drake Meisterschuss
function GUI.ActivateSnipeCommandState() end

--- ? / Dieb Cursor über Gebäude Rohstoffe stehlen
function GUI.ActivateStealGoodsState() end

--- ? / ?
function GUI.ActivateUpgradeBuildingState() end

--- Zeigt einen Text als Message an. _time optional=15
function GUI.AddNote(_text, _time) end

--- Zeigt den Text als Message an, bis GUI.ClearNotes aufgerufen wird
function GUI.AddStaticNote(_text) end

--- Segnen. _blessCategory: BlessCategories.XXX
function GUI.BlessByBlessCategory(_blessCategory) end

--- ???
function GUI.BlessSettler() end

--- Lässt eine Kanonengießerei eine Kanone produzieren. Stürzt ab, wenn nicht bereit!
-- _cannonType: Entities.XXX
function GUI.BuyCannon(_buildingId, _cannonType) end

--- kauft einen Helden (MP).
-- _building = 0
function GUI.BuyHero(_player, _heroType, _building) end

--- Kauft einen Leader
function GUI.BuyLeader(_barracksId, _upCat) end

--- Kauft ein angebot eines Söldnerzeltes
function GUI.BuyMerchantOffer(_merchantBuildingId, _player, _index) end

--- Kauft einen Serf
function GUI.BuySerf(_buildingId) end

--- kauft einen Soldier für diesen Leader
function GUI.BuySoldier(_leaderId) end

--- Bricht den Ausbau ab
function GUI.CancelBuildingUpgrade(_buildingId) end

--- Bricht die Forschung ab
function GUI.CancelResearch(_id, _techType) end

--- Kehrt zum normalen Mauszeiger zurück
function GUI.CancelState() end

--- Bricht den Handel ab
function GUI.CancelTransaction(_buildingId) end

--- Serf läuft zum HQ/Kaserne und wird zum BattleSerf
function GUI.ChangeToBattleSerf(_id) end

--- BattleSerf wird zum Serf
function GUI.ChangeToSerf(_id) end

--- Löscht alle GUI.AddNote und GUI.AddStaticNote
function GUI.ClearNotes() end

--- Deselektiert alle Entities
function GUI.ClearSelection() end

--- Erzeugt einen stehenden Marker
-- _color: 0->grün, 1->blau, 2->weis 3->rot
function GUI.CreateMinimapMarker(_x, _y, _color) end

--- Erzeugt einen bewegenden Marker
-- _color: 0->grün, 1->blau, 2->weis 3->rot
function GUI.CreateMinimapPulse(_x, _y, _color) end

--- Klick auf Gebäude bewirkt Ausbau?
function GUI.DEBUG_ActivateUpgradeSingleBuildingState() end

--- deaktiviert den automatischen Soldatenkauf nach der Ausbildung
function GUI.DeactivateAutoFillAtBarracks(_id) end

--- Gibt posX, posY der Map zurück, über der der Cursor gerade ist.
function GUI.Debug_GetMapPositionUnderMouse() end

--- Infos über Gebäude
function GUI.Debug_OnScreenDebug_ShowBuildingInfo(_flag) end

--- Infos über Siedler
function GUI.Debug_OnScreenDebug_ShowSettlerInfo(_flag) end

--- Infos über Gelände
function GUI.Debug_OnScreenDebug_ShowTileInfo(_flag) end

--- Alle Infos ?
function GUI.Debug_OnScreenInformation_ShowAllInformation(_flag) end

--- ???
function GUI.Debug_OnScreenInformation_ShowEffects() end

--- Deselektiert ein Entity
function GUI.DeselectEntity(_id) end

--- Löscht stehenden/beweglichen Marker an dieser Position
function GUI.DestroyMinimapPulse(_x, _y) end

--- Schaltet kampfsignale auf der Minimap an/aus
function GUI.EnableBattleSignals(_trueFalse) end

--- Alle Serfs werden BattleSerfs
function GUI.EnterSerfAlarmMode() end

--- Arbeiter fliehen in Gebäude und beschießen Gegner
function GUI.EnterWorkerAlarmMode() end

--- Entlässt ein Entity (Destroy+Grafikeffekt)
function GUI.ExpelSettler(_id) end

--- Zwing den Siedler sofort weiterzuarbeiten
function GUI.ForceSettlerToWork(_settlerId) end

--- Gibt die ID des aktuellen GUIStates zurück
function GUI.GetCurrentStateID() end

--- Gibt den Namen des aktuellen GUIStates zurück
function GUI.GetCurrentStateName() end

--- Gibt das Entity an dieser Screenposition zurück
function GUI.GetEntityAtPosition(_screenX, _screenY) end

--- Gibt screenX, screenY der Maus zurück
function GUI.GetMousePosition() end

--- Gibt r,g,b der Spielerfarbe zurück
function GUI.GetPlayerColor(_player) end

--- Gibt den Player zurück, der gerade gesteuert wird (eigentlich immer 1)
---@return number
function GUI.GetPlayerID() end

--- Gibt screenBreite, screenHoehe zurück
function GUI.GetScreenSize() end

--- gibt id1, id2, id3... der selektierten Entities zurück
function GUI.GetSelectedEntities() end

--- gibt das erste selektierte Entity zurück. (Normalerweise werden die Widgest von diesem Angezeigt, Ausnahme: Helden)
---@return number
function GUI.GetSelectedEntity() end

--- ! Gibt die stateId des stateNames zurück.
function GUI.GetStateNameByID(_stateName) end

--- Gibt die Zeit in Sekunden zurück. (Ab wann?)
function GUI.GetTime() end

--- Gibt die Zeit in Millisekunden zurück. (Ab wann?)
function GUI.GetTimeMS() end

--- Ändert die Formation
function GUI.LeaderChangeFormationType(_id, _forType) end

--- Der Leader erhält einen Soldier der in der Nähe steht
function GUI.LeaderGetOneSoldier(_id) end

--- ?
function GUI.LeaderReleaseOneSoldier() end

--- Treibt eine Zusatzsteuer von Siedlern ein; 20 Taler pro Siedler 
-- beeinflusst die Motivation sehr stark (-10 % pro Aufruf)
function GUI.LevyTax() end

--- funktionslos
function GUI.LockVillageCenters() end

--- ändert die anzahl der Rohstoffe die zu _player gescickt werden
function GUI.MPTrade_ChangeResourceAmount(_player,_amount) end

--- ?
function GUI.MPTrade_ChangeResourceType(_player) end

--- Sendet die Rohstoffe an _player
function GUI.MPTrade_SendResource(_player) end

--- Schreibt Text in DebugWindow
function GUI.MiniMapDebug_SetText(_text) end

--- FoW auf der Minimap an/aus
-- 1/0
function GUI.MiniMap_SetRenderFogOfWar(_flag) end

--- ??
function GUI.NetworkWindow_ToggleDebug() end

--- Bezahlt einen Tribut (Synchronisation im MP)
function GUI.PayTribute(_player, _triId) end

--- Alle BattleSerfs zu Serfs
function GUI.QuitSerfAlarmMode() end

--- Alle Siedler zurück an die Arbeit
function GUI.QuitWorkerAlarmMode() end

--- Führt ein Update für das Minimap Terrain aus.
-- Nötig zum Beispiel nachdem das Terrain/Wasser per Skript verändert wurde.
function GUI.RebuildMinimapTerrain() end

--- ? während Briefing aufgerufen
function GUI.ResetMiniMap() end

--- wie Angriffssignal auf der Minimap. _color wie CreateMarker ?
function GUI.ScriptSignal(_posX, _posY, _color) end

--- Selektiert ein Entity
function GUI.SelectEntity(_id) end

--- gebäude abreißen
function GUI.SellBuilding(_id) end

--- funktionslos
function GUI.SellLorry() end

--- Entlässt einen beliebigen Leibeigenen des Spielers. Dieser erhält dafür 50 Taler 
function GUI.SellSerf() end

--- Formation geändert callback (speech)
function GUI.SendChangeFormationFeedbackEvent(_format) end

--- Sendet darios Falken
function GUI.SendHawk(_darioId, _x, _y) end

--- nicht genug rohstoffe callback (speech)
function GUI.SendNotEnoughResourcesFeedbackEvent(_resType, missing) end

--- DZ voll callback (speech). player optional
function GUI.SendPopulationLimitReachedFeedbackEvent(_player) end

--- gebäude ausgebaut callback (speech)
function GUI.SendUpgradeFinishedFeedbackEvent(_newId, _upcat) end

--- noch 19 sec zum Wetterwechsel callback (speech)
function GUI.SendWeatherForecastEvent(_nextState) end

--- ändert den kontrollierten Spieler
function GUI.SetControlledPlayer(_playerId) end

--- Setzt das Arbeitermaximum
function GUI.SetCurrentMaxNumWorkersInBuilding(_id, _num) end

--- ? Logic verwenden!
function GUI.SetDiplomacyState() end

--- Stellt alle Sound-Feedbacks an/aus (Entity/Mentor)
function GUI.SetFeedbackSoundOutputState(_flag) end

--- setzt den Mimimap-state
-- 0->Normal, 1->Taktisch, 2->Rohstoff
function GUI.SetMiniMapMode(_mode) end

--- Setzt, ob sich die Entities einer PlayerId vom Spieler kontrollieren lassen
--  Somit ist es auch möglich mehrere Player auf einmal zu kontrollieren.
-- controlFlag: 1 = allow; 0 = forbid
function GUI.SetPlayerControlFlag(_playerId, _controlFlag) end

--- Selektiert nur dieses Entity
function GUI.SetSelectedEntity(_id) end

--- Setzt die steuern (0-4)
function GUI.SetTaxLevel(_level) end

--- Wetterturm-Wetterändern (Wetterturm muss selektiert sein)
function GUI.SetWeather(_weaterTyp) end

--- heldenfähigkeiten auslösen (Abilities.AbilityRangedEffect) (möglich für Salim, Erec, Helias, Kerberos, Mary de Mortfichet, Varg und Drake)
function GUI.SettlerAffectUnitsInArea(_id) end

--- Agressiver Modus (inaktiv?)
function GUI.SettlerAggressive(_id) end

--- heldenfähigkeit Abilities.AbilityCamouflage (möglich für Ari)
function GUI.SettlerCamouflage(_id) end

--- heldenfähigkeit Abilities.AbilityCircularAttack (möglich für Erec, Mary de Mortfichet und Kala)
function GUI.SettlerCircularAttack(_id) end

--- stehenbleiben+verteidigen (standardverhalten) == Logic.GroupDefend
function GUI.SettlerDefend(_id) end

--- heldenfähigkeit Abilities.AbilityInflictFear (möglich für Dario, Kerberos und Yuki)
function GUI.SettlerInflictFear(_id) end 

--- heldenfähigkeit Abilities.AbilityMotivateWorkers (möglich für Yuki)
function GUI.SettlerMotivateWorkers(_id) end

--- stehenbleiben+nicht bewegen == Logic.GroupStand
function GUI.SettlerStand(_id) end

--- heldenfähigkeit Abilities.AbilitySummon (möglich für Ari und Varg)
function GUI.SettlerSummon(_id) end

--- action-callback aus GUI (ShortMessagesListWindowOutputButtonXX)
function GUI.ShortMessages_ButtonClicked(_index) end

--- tooltip-callback aus GUI (ShortMessagesListWindowOutputButtonXX)
function GUI.ShortMessages_ButtonUpdateInfoString(_index) end

--- Gibt die Position der letztem ShortMessage zurück. (Verwendet in KeyBindings_JumpToLastHotSpot)
function GUI.ShortMessages_GetLastPosition() end

--- Startet die erforschung einer Technologie
function GUI.StartResearch(_id, _tech) end

--- Startet einen Handel
function GUI.StartTransaction(_id, _sellType, _buyType, _buyAmount) end

--- Setzt den Empfänger für Linksklicks in speziellen GUI-States ?
function GUI.State_SetExclusiveMessageRecipient(_id) end

--- Setzt nach dem Verlassen des Spiels den Player im Statistikfenster
function GUI.StatisticsWindow_PostGame_SetPlayerID(_playerId) end

--- Ändert die Anzeige im StatisticsRendererCustomWidget
function GUI.StatisticsWindow_SelectStatistics(_index) end

--- Ändert die zeiteinteilung im StatisticsRendererCustomWidget (GUIAction-Callback)
function GUI.StatisticsWindow_ToggleTimeScale() end

--- Zeigt/Entfernt die DebugMiniMap (nach Osten ausgerichtet, riesig)
function GUI.ToggleMinimapDebug() end

--- De/Aktiviert Überstunden
function GUI.ToggleOvertimeAtBuilding(_id) end

--- baut sofort alle Gebäude der UpCat aus?? (bei MP-Fastgame benutzt?)
function GUI.UpgradeBuildingCategory(_upCat, _player) end

--- Callback bei Technologieerforschung Truppenaufwertung. Zuständig für die Aufwertung (kauf+aktuelle Truppen)
function GUI.UpgradeSettlerCategory(_upCat, _player) end

--- startet den Ausbau eines normalen gebäudes (Player egal). benötigt Rohstoffe.
function GUI.UpgradeSingleBuilding(_id) end

--- ???
function GUI.WalkCommand() end
