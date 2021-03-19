--- Input
-- C
Input = {}

--- Gibt zurück, ob die DebugKeys eingeschaltet sind
-- return: True/False
function Input.AreDebugKeysEnabled() end

--- Setzt das Spiel in den Videomodus
function Input.VideoMode() end

--- Setzt das Spiel in den normalen Spiel Modus
function Input.GameMode() end

--- Setzt das Spiel in den Cutscene Modus
function Input.CutsceneMode() end

--- Bindet das Drücken einer Taste an eine Lua-Funktion im Skript
-- _key (siehe Keys table)
-- _function (Beispiel "myfunction(x,y,z)" )
-- _mode (Gibt an für welchen Modus der Tastenbefehl gilt: 1/true/nil = DebugKeyModus, 2 = GameMode, 4 = CutsceneMode, 8 = VideoMode
--        _mode ist ein Bitfeld, werden mehrere Zahlen addiert, gilt der Befehl bei diesen, z.B. 8+4+1 Video, Cutscene und Debug)
function Input.KeyBindDown(_key, _function, _mode) end

--- Bindet das Loslassen einer Taste an eine Lua-Funktion im Skript
-- _key (siehe Keys table)
-- _function (Beispiel "myfunction(x,y,z)" )
-- _mode (Gibt an für welchen Modus der Tastenbefehl gilt: 1/true/nil = DebugKeyModus, 2 = GameMode, 4 = CutsceneMode, 8 = VideoMode
--        _mode ist ein Bitfeld, werden mehrere Zahlen addiert, gilt der Befehl bei diesen, z.B. 8+4+1 Video, Cutscene und Debug)
function Input.KeyBindUp(_key, _function, _mode) end

--- In der Reihenfolge 1-3 aufgerufen, werden die DebugKeys erlaubt, diese ermöglichen einem Mapper spezielle Tastenkombinationen zum Testen 
-- (siehe localkeybindings.lua)
-- _number (1,2,3 = in dieser Reihenfolge um DebugKeys zu erlauben; -1 um DebugKeys wieder abzuschalten
function Input.EnableDebugKeys(_number) end