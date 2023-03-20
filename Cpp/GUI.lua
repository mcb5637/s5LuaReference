---@diagnostic disable: missing-return, duplicate-set-field
--- Funktionen für die grafische Oberfläche
--- alle funktionen hier sind entweder selbst syncronisierend oder haben keinen einfluss auf den gamestate.
--- C
GUI = {}

--- cursor 19 / cursor über feind?
function GUI.ActivateAttackCommandState() end

--- cursor 24 / Command_Attack
function GUI.ActivateAttackMoveCommandState() end

--- aktiviert den automatischen Soldatenkauf nach der Ausbildung
---@param _buildingId number
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
---@param _upCat number
function GUI.ActivatePlaceBuildingState(_upCat) end

--- ? / Pilgrim Kanone + Salim Falle (Parameter als Entities.XXX)
---@param _unterteilTyp number
---@param _oberteilTyp number
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
---@param _text string
---@param _time number|nil
function GUI.AddNote(_text, _time) end

--- Zeigt den Text als Message an, bis GUI.ClearNotes aufgerufen wird
---@param _text string
function GUI.AddStaticNote(_text) end

--- Segnen.
---@param _blessCategory number BlessCategories.XXX
function GUI.BlessByBlessCategory(_blessCategory) end

--- Segnet einzelnen Siedler. (Keine Kosten?)
function GUI.BlessSettler(id) end

--- Lässt eine Kanonengießerei eine Kanone produzieren. Stürzt ab, wenn nicht bereit!
---@param _buildingId number
---@param _cannonType number Entities.XXX
function GUI.BuyCannon(_buildingId, _cannonType) end

--- kauft einen Helden (MP).
---@param _player number
---@param _heroType number
---@param _building number (normalerweise 0?)
function GUI.BuyHero(_player, _heroType, _building) end

--- Kauft einen Leader.
---@param _barracksId number
---@param _upCat number
function GUI.BuyLeader(_barracksId, _upCat) end

--- Kauft ein angebot eines Söldnerzeltes
---@param _merchantBuildingId number
---@param _player number
---@param _index number
function GUI.BuyMerchantOffer(_merchantBuildingId, _player, _index) end

--- Kauft einen Serf am HQ.
---@param _buildingId number
function GUI.BuySerf(_buildingId) end

--- kauft einen Soldier für diesen Leader.
---@param _leaderId number
function GUI.BuySoldier(_leaderId) end

--- Bricht den Ausbau ab
---@param _buildingId number
function GUI.CancelBuildingUpgrade(_buildingId) end

--- Bricht die Forschung ab.
--- wird zwar mit tech als 2. parameter aufgerufen, der wird aber nicht benutzt.
---@param _id number
function GUI.CancelResearch(_id) end

--- Kehrt zum normalen Mauszeiger zurück
function GUI.CancelState() end

--- Bricht den Handel ab
---@param _buildingId number
function GUI.CancelTransaction(_buildingId) end

--- Serf läuft zum HQ/Kaserne und wird zum BattleSerf
---@param _id number
function GUI.ChangeToBattleSerf(_id) end

--- BattleSerf läuft zum HQ/Kaserne und wird zum Serf.
---@param _id number
function GUI.ChangeToSerf(_id) end

--- Löscht alle GUI.AddNote und GUI.AddStaticNote
function GUI.ClearNotes() end

--- Deselektiert alle Entities
function GUI.ClearSelection() end

--- Erzeugt einen stehenden Marker.
--- Entfernen mit GUI.DestroyMinimapPulse.
---@param _x number
---@param _y number
---@param _color number _color: 0->grün, 1->blau, 2->weis 3->rot
function GUI.CreateMinimapMarker(_x, _y, _color) end

--- Erzeugt einen bewegenden Marker.
--- Entfernen mit GUI.DestroyMinimapPulse.
---@param _x number
---@param _y number
---@param _color number _color: 0->grün, 1->blau, 2->weis 3->rot
function GUI.CreateMinimapPulse(_x, _y, _color) end

--- Klick auf Gebäude bewirkt Ausbau?
function GUI.DEBUG_ActivateUpgradeSingleBuildingState() end

--- deaktiviert den automatischen Soldatenkauf nach der Ausbildung
---@param _id number
function GUI.DeactivateAutoFillAtBarracks(_id) end

--- Gibt posX, posY der Map zurück, über der der Cursor gerade ist.
---@return number x
---@return number y
function GUI.Debug_GetMapPositionUnderMouse() end

--- Infos über Gebäude
---@param _flag number
function GUI.Debug_OnScreenDebug_ShowBuildingInfo(_flag) end

--- Infos über Siedler
---@param _flag number
function GUI.Debug_OnScreenDebug_ShowSettlerInfo(_flag) end

--- Infos über Gelände
---@param _flag number
function GUI.Debug_OnScreenDebug_ShowTileInfo(_flag) end

--- Alle Infos ?
---@param _flag number
function GUI.Debug_OnScreenInformation_ShowAllInformation(_flag) end

--- ???
---@param _flag number
function GUI.Debug_OnScreenInformation_ShowEffects(_flag) end

--- Deselektiert ein Entity
---@param _id number
function GUI.DeselectEntity(_id) end

--- Löscht stehenden/beweglichen Marker an dieser Position.
---@param _x number
---@param _y number
function GUI.DestroyMinimapPulse(_x, _y) end

--- Schaltet kampfsignale auf der Minimap an/aus
---@param _trueFalse boolean
function GUI.EnableBattleSignals(_trueFalse) end

--- Alle Serfs werden BattleSerfs
function GUI.EnterSerfAlarmMode() end

--- Arbeiter fliehen in Gebäude und beschießen Gegner
function GUI.EnterWorkerAlarmMode() end

--- Entlässt ein Entity (Destroy+Grafikeffekt)
---@param _id number
function GUI.ExpelSettler(_id) end

--- Zwing den Siedler sofort weiterzuarbeiten (==überstunden).
---@param _settlerId number
function GUI.ForceSettlerToWork(_settlerId) end

--- Gibt die ID des aktuellen GUIStates zurück
---@return number
function GUI.GetCurrentStateID() end

--- Gibt den Namen des aktuellen GUIStates zurück
---@return string
function GUI.GetCurrentStateName() end

--- Gibt das Entity an dieser Screenposition zurück
---@param _screenX number
---@param _screenY number
---@return number id (kann 0 sein)
function GUI.GetEntityAtPosition(_screenX, _screenY) end

--- Gibt screenX, screenY der Maus zurück
---@return number screenX
---@return number screenY
function GUI.GetMousePosition() end

--- Gibt r,g,b der Spielerfarbe zurück
---@return number r
---@return number g
---@return number b
function GUI.GetPlayerColor(_player) end

--- Gibt den Player zurück, der gerade gesteuert wird (SP immer 1)
---@return number
function GUI.GetPlayerID() end

--- Gibt screenBreite, screenHoehe zurück
---@return number screenX
---@return number screenY
function GUI.GetScreenSize() end

--- gibt id1, id2, id3... der selektierten Entities zurück
---@return number id1 ...
function GUI.GetSelectedEntities() end

--- gibt das erste selektierte Entity zurück. (Normalerweise werden die Widgest von diesem Angezeigt, Ausnahme: Helden)
---@return number
function GUI.GetSelectedEntity() end

--- ! Gibt die stateId des stateNames zurück.
--- ja, das ist anders rum als der name vermuten lässt!
---@return number
---@param _stateName string
function GUI.GetStateNameByID(_stateName) end

--- Gibt die Zeit in Sekunden zurück. (Ab programmstart?)
---@return number
function GUI.GetTime() end

--- Gibt die Zeit in Millisekunden zurück. (Ab programmstart?)
---@return number
function GUI.GetTimeMS() end

--- Ändert die Formation.
---@param _id number
---@param _forType number
function GUI.LeaderChangeFormationType(_id, _forType) end

--- Der Leader erhält einen Soldier der in der Nähe steht
---@param _id number
function GUI.LeaderGetOneSoldier(_id) end

--- Der Leader entlässt einen Soldier.
---@param id number
function GUI.LeaderReleaseOneSoldier(id) end

--- Treibt eine Zusatzsteuer von Siedlern ein; 20 Taler pro Siedler 
-- beeinflusst die Motivation sehr stark (-10 % pro Aufruf)
function GUI.LevyTax() end

--- funktionslos
function GUI.LockVillageCenters() end

--- ändert die anzahl der Rohstoffe die zu _player geschickt werden
---@param _player number
---@param _amount number
function GUI.MPTrade_ChangeResourceAmount(_player, _amount) end

--- ändert den restype für mp resourcen schicken.
---@param resty number
function GUI.MPTrade_ChangeResourceType(resty) end

--- Sendet die Rohstoffe an _player
---@param _player number
function GUI.MPTrade_SendResource(_player) end

--- Schreibt Text in DebugWindow
---@param _text string
function GUI.MiniMapDebug_SetText(_text) end

--- FoW auf der Minimap an/aus
---@param _flag number
function GUI.MiniMap_SetRenderFogOfWar(_flag) end

--- ??
function GUI.NetworkWindow_ToggleDebug() end

--- Bezahlt einen Tribut (Synchronisation im MP)
---@param _player number
---@param _triId number
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
---@param _posX number
---@param _posY number
---@param _color number (0-4)
function GUI.ScriptSignal(_posX, _posY, _color) end

---kundschafter resourcen suchen.
---@param id number
function GUI.ScoutPointToResources(id) end

--- Selektiert ein Entity
---@param _id number
function GUI.SelectEntity(_id) end

--- gebäude abreißen.
---@param _id number
function GUI.SellBuilding(_id) end

--- funktionslos (detaches attachment 50 (existiert nicht))
function GUI.SellLorry(pl, goods, int) end

--- Entlässt einen beliebigen Leibeigenen des Spielers. Dieser erhält dafür 50 Taler.
function GUI.SellSerf() end

--- Formation geändert callback (speech)
---@param _format number
function GUI.SendChangeFormationFeedbackEvent(_format) end

--- Sendet darios Falken.
---@param _darioId number
---@param _x number
---@param _y number
function GUI.SendHawk(_darioId, _x, _y) end

--- nicht genug rohstoffe callback (speech)
---@param _resType number
---@param missing number
function GUI.SendNotEnoughResourcesFeedbackEvent(_resType, missing) end

--- DZ voll callback (speech).
---@param _player number|nil (optional)
function GUI.SendPopulationLimitReachedFeedbackEvent(_player) end

--- gebäude ausgebaut callback (speech)
---@param _newId number
---@param _upcat number
function GUI.SendUpgradeFinishedFeedbackEvent(_newId, _upcat) end

--- noch 19 sec zum Wetterwechsel callback (speech)
---@param _nextState number
function GUI.SendWeatherForecastEvent(_nextState) end

--- ändert den kontrollierten Spieler
---@param _playerId number
function GUI.SetControlledPlayer(_playerId) end

--- Setzt das Arbeitermaximum.
---@param _id number
---@param _num number
function GUI.SetCurrentMaxNumWorkersInBuilding(_id, _num) end

--- Ändert Diplomatie.
---@param p1 number
---@param p2 number
---@param diplo number
function GUI.SetDiplomacyState(p1, p2, diplo) end

--- Stellt alle Sound-Feedbacks an/aus (Entity/Mentor)
---@param _flag number
function GUI.SetFeedbackSoundOutputState(_flag) end

--- setzt den Mimimap-state
---@param _mode number 0->Normal, 1->Taktisch, 2->Rohstoff
function GUI.SetMiniMapMode(_mode) end

--- Setzt, ob sich die Entities einer PlayerId vom Spieler kontrollieren lassen
--  Somit ist es auch möglich mehrere Player auf einmal zu kontrollieren.
---@param _playerId number
---@param _controlFlag number controlFlag: 1 = allow; 0 = forbid
function GUI.SetPlayerControlFlag(_playerId, _controlFlag) end

--- Selektiert nur dieses Entity
---@param _id number
function GUI.SetSelectedEntity(_id) end

--- Setzt die steuern (0-4)
---@param _level number
function GUI.SetTaxLevel(_level) end

--- Wetterturm-Wetterändern (Wetterturm muss selektiert sein)
---@param _weaterTyp  number
function GUI.SetWeather(_weaterTyp) end

--- heldenfähigkeiten auslösen (Abilities.AbilityRangedEffect) (möglich für Salim, Erec, Helias, Kerberos, Mary de Mortfichet, Varg und Drake)
---@param _id number
function GUI.SettlerAffectUnitsInArea(_id) end

--- Agressiver Modus (inaktiv?)
---@param _id number
function GUI.SettlerAggressive(_id) end

--- heldenfähigkeit Abilities.AbilityCamouflage (möglich für Ari)
---@param _id number
function GUI.SettlerCamouflage(_id) end

--- heldenfähigkeit Abilities.AbilityCircularAttack (möglich für Erec, Mary de Mortfichet und Kala)
---@param _id number
function GUI.SettlerCircularAttack(_id) end

--- stehenbleiben+verteidigen (standardverhalten) == Logic.GroupDefend
---@param _id number
function GUI.SettlerDefend(_id) end

--- heldenfähigkeit Abilities.AbilityInflictFear (möglich für Dario, Kerberos und Yuki)
---@param _id number
function GUI.SettlerInflictFear(_id) end

--- heldenfähigkeit Abilities.AbilityMotivateWorkers (möglich für Yuki)
---@param _id number
function GUI.SettlerMotivateWorkers(_id) end

--- stehenbleiben+nicht bewegen == Logic.GroupStand
---@param _id number
function GUI.SettlerStand(_id) end

--- heldenfähigkeit Abilities.AbilitySummon (möglich für Ari und Varg)
---@param _id number
function GUI.SettlerSummon(_id) end

--- action-callback aus GUI (ShortMessagesListWindowOutputButtonXX)
---@param _index number
function GUI.ShortMessages_ButtonClicked(_index) end

--- tooltip-callback aus GUI (ShortMessagesListWindowOutputButtonXX)
---@param _index number
function GUI.ShortMessages_ButtonUpdateInfoString(_index) end

--- Gibt die Position der letztem ShortMessage zurück. (Verwendet in KeyBindings_JumpToLastHotSpot)
---@return number x
---@return number y
function GUI.ShortMessages_GetLastPosition() end

--- Startet die erforschung einer Technologie
---@param _id number
---@param _tech number
function GUI.StartResearch(_id, _tech) end

--- Startet einen Handel.
---@param _id number
---@param _sellType number
---@param _buyType number
---@param _buyAmount number
function GUI.StartTransaction(_id, _sellType, _buyType, _buyAmount) end

--- Setzt den Empfänger für Linksklicks im aktuellen GGUI::CCommandState.
---@param _id number
function GUI.State_SetExclusiveMessageRecipient(_id) end

--- Setzt nach dem Verlassen des Spiels den Player im Statistikfenster
---@param _playerId number
function GUI.StatisticsWindow_PostGame_SetPlayerID(_playerId) end

--- Ändert die Anzeige im StatisticsRendererCustomWidget
---@param _index number
function GUI.StatisticsWindow_SelectStatistics(_index) end

--- Ändert die zeiteinteilung im StatisticsRendererCustomWidget (GUIAction-Callback)
function GUI.StatisticsWindow_ToggleTimeScale() end

--- Zeigt/Entfernt die DebugMiniMap (nach Osten ausgerichtet, riesig)
function GUI.ToggleMinimapDebug() end

--- De/Aktiviert Überstunden
---@param _id number
function GUI.ToggleOvertimeAtBuilding(_id) end

--- baut sofort alle Gebäude der UpCat aus (bei MP-Fastgame benutzt?).
--- betrifft wahrscheinlich auch die zu bauenden gebäudetypen.
---@param _upCat number
---@param _player number
function GUI.UpgradeBuildingCategory(_upCat, _player) end

--- Callback bei Technologieerforschung Truppenaufwertung. Zuständig für die Aufwertung (kauf+aktuelle Truppen)
---@param _upCat number
---@param _player number
function GUI.UpgradeSettlerCategory(_upCat, _player) end

--- startet den Ausbau eines normalen gebäudes (Player egal). benötigt Rohstoffe.
---@param _id number
function GUI.UpgradeSingleBuilding(_id) end

--- ???
function GUI.WalkCommand() end
