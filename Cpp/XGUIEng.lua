--- Funktionen um die Widgetds der GUI zu beeinflussen.
--- nicht syncronisiert, kann alles aus einem asyncronen kontext aufgerufen werden.
-- C
XGUIEng = {}

--- Fügt _text an das Ende des Textes im Textfeld ein.
---@param _widget number|string
---@param _text string
---@param _coding number 0->ASCII, 1->UTF8 (Optional, 1 Standard)
function XGUIEng.AddRawTextAtEnd(_widget, _text, _coding) end

--- (De)Aktiviert  einen Button. (Ausgegraut, nicht klickbar)
---@param _widgetId number|string
---@param _flag number 1->deaktivieren, 0->aktivieren
function XGUIEng.DisableButton(_widgetId, _flag) end

--- Ruft bei allen unterwidgets die Lua-Update-Funktion auf.
---@param _widget string|number funktioniert nur mit "root" (EGUIX::CProjectWidget)
function XGUIEng.DoManualButtonUpdate(_widget) end

--- Gibt ein im Widget gespeichertes int zurück.
-- (Speichern mit XGUIEng.SetBaseWidgetUserVariable)
---@param _widget number|string
---@param _index number
---@return number
function XGUIEng.GetBaseWidgetUserVariable(_widget, _index) end

--- Innerhalb von GUIUpdate, GUIAction und Tooltip-Funktionen wird das aktuelle Widget zurückgegeben.
---@return number id
function XGUIEng.GetCurrentWidgetID() end

--- Gibt den Wert eines Schiebereglers zurück.
---@return number perc
---@param _widget number|string
function XGUIEng.GetCustomScrollBarSliderValue(_widget) end

--- Gibt eine Pseudo-Zufallszahl zwischen 0-limit zurück.
--- macht irgendwas it aktueller zeit, scheint kein normaler PseudoRandomGenerator zu sein.
---@param _limit number
---@return number
function XGUIEng.GetRandom(_limit) end

--- Gibt zurück, was in ein Widget eingegeben wurde.
-- (ChatInput_CustomWidget)
---@param _widget number|string
---@return string|nil
function XGUIEng.GetStringInputCustomWidgetString(_widget) end

--- Gibt den String mit diesem Schlüssel zurück.
---@param _key string
---@return string
function XGUIEng.GetStringTableText(_key) end

--- Gibt die Systemzeit zurück (Sekunden).
---@return number sec
function XGUIEng.GetSystemTime() end

--- Gibt den Text eines normalen Textwidgets zurück.
---@return string|nil
---@param _widget number|string
function XGUIEng.GetText(_widget) end

--- Gibt die id eines Widget zurück.
---@param _widget string
---@return number id
function XGUIEng.GetWidgetID(_widget) end

--- Gibt das übergeordnete Widget zurück.
---@param _widget number|string
---@return number id
function XGUIEng.GetWidgetsMotherID(_widget) end

--- Hebt einen Button hervor.
---@param _widget number|string
---@param _flag number
function XGUIEng.HighLightButton(_widget, _flag) end

--- Fügt _text an den Anfang des Textes im Textfeld ein.
---@param _widget number|string
---@param _text string
---@param _coding number 0->ASCII, 1->UTF8 (Optional, 1 Standard)
function XGUIEng.InsertRawTextInFront(_widget, _text, _coding) end

--- Gibt zurück ob ein Button deaktiviert ist.
---@param _widget number|string
---@return number flag
function XGUIEng.IsButtonDisabled(_widget) end

--- Gibt zurück ob ein Button hervorgehoben ist.
---@param _widget number|string
---@return number flag
function XGUIEng.IsButtonHighLighted(_widget) end

--- Gibt zurück, ob der Modifier (Strg, Alt...) gedrückt ist.
---@return number flag
---@param _modifierCode number Keys.XXX
function XGUIEng.IsModifierPressed(_modifierCode) end

--- Prüft ob ein Widget existiert.
---@param _widget string
---@return number flag
function XGUIEng.IsWidgetExisting(_widget) end

--- Prüft ob ein Widget angezeigt wird. (Nicht ob es sichtbar ist)
---@param _widget number|string
---@return number flag
function XGUIEng.IsWidgetShown(_widget) end

--- Setzt ein Limit an Textzeilen für ein Textwidget.
---@param _widget number|string
---@param _max number
---@param _last number flag
function XGUIEng.LimitTextLines(_widget, _max, _last) end

--- Speichert _int im Widget.
-- (Lesen mit XGUIEng.GetBaseWidgetUserVariable)
---@param _widget number|string
---@param _index number
---@param _int number
function XGUIEng.SetBaseWidgetUserVariable(_widget, _index, _int) end

--- Setzt den Schieberegler-Wert (Nur Aussehen!)
---@param _widget number|string
---@param _value number (0-100)
function XGUIEng.SetCustomScrollBarSliderValue(_widget, _value) end

--- ???
---@param _widget number|string
---@param _index number
---@param _value number
function XGUIEng.SetCustomWidgetInterfaceVariable(_widget, _index, _value) end

--- Setzt die Anzuzeigenden Textzeilen.
---@param _widget number|string
---@param _firstLine number
---@param _numberLines number
function XGUIEng.SetLinesToPrint(_widget, _firstLine, _numberLines) end

--- Färbt ein Widget ein.
---@param _widget number|string
---@param _state number 0->Normal, 1->MouseOver, 2->Geklickt, 3->Disabled, 4->Highlighed (nur buttons haben states >=1, alles andere nur 0)
---@param _r number (0-255)
---@param _g number (0-255)
---@param _b number (0-255)
---@param _a number (0-255)
function XGUIEng.SetMaterialColor(_widget, _state, _r, _g, _b, _a) end

--- Setzt die Textur eines Widgets (Nicht den Teil der Textur, der angezeigt wird...)
-- textur wird erst beim anzeigen geladen.
---@param _widget number|string
---@param _state number 0->Normal, 1->MouseOver, 2->Geklickt, 3->Disabled, 4->Highlighed (nur buttons haben states >=1, alles andere nur 0)
---@param _file string
function XGUIEng.SetMaterialTexture(_widget, _state, _file) end

--- Setzt den Fortschrittsbalken.
---@param _widget number|string
---@param _progress number
---@param _max number
function XGUIEng.SetProgressBarValues(_widget, _progress, _max) end

--- Setzt den String bei einem Eingabefenster.
---@param _widget number|string
---@param _string string
function XGUIEng.SetStringInputCustomWidgetString(_widget, _string) end

--- Setzt den Text eines Textwidgets.
---@param _widget number|string
---@param _text string|number
function XGUIEng.SetText(_widget, _text, _coding) end

--- Setzt den Text eines Textwidgets auf einen Zahlenwert.
---@param _widget number|string
---@param _number number
---@param _right number (== "@ra ")
function XGUIEng.SetTextByValue(_widget, _number, _right) end

--- Setzt die Textfarbe.
---@param _widget number|string
---@param _r number (0-255)
---@param _g number (0-255)
---@param _b number (0-255)
---@param _a number|nil (0-255, default 255)
function XGUIEng.SetTextColor(_widget, _r, _g, _b, _a) end

--- Setzt den Text aus einer Datei?
---@param _widget number|string
---@param _file string
---@param _bool boolean ???
function XGUIEng.SetTextFromFile(_widget, _file, _bool) end

--- Setzt den Text auf den StringTableText.
---@param _widget number|string
---@param _key string
function XGUIEng.SetTextKeyName(_widget, _key) end

--- Setzt den Text für den Tooltip als StringTableText. (nur im HauptMenu sinnvoll, InGame stimmen die Widgets nicht)
---@param _widget number|string
---@param _key string
function XGUIEng.SetToolTipTextKeyName(_widget, _key) end

--- Ändert den Widget-Name (und die Id)
---@param _widget number|string
---@param _newName string
---@return number newId
function XGUIEng.SetWidgetName(_widget, _newName) end

--- Setzt die Position des Widgets (obere linke Ecke).
-- (Kann nicht aus dem Übergeordneten Widget herausbewegt werden)
---@param _widgetId number|string
---@param _x number
---@param _y number
function XGUIEng.SetWidgetPosition(_widgetId, _x, _y) end

--- Setzt Position und Größe eines Widgets.
-- (Kann nicht aus dem Übergeordneten Widget herausbewegt werden)
---@param _widgetId number|string
---@param _posX number
---@param _posY number
---@param _sizeX number
---@param _sizeY number
function XGUIEng.SetWidgetPositionAndSize(_widgetId, _posX, _posY, _sizeX, _sizeY) end

--- Setzt die Größe des Widgets.
-- Standard für Buttons: 32x32
---@param _widgetId number|string
---@param _x number
---@param _y number
function XGUIEng.SetWidgetSize(_widgetId, _x, _y) end

--- Zeigt alle untergeordneten Widgets an oder nicht.
---@param _widget number|string
---@param _flag number
function XGUIEng.ShowAllSubWidgets(_widget, _flag) end

--- Zeigt das Widget an oder nicht.
-- (Ein angezeigtes Widget ist nicht unbedingt sichtbar!)
---@param _widget number|string
---@param _flag number
function XGUIEng.ShowWidget(_widget, _flag) end

--- Spielt ein Video in einem Videofenster ab (VideoPreview).
---@param _widget number|string
---@param _file string
---@param _loop number flag
function XGUIEng.StartVideoPlayback(_widget, _file, _loop) end

--- Beendet das Abspielen in einem Videofenster (VideoPreview).
---@param _widget string|number
function XGUIEng.StopVideoPlayback(_widget) end

--- Kopiert das aktuelle Aussehen des Buttons auf _target.
-- (Die Informationen von _target gehen verloren!)
---comment
---@param _source number|string
---@param _target number|string
function XGUIEng.TransferMaterials(_source, _target) end

--- Beendet das hervorheben einer Gruppe.
-- (Nur wenn sie sichtbar ist!)
---@param _widget string|number
---@param _group string
function XGUIEng.UnHighLightGroup(_widget, _group) end
