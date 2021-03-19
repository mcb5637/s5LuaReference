--- Funktionen um die Widgetds der GUI zu beeinflussen.
-- C
XGUIEng = {}

--- Fügt _text an das Ende des Textes im Textfeld ein.
-- _coding: 0->ASCII, 1->UTF8 (Optional, 1 Standard)
function XGUIEng.AddRawTextAtEnd(_widget, _text, _coding) end

--- (De)Aktiviert  einen Button. (Ausgegraut, nicht klickbar)
-- _flag: 1->deaktivieren, 0->aktivieren
function XGUIEng.DisableButton(_widgetId, _flag) end

--- Ruft bei allen unterwidgets die Lua-Update-Funktion auf.
-- Häufige verwendung mit "root"
function XGUIEng.DoManualButtonUpdate(_widget) end

--- Gibt ein im Widget gespeichertes int zurück.
-- (Speichern mit XGUIEng.SetBaseWidgetUserVariable)
function XGUIEng.GetBaseWidgetUserVariable(_widget, _index) end

--- Innerhalb von GUIUpdate, GUIAction (und Tooltip-Funktionen ?) wird das aktuelle Widget zurückgegeben.
function XGUIEng.GetCurrentWidgetID() end

--- Gibt den Wert eines Schiebereglers zurück.
-- return: 0-100
function XGUIEng.GetCustomScrollBarSliderValue(_widget) end

--- Gibt eine Pseudo-Zufallszahl zwischen 0-limit zurück.
-- (== Logic.GetRandom ?)
function XGUIEng.GetRandom(_limit) end

--- Gibt zurück, was in ein Widget eingegeben wurde.
-- (ChatInput_CustomWidget)
function XGUIEng.GetStringInputCustomWidgetString(_widget) end

--- Gibt den String mit diesem Schlüssel zurück.
function XGUIEng.GetStringTableText(_key) end

--- Gibt die Systemzeit zurück (Sekunden).
function XGUIEng.GetSystemTime() end

--- Gibt den Text eines normalen Textwidgets zurück.
function XGUIEng.GetText(_widget) end

--- Gibt die id eines Widget zurück.
function XGUIEng.GetWidgetID(_widget) end

--- Gibt das übergeordnete Widget zurück.
function XGUIEng.GetWidgetsMotherID(_widget) end

--- Hebt einen Button hervor.
function XGUIEng.HighLightButton(_widget, _flag) end

--- Fügt _text an den Anfang des Textes im Textfeld ein.
-- _coding: 0->ASCII, 1->UTF8 (Optional, 1 Standard)
function XGUIEng.InsertRawTextInFront(_widget, _text, _coding) end

--- Gibt zurück ob ein Button deaktiviert ist.
-- return: 1/0
function XGUIEng.IsButtonDisabled(_widget) end

--- Gibt zurück ob ein Button hervorgehoben ist.
-- return: 1/0
function XGUIEng.IsButtonHighLighted(_widget) end

--- Gibt zurück, ob der Modifier (Strg, Alt...) gedrückt ist.
-- _modifierCode: Keys.XXX
-- return: 1/0
function XGUIEng.IsModifierPressed(_modifierCode) end

--- Prüft ob ein Widget existiert.
-- return: 1/0
function XGUIEng.IsWidgetExisting(_widget) end

--- Prüft ob ein Widget angezeigt wird. (Nicht ob es sichtbar ist)
-- return: 1/0
function XGUIEng.IsWidgetShown(_widget) end

--- Setzt ein Limit an Textzeilen für ein Textwidget.
-- _last: true-> letzte Zeilen, sonst-> erste Zeilen
function XGUIEng.LimitTextLines(_widget, _max, _last) end

--- Speichert _int im Widget.
-- (Lesen mit XGUIEng.GetBaseWidgetUserVariable)
function XGUIEng.SetBaseWidgetUserVariable(_widget, _index, _int) end

--- Setzt den Schieberegler-Wert (Nur Aussehen!)
function XGUIEng.SetCustomScrollBarSliderValue(_widget, _value) end

--- ???
function XGUIEng.SetCustomWidgetInterfaceVariable(_widget, _index, _value) end

--- Setzt die Anzuzeigenden Textzeilen.
function XGUIEng.SetLinesToPrint(_widget, _firstLine, _numberLines) end

--- Färbt ein Widget ein.
-- _state: 0->Normal, 1->Mouseover, 2->Geklickt, 3->Highlightmodus ??  Disabled?? twa:6 states?? guiEditor:5 states ??
-- _r,_g,_b,_a: RGB (Rot, Grün, Blau) und Alpha (Transparenz) Farbwerte
function XGUIEng.SetMaterialColor(_widget, _state, _r, _g, _b, _a) end

--- Setzt die Textur eines Widgets (Nicht den Teil der Textur, der angezeigt wird...)
-- _state: 0->Normal, 1->Mouseover, 2->Geklickt, 3->Highlightmodus ??  Disabled?? twa:6 states?? guiEditor:5 states ??
function XGUIEng.SetMaterialTexture(_widget, _state, _file) end

--- Setzt den Fortschrittsbalken.
-- _progress: Aktueller Wert
-- _max: Maximaler Wert
function XGUIEng.SetProgressBarValues(_widget, _progress, _max) end

--- Setzt den String bei einem Eingabefenster.
function XGUIEng.SetStringInputCustomWidgetString(_widget, _string) end

--- Setzt den Text eines Textwidgets.
-- _coding: 0->ASCII, 1->UTF8 (Optional, 1 Standard)
function XGUIEng.SetText(_widget, _text, _coding) end

--- Setzt den Text eines Textwidgets auf einen Zahlenwert.
-- _right: Am rechten Rand? (== " @ra ")
function XGUIEng.SetTextByValue(_widget, _number, _right) end

--- Setzt die Textfarbe.
function XGUIEng.SetTextColor(_widget, _r, _g, _b) end

--- Setzt den Text aus einer Datei?
-- _bool: ???
function XGUIEng.SetTextFromFile(_widget, _file, _bool) end

--- Setzt den Text auf den StringTableText.
function XGUIEng.SetTextKeyName(_widget, _key) end

--- !!! democopy
-- Setzt den Text für den Tooltip als StringTableText.
function XGUIEng.SetToolTipTextKeyName(_widget, _key) end

--- Ändert den Widget-Name (und die Id)
-- return: neue Id
function XGUIEng.SetWidgetName(_widget, _newName) end

--- Setzt die Position des Widgets (obere linke Ecke).
-- (Kann nichr aus dem Übergeordneten Widget herausbewegt werden)
function XGUIEng.SetWidgetPosition(_widgetId, _x, _y) end

--- Setzt Position und Größe eines Widgets.
-- (Kann nichr aus dem Übergeordneten Widget herausbewegt werden)
function XGUIEng.SetWidgetPositionAndSize(_widgetId, _posX, _posY, _sizeX, _sizeY) end

--- Setzt die Größe des Widgets.
-- Standard für Buttons: 32x32
function XGUIEng.SetWidgetSize(_widgetId, _x, _y) end

--- Zeigt alle untergeordneten Widgets an oder nicht.
function XGUIEng.ShowAllSubWidgets(_widget, _flag) end

--- Zeigt das Widget an oder nicht.
-- (Ein angezeigtes Widget ist nicht unbedingt sichtbar!)
function XGUIEng.ShowWidget(_widget, _flag) end

--- Spielt ein Video in einem Videofenster ab (VideoPreview).
-- _loop: 1/0 Schleife
function XGUIEng.StartVideoPlayback(_widget, _file, _loop) end

--- Beendet das Abspielen in einem Videofenster (VideoPreview).
function XGUIEng.StopVideoPlayback(_widget) end

--- Kopiert das aktuelle Aussehen des Buttons auf _target.
-- (Die Informationen von _target gehen verloren!)
function XGUIEng.TransferMaterials(_source, _target) end

--- Beendet das hervorheben einer Gruppe.
-- (Nur wenn sie sichtbar ist!)
function XGUIEng.UnHighLightGroup(_widget, _group) end
