--- Achtung: Nur Kimichura MP oder SP Extended.
--- Default Rückgabewert wäre amount, kann abgeändert werden um das Spawnen von Arbeitern zu verhindern/erlauben.
function GameCallback_GetPlayerAttractionLimitForSpawningWorker(player, amount) end

--- Achtung: Nur Kimichura MP oder SP Extended.
--- Default Rückgabewert wäre amount, kann abgeändert werden um das Spawnen von Arbeitern zu verhinden/erlauben.
function GameCallback_GetPlayerAttractionUsageForSpawningWorker(player, amount) end

--- Achtung: Nur Kimichura MP oder SP Extended.
--- Rückgabe entscheidet ob der Spieler noch Platz für eine Einheit hat, wird bei den Events BUY_SERF, BUY_LEADER, BUY_SOLDIER aufgerufen über die
--- Event Data kann der Typ der zu Spawnenden Entity ermittelt werden. CanSpawn ist vorbelegt mit derm Wert der ursprünglich ermittelt würde.
--- Der Ressourcencheck findet nach dieser Abfrage statt weshalb nicht garantiert ist, dass eine Entity auch spawnen kann wenn hier true zurückgegeben wird!
--- (GUI muss gesondert betrachtet werden)
function GameCallback_BuyEntityAttractionLimitCheck(player, canSpawn) end