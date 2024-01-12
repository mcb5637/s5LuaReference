---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras CWidget.dll

CWidget = {}

-- Intern, Gibt einen Pointer auf ein Widget zurück
---@param _widgetId number
---@return number address
function CWidget.GetAddress(_widgetId) end

-- Intern, Gibt einen Pointer auf ein Widget zurück
---@param _widgetId number
---@return string address
function CWidget.GetAddressHex(_widgetId) end

-- Intern, Gibt alle aktuell geladenen Widgets zurück
---@return string xml
function CWidget.GetGUIAsString() end

-- Gibt die id des widgets unter der Maus zurück
---@return number widgetId
function CWidget.GetHoveredWidgetID() end

-- Intern, Gibt das letzte geladene UI zurück
---@return string xml
function CWidget.GetLastLoadedUIAsString() end

-- Gibt die Position der Maus innerhalb des Fensters zurück (von oben links nach unten rechts)
---@return number x
---@return number y
function CWidget.GetMouseScreenPosition() end

-- Gibt den Namen eines Widget zurück
---@param _widgetId number
---@return string name
function CWidget.GetName(_widgetId) end

-- Gibt die Anzahl geladener Widgets zurück
---@return number amount
function CWidget.GetNumber() end

-- Intern, Gibt die Anzahl an ausstehenden Veränderungen am UI zurück
---@return number amount
function CWidget.GetNumberOfUncommitedTransactions() end

-- Gibt die relative Position eines Widgets zurück
---@param _widgetId number
---@return number x
---@return number y
function CWidget.GetPosition(_widgetId) end

-- Gibt die Größe eines Widgets zurück
---@param _widgetId number
---@return number w
---@return number h
function CWidget.GetSize(_widgetId) end

-- Gibt die Texturkoordinaten eins Widgets zurück
---@param _widgetId number
---@return number x
---@return number y
---@return number percentW
---@return number percentH
function CWidget.GetTextureOffsets(_widgetId) end

-- Intern, Blendet ein Widget aus.
-- Ähnlich wie XGUIEng.ShwoWidget(_widget, 0)
---@param _widgetId number
function CWidget.HideWidget(_widgetId) end

-- Gibt zurück, ob ein Widget angezeigt wird.
---@param _widgetId number
---@return boolean
function CWidget.IsWidgetShown(_widgetId) end

-- Lädt eine GUI, behält dabei Position, Ausmaße und Sichtbarkeit nach dem Laden bei.
---@param _filePath string
function CWidget.LoadGUI(_filePath) end

-- Lädt eine GUI.
---@param _filePath string
function CWidget.LoadGUINoPreserve(_filePath) end

-- Intern
function CWidget.RestoreUI() end

-- Intern
function CWidget.SaveUI() end

-- Intern, setzt den Namen einer Funktion im Hauptmenü, welche außerhalb von GUI Callbacks/Triggern ausgelöst wird.
-- Innerhalb diese Funktion lässt sich die GUI neu laden.
---@param _name function
function CWidget.SetOutOfGUIFunction(_name) end

-- Setzt die Position eines Widgets.
-- Ähnlich wie XGUIEng.SetWidgetPosition(_widget, _x, _y)
---@param _widgetId number
---@param _x number
---@param _y number
function CWidget.SetPosition(_widgetId, _x, _y) end

-- Setzt die Größe eines Widgets.
-- Ähnlich wie XGUIEng.SetWidgetSize(_widget, _x, _y)
---@param _widgetId number
---@param _x number
---@param _y number
function CWidget.SetSize(_widgetId, _x, _y) end

-- Intern, Zeigt ein Widget.
-- Ähnlich wie XGUIEng.ShowWidget(_widget, 1)
---@param _widgetId number
function CWidget.ShowWidget(_widgetId) end

-- Fügt dem UI Widgets hinzu.
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _xml string
---@param _nextSibling? string
function CWidget.Transaction_AddRawWidgets(_xml, _nextSibling) end

-- Fügt dem UI Widgets hinzu.
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _filePath string
---@param _nextSibling? string
function CWidget.Transaction_AddRawWidgetsFromFile(_filePath, _nextSibling) end

-- Intern, Fügt der MP Lobby eine Regelseite hinzu
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _filePath string
function CWidget.Transaction_AddRulePage(_filePath) end

-- Intern, Fügt der MP Lobby eine Regelseite hinzu
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _xml string
function CWidget.Transaction_AddRulePageString(_xml) end

-- Intern, Fügt dem UI einen Textbutton hinzu
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _button table
---@param _nextSibling? string
function CWidget.Transaction_AddTextButton(_button, _nextSibling) end

-- Commited ausstehende Änderungen und lädt die GUI neu.
function CWidget.Transaction_Commit() end

-- Commited ausstehende Änderungen und lädt die GUI basierend auf der übergebenen XML neu.
---@param _xml string
function CWidget.Transaction_CommitWithUI(_xml) end

-- Verhindert das Behalten der Eigenschaften (Größe/Ausmaße/Sichtbarkeit) eines Widget beim GUI (neu)-laden.
---@param _widgetName string
function CWidget.Transaction_ExcludePreserve(_widgetName) end

-- Entfernt ein Widget aus dem UI.
-- Funktioniert nur im OnInitialize callback oder als PreCommit callback
---@param _widgetName string
function CWidget.Transaction_RemoveWidget(_widgetName) end