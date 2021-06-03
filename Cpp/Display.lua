--- 
-- C
Display = {}

--- funktionslos
function Display.DbgDestroyAllOrnamentalItemsRegions() end

--- funktionslos
function Display.DbgDumpLoopCounters() end

--- funktionslos
function Display.DbgSetCalcVisibilityBits() end

--- funktionslos
function Display.DbgSetDepthBias32() end

--- setzt model parameter, um licht und vertexcolor für die anzeige zu nutzen.
-- für bewegliche entities wenig brauchbar, da die farbe beim weg und hinbewegen der kamera aktualisiert wird.
function Display.DbgSetModelTerrainColorPortions(modelname, lightcolor, vertexcolor) end

--- funktionslos
function Display.DbgShadowMapGetLightBBox() end

--- Gibt die Distanz zwischen der Kamera und _id zurück.
function Display.GetDistanceToCamera(_id) end

--- !!! democopy
-- Kopiert die Nebelparameter.
function Display.GfxSetCloneFogParams(_targetGFX, _sourceGFX) end

--- !!! democopy
-- Kopiert die Lichtparameter.
function Display.GfxSetCloneLightParams(_targetGFX, _sourceGFX) end

--- !!! democopy
-- Kopiert die Regenparameter.
function Display.GfxSetCloneRainEffectStatus(_targetGFX, _sourceGFX) end

--- !!! democopy
-- Kopiert die SkyBox.
function Display.GfxSetCloneSkyBox(_targetGFX, _sourceGFX) end

--- !!! democopy
-- Kopiert den Schneeuntergrundparameter.
function Display.GfxSetCloneSnowEffectStatus(_targetGFX, _sourceGFX) end

--- !!! democopy
-- Kopiert die Schneeeparameter.
function Display.GfxSetCloneSnowStatus(_targetGFX, _sourceGFX) end

--- Setzt die Nebelparameter.
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
-- _flag: Nebel an?
-- _r,_g,_b: Nebelfarbe
-- _fogS,_fogE: Entfernung des Nebels (normal irgendwas bei 2000-30000)
function Display.GfxSetSetFogParams(_gfx, _transS, _transE, _flag, _r, _g, _b, _fogS, _fogE) end

--- Setzt die Lichtparameter.
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
-- _posX,_posY,_posZ: Position der Lichtquelle (Sonne)
-- _lanR,_lanG,_lanB: Überall gleiche Beleuchtung (Ambient/Umgebung)
-- _sunR,_sunG,_sunB: Licht der Sonne (Diffuse)
function Display.GfxSetSetLightParams(_gfx, _transS, _transE, _posX, _posY, _posZ, _lanR, _lanG, _lanB, _sunR, _sunG, _sunB) end

--- Setzt die Regenparameter.
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
function Display.GfxSetSetRainEffectStatus(_gfx, _transS, _transE, _flag) end

--- Setzt die SkyBox (Himmel) (Nur in Cutscenes und Briefing sichtbar).
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
-- _skyBox: "YSkyBox0"...{1-7} Empfehlung: 1->Schnee,4->Regen,rest->Normal
function Display.GfxSetSetSkyBox(_gfx, _transS, _transE, _skyBox) end

--- Setzt die Schneebodenefektparameter.
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
function Display.GfxSetSetSnowEffectStatus(_gfx, _transS, _transE, _flag) end

--- Setzt die Schneeparameter (Niederschlag).
-- _transS,_transE: Zeitpunkt für Änderung: 0.0-1.0
function Display.GfxSetSetSnowStatus(_gfx, _transS, _transE, _flag) end

--- Stellt die Ursprünglichen Spielerfarben wieder her.
function Display.InitializePlayerColors() end

--- Lädt alle Modelle (neu).
function Display.LoadAllModels() end

--- Shared Bool z.B. g_UseShadowMap (siehe effects fx Dateien) aber wirkungslos?
function Display.ModifySharedBoolEffectParameterByName(_name, _value) end

--- Lädt die Terraintexturen neu.
function Display.ReloadAllTerrainTextures() end

--- !!! democopy
-- Lädt einen Grafikeffekt neu.
function Display.ReloadEffect(_eff) end

--- ???
function Display.SetDaylightFP() end

--- Setzt verschiedene Anzeigeoptionen:
-- _opt: string
-- 		DoodadsNoMovement
-- 		Snow
-- 		NoPixelShader (! eventuell nicht rückgängig)
-- 		RenderIceReflections
-- 		UseShadowMapPlanar
-- 		OrnamentalItemsNoMovement
-- 		ShadowMapATI
-- _flag: 1/0/-1 (toggle)
function Display.SetEffectOption(_opt, _flag) end

--- Setzt die minimale und maximale Sichtweite (alles was weiter weg ist, ist schwarz)
-- 0,0 stellt die Default Werte wieder her 
function Display.SetFarClipPlaneMinAndMax(_min, _max) end

--- funktionslos
function Display.SetFogColor() end

--- funktionslos
function Display.SetFogStartAndEnd() end

--- Ändert die Helligkeit/Kontrast.
-- _brightness,_contrast,_gamma: Relativ zu 1 (also 1.xxx)
function Display.SetGammaRamp(_brightness, _contrast, _gamma, _flag) end

--- funktionslos
function Display.SetGlobalLightAmbient() end

--- funktionslos
function Display.SetGlobalLightDiffuse() end

--- funktionslos
function Display.SetGlobalLightDirection() end

--- Setzt den Eisstatus (0.0-1.0).
-- (Wenn Display.SetIceStatusIsCalculateFromSnowStatus aus ist)
function Display.SetIceStatus(_status) end

--- !!! democopy
-- Setzt die Berechnungswerte für den Eisstatus: iceS = _fac*snowS+_off
function Display.SetIceStatusCalculationCoefficients(_fac, _off) end

--- Setzt, ob das Eis Automatisch oder Manuell verändert wird.
-- _flag 1/0
function Display.SetIceStatusIsCalculateFromSnowStatus(_flag) end

--- Setzt die Spielerfarbe. (Normal _playerId==_playerColor)
function Display.SetPlayerColorMapping(_playerId, _playerColor) end

--- Setzt, ob Eis Refklektionen angezeigt werden sollen (Grafikoption)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetProgramOptionRenderIceReflections(_flag) end

--- Setzt, ob Okklusion angezeigt werden soll (Grafikoption)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetProgramOptionRenderOcclusionEffect() end

--- Setzt, ob Schatten angezeigt werden sollen (Grafikoption)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetProgramOptionRenderShadows() end

--- Aktiviert bzw. deaktivert das Anzeigen von Decals (dazu zählen DecalsAtomics; DecalsDoodads; DecalsSelections und DecalsShadows)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderDecals(_flag) end

--- Zeigt den Untergrund von Gebäuden an.
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderDecalsAtomics(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen von DecalsDoodads (alle XD_PlantDecals) 
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderDecalsDoodads(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen der blauben Selektionskreise
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderDecalsSelections(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen von Schatten
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderDecalsShadows(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen von Effekten; bei Deaktivieren wird nur das Model gesetzt, aber der Effekt bleibt statisch
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderEffects(_flag) end

--- funktionslos?
function Display.SetRenderFog() end

--- Aktiviert bzw. deaktivert das Anzeigen des Fog Of Wars (gesamte Map wird aufgedeckt)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderFogOfWar(_flag) end

--- Zeigt Unsichtbare Objekte an (XD_ScriptEntity)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderInvisibleObjects(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen der gesamten Texturen (sonst alles schwarz)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscape(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen der Landscape Debug Info (weiße Punkte auf der Map = blocking; grün = begehbares Blocking; ansonsten kein Blocking)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeDebugInfo(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen des Fog Of Wars (gesamte Map wird aufgedeckt)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeFogOfWar(_flag) end

--- Texturen anzeigen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeTerrain(_flag) end

--- stückweise texturen anzeigen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeTerrainLayers1(_flag) end

--- stückweise texturen anzeigen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeTerrainLayers2(_flag) end

--- stückweise texturen anzeigen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeTerrainLayers3(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen von Wasser
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderLandscapeWater(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von Models
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderObjects(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von allen Models welche Alpha Blending unterstützen (siehe Models.xml)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderObjectsAlphaBlendPass(_flag) end

--- Verändert die Bäume?
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderObjectsAlphaTestPass(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von allen Models welche Alpha Blending nicht unterstützen (siehe Models.xml)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderObjectsNonAlpha(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von Partikeleffekten bei allen Models (z.B. Rauch aus Gebäuden; Feuereffekte; Gischt bei Wasserfällen)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderParticles(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von Schatten
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderShadows(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen des Siedlerhimmels (wichtig bei Briefings und Cutscenes)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderSky(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen der Texturen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderTerrain(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen des yCommandAcks Models bei gegebenen Laufbefehlen
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderUpdateMorphAnim(_flag) end

--- Aktiviert oder deaktiviert das Updaten von Partikeleffekten 
-- (bei Deaktivieren frieren diese Effekte ein bzw. verschwinden, wenn die Kamera nicht darauf gerichtet ist)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderUpdateParticles(_flag) end

--- Aktiviert oder deaktiviert die GFX-Sets.
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderUseGfxSets(_flag) end

--- ändert die Rotation von Ornamtental Items Models (siehe Models.xml)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderUseOrnamentalItemsSystem(_flag) end

--- Aktiviert bzw. deaktivert das Anzeigen von Wasser
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetRenderWater(_flag) end

--- Setzt die Z-Position der SkyBox
function Display.SetSkyBoxZOffset(_z) end

--- funktionslos; besser Display.GfxSetSetSnowEffectStatus
function Display.SetSnowStatus() end

--- funktionslos (leider)
function Display.SetSnowStatusVelocity() end

--- Aktiviert oder deaktiviert das Anzeigen der Okklusion (Siedler werden in Spielerfarbe hinter Gebäuden angezeigt)
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetUserOptionRenderOcclusionEffect(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von Schatten
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetUserOptionRenderShadowMapSize(_flag) end

--- Schaltet zwischen hoher und niedriger Terrainqualität um
-- _flag 1/0 bzw. -1 für Toggle
function Display.SetUserOptionRenderTerrainQuality(_flag) end

--- Aktiviert oder deaktiviert das Anzeigen von Schatten
-- _flag 1/0 bzw. -1 für Toggle
function Display.ShadowsSetMethod(_flag) end

--- ??? interne Funktion; gesetzter Wert wird vermutlich sofort wieder überschrieben -> funktionslos
function Display.SynchronizerSetNumberOfFrames(_number) end
