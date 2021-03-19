--- Funktionen um die Kamera zu manipulieren.
-- C
Camera = {}

--- Setzt die Zielposition für einen Kameraflug.
function Camera.FlyToLookAt(_lookAtX, _lookAtY, _time) end

--- Lässt die Kamera einem Entity folgen (Nur x,y-Koordinaten).
function Camera.FollowEntity(_entityId) end

--- Wandelt Positionen auf der Map in Koordianten auf dem Bildschirm um.
-- return: sX, sY
function Camera.GetScreenCoord(_Wx,_Wy,_Wz) end

--- Gibt den Zoomfaktor zurück.
function Camera.GetZoomFactor() end

--- Startet einen Kameraflug. Parameter müssen extra gesetzt werden.
-- (Kamera muss im Scriptmodus sein (Briefing))
function Camera.InitCameraFlight() end

--- Dreht die Kamera im Uhrzeigersinn.
function Camera.RotClockwise() end

--- Dreht die Kamera gegen den Uhrzeigersinn.
function Camera.RotCounterClockwise() end

--- Setzt die Zielrotation für einen Kameraflug.
function Camera.RotFlight(_angle, _time) end

--- !!! democopy
-- ???
function Camera.RotGameTimeSynced(_angle) end

--- Gibt die aktuelle Rotation zurück.
function Camera.RotGetAngle() end

--- Setzt die Rotation
function Camera.RotSetAngle(_angle) end

--- Setzt, ob die Kamera sich nach der Rotation zurückdreht.
function Camera.RotSetFlipBack(_flag) end

--- Setzt die geschwindigkeit, mit der sich die Kamera zurückdreht. (Standard: 250)
function Camera.RotSetFlipBackSpeed(_speed) end

--- Setzt die Maximale Rotation??? (Standard: 100)
function Camera.RotSetMaxAngle(_maxAngle) end

--- Setzt die Geschwindigkeit??? (Standard: 90)
function Camera.RotSetSpeed(_speed) end

--- Startet/Beendet den Kameraflug nach unten (Süden).
function Camera.ScrollDown(_flag) end

--- ???
function Camera.ScrollGameTimeSynced(_x, _y) end

--- Gibt die Position zurück, auf die die Kamera gerichtet ist.
-- return; x, y
function Camera.ScrollGetLookAt() end

--- Startet/Beendet, den Kameraflug nach links (Westen).
function Camera.ScrollLeft(_flag) end

--- Setzt ob das Terrain Einfluss auf das Mausscrollen hat. (Standard: 0)
function Camera.ScrollMouseSetMode(_flag) end

--- Startet/Beendet, den Kameraflug nach rechts (Osten).
function Camera.ScrollRight(_flag) end

--- Setzt ob Scrollen am Bildschirmrand aktiviert ist. (Standard: Spiel->1, Editor->0)
function Camera.ScrollSetBorderFlag(_flag) end

--- Setzt die Kamera so, dass sie auf diese Position sieht.
function Camera.ScrollSetLookAt(_lookAtX, _lookAtY) end

--- Setzt die Geschwindigkeit beim Scrollen. (Standard: 2600)
function Camera.ScrollSetSpeed(_speed) end

--- Startet/Beendet, den Kameraflug nach oben (Norden).
function Camera.ScrollUp(_flag) end

--- Setzt wann die Z-Koordiante aktualisiert wird.
-- 0->jetzt ein mal, 1->beim Scrollen, 2->immer
function Camera.ScrollUpdateZMode(_flag) end

--- Startet/Beendet, den Kameraflug nach unten (Erdmittelpunkt).
function Camera.ScrollZDown(_flag) end

--- Startet/Beendet, den Kameraflug nach oben (Himmel).
function Camera.ScrollZUp(_flag) end

--- Setzt ob die Kamera im Scriptmodus ist.
-- 0->Normales Spiel, 1->Briefing (Kameraflüge aktiv)
function Camera.SetControlMode(_flag) end

--- Stopt den aktuellen Kameraflug.
function Camera.StopCameraFlight() end

--- Startet/Beendet das Heranzoomen.
function Camera.ZoomIn(_flag) end

--- Startet/Beendet das Herauszoomen.
function Camera.ZoomOut(_flag) end

--- Setzt den Winkel, in dem die Kamera auf die Welt blickt.
function Camera.ZoomSetAngle(_angle) end

--- Setzt den Zielwinkel für einen Kameraflug.
function Camera.ZoomSetAngleFlight(_angle, _time) end

--- ???
function Camera.ZoomSetAngleGameTimeSynced(_angle) end

--- Setzt die Entfernung der Kamera. (In Scm)
function Camera.ZoomSetDistance(_zoomDistance) end

--- Setzt die Zielentfernung eines kamerafluges.
function Camera.ZoomSetDistanceFlight(_zoomDistance, _time) end

--- ???
function Camera.ZoomSetDistanceGameTimeSynced(_zDist) end

--- Setzt das FieldOfView. (Grad) Besser nicht verändern!
function Camera.ZoomSetFOV(_fov) end

--- Setzt die Maximale Entfernung der Kamera.
-- Bsp: 1->Standard, 0.5->Mapeditor, 2->manche MP maps
function Camera.ZoomSetFactor(_zoomFactor) end

--- ???
function Camera.ZoomSetFactorMax(_zoomFactor) end

--- ???
function Camera.ZoomSetFactorMin(_zoomFactor) end

--- Setzt die Zoomgeschwindigkeit. (Standard: 1)
function Camera.ZoomSetSpeed(_speed) end
