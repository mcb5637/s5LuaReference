LOW_EXPERIENCE 			= 0
MEDIUM_EXPERIENCE 		= 1
HIGH_EXPERIENCE 		= 2
VERYHIGH_EXPERIENCE 	= 3

UPGRADE     = 0
TECHNOLOGY  = 1

--- Start the briefing system by using the specified briefing table.
--- @param _briefing table Table with all pages of the briefing (see tutorial for more information).
--- @see ResolveBriefing
function StartBriefing(_briefing) end

--- Resolve briefing page, hide exploration, remove marker, resolve quests etc. of given page.
--- @param _page table Table page that should be resolved.
--- @see StartBriefing
function ResolveBriefing(_page) end

-- Creates a chest at every position, which is specified by an entity.  The entity needs a naming.
-- syntax: GoldChest<number>. eg. GoldChest1 , GoldChest2 , GoldChest3 , ...
--- @see CreateRandomChests
--- @see CreateRandomGoldChest
--- @see CreateGoldChest
--- @see CreateIronChest
--- @see CreateChestOpener
--- @see StartChestQuest
function CreateRandomGoldChests() end

--- Creates a chest at every position, which is specified by an entity.  The entity needs a naming.
--- syntax: RandomChest<number>. eg. RandomChest1 , RandomChest2 , RandomChest3 , ...
--- @see CreateRandomGoldChests
--- @see CreateRandomGoldChest
--- @see CreateGoldChest
--- @see CreateIronChest
--- @see CreateChestOpener
--- @see StartChestQuest
function CreateRandomChests() end

--- Creates a chest at the specified position.
--- @param _position table Table with the position of the chest.
--- @see CreateRandomGoldChests
--- @see CreateRandomChests
--- @see CreateGoldChest
--- @see CreateIronChest
--- @see CreateChestOpener
--- @see StartChestQuest
function CreateRandomGoldChest(_position) end

--- Creates a chest at the specified position.
--- @param _position table with the position of the chest.
--- @see CreateRandomGoldChests
--- @see CreateRandomChests
--- @see CreateRandomGoldChest
--- @see CreateIronChest
--- @see CreateChestOpener
--- @see StartChestQuest
function CreateGoldChest(_position) end

--- Creates a chest at the specified position.
--- @param _position table Table with the position of the chest.
--- @see CreateRandomGoldChests
--- @see CreateRandomChests
--- @see CreateRandomGoldChest
--- @see CreateGoldChest
--- @see CreateChestOpener
--- @see StartChestQuest
function CreateIronChest(_position) end

--- Defines an entity as chest opener.
--- @param _name string String with the name of the entity.
--- @see CreateRandomGoldChests
--- @see CreateRandomChests
--- @see CreateRandomGoldChest
--- @see CreateGoldChest
--- @see CreateIronChest
--- @see StartChestQuest
function CreateChestOpener(_name) end

--- Must be called to start the chest handling.
--- @see CreateRandomGoldChests
--- @see CreateRandomChests
--- @see CreateRandomGoldChest
--- @see CreateGoldChest
--- @see CreateIronChest
--- @see CreateChestOpener
function StartChestQuest() end

--- Returns the logic Id of an entity.
--- @param _name string String with the name of the entity.
--- @return number Id Number with the id of the entity.
function GetEntityId(_name) end

--- Returns a random value.
--- @param _limit number Number with the upper limit. The random value is between 0 and limit-1.
--- @return number random Number with the random value.
function GetRandom(_limit) end

---@class (exact) Army 
---@field player number Id of the player that owns army. Between 1-8.
---@field id number Id of the army must be between 0-9.
---@field position Position
---@field rodeLength number Area that army covers.
---@field beAggressive boolean Activates AI.Army_BeAlwaysAggressive on army Id.

--- Feeds an army with default values.
--- @param _army Army Table with the description of an army.
function SetupArmy(_army) end

--- Returns true, when two entities are close together.
--- @param _entity string String with the name of the first entity or Number with the id of the entity.
--- @param _entity string String with the name of the second entity or Number with the id of the entity.
--- @return boolean
function IsNear(_entity,_target,_distance) end

--- Replace an entity by a new one.
--- @param _entity string String with name or Number of the entity to be replaced
--- @param _entityType number Number with the type of the new entity.
function ReplaceEntity(_Entity, _EntityType) end

--- Informs the game about the victory of the human player.
--- @see Defeat
function Victory() end

--- Informs the game about the defeat of the human player.
--- @see Victory
function Defeat() end

--- Set the health of an entity.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @param _health number Number with the number of health points.
function SetHealth (_entity,_health) end

--- Rotates an specified entity by an angle.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @param _angle number Number with the rotation angle.
function RotateEntity(_entity,_angle) end

--- Makes an entity vulnerable.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @see MakeInvulnerable
function MakeVulnerable (_entity) end

--- Makes an entity invulnerable.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @see MakeVulnerable.
function MakeInvulnerable(_entity) end

--- Returns the position of an entity or an army.
--- You can use this function to receive the position of an AI army, too.
--- Use the army table as parameter.
--- @param _entity string String with the name of the entity or Number with the id of the entity or Table of an AI army.
--- @return Position
function GetPosition(_entity) end

--- Set the position of an entity.
--- This function works ONLY for entities.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @param _position Position Table with the position (X,Y).
function SetPosition(_entity,_position) end

--- Returns the id of the closest enemy entity to the specified army.
--- The _range parameter is optional, without _range you will get the closest entity in range of the army activation radius.
--- @param _army Army with the description of an army.
--- @param _range number with the search range(optional!).
--- @return number Id Id with the id of the closest enemy entity, otherwise 0.
function GetClosestEntity(_army,_range) end

--- Returns True when the specified entity is selected, otherwise false.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @return boolean isSelected Bool with True when entity is selected, otherwise false.
function IsEntitySelected(_entity) end

--- AI army moves slowly forward to the closest enemy.
--- @param _army Army Table with the description of an army.
--- @see Retreat
--- @see Defend
--- @see FrontalAttack
--- @see Synchronize
function Advance(_army) end

--- AI army defends region, defined in the army table.
--- @param _army Army with the description of an army.
--- @see Retreat
--- @see FrontalAttack
--- @see Advance
--- @see Redeploy
--- @see Synchronize
function Defend(_army) end

--- AI army attacks cloesest enemy immediately.
--- @param _army Army Table with the description of an army.
--- @see Retreat
--- @see Advance
--- @see Defend
--- @see Redeploy
--- @see Synchronize
function FrontalAttack(_army) end

--- AI army moves back.
--- @param _army Army Table with the description of an army.
--- @param _rodeLength number Number with the new activation radius.
--- @see FrontalAttack
--- @see Advance
--- @see Defend
--- @see Redeploy
--- @see Synchronize
function Retreat(_army,_rodeLength) end

--- AI army redeploys at specified position.
--- @param _army Army Table with the description of an army.
--- @param _position Position Table with the new position.
--- @param _rodeLength number Number with the new activation radius.
--- @see FrontalAttack
--- @see Advance
--- @see Defend
--- @see Retreat
--- @see Synchronize
function Redeploy(_army,_position,_rodeLength) end

--- Synchonize the deployment of two armies.
--- @param _army Army Table with the description of an army to be melted.
--- @param _army Army Table with the description of an army to be synchronized.
--- @see FrontalAttack
--- @see Advance
--- @see Defend
--- @see Retreat
--- @see Redeploy
function Synchronize(_army0,_army1) end

--- Starts a new job executed every second. Automatically calls a function named "Condition_".._name and if condition is true,
--- calls "Action_".._name 
--- @param _name string String with the name of the job.
--- @return number JobId Number with the id of the job.
--- @see StartHiResJob
--- @see JobIsRunning
--- @see EndJob
--- @see StartSimpleHiResJob
function StartJob(_name) end

--- Starts a new job executed every second.
--- @param _name string String with the name of the job.
--- @return number JobId Number with the id of the job.
--- @see StartHiResJob
--- @see StartSimpleJob
--- @see JobIsRunning
--- @see EndJob
--- @see StartSimpleHiResJob
function StartSimpleJob(_name) end

--- Starts a new high resolution job.
--- @param _name String with the name of the job.
--- @return Number with the id of the job.
--- @see StartHiResJob
--- @see StartSimpleJob
--- @see JobIsRunning
--- @see EndJob
function StartSimpleHiResJob(_name) end

--- Starts a new high resolution job. Same as StartJob, but every 10th of a second.
--- That type of job is much faster and cost much more performance than a standard job, so be carefully by using it.
--- @param _name string String with the name of the job.
--- @return number JobId Number with the id of the job.
--- @see StartJob
--- @see JobIsRunning
--- @see EndJob
--- @see StartSimpleHiResJob
function StartHiResJob(_name) end

--- Returns the state of a job.
--- @param _id number Number with the id of the job.
--- @return boolean jobState Bool with the current state of the job. True when running, otherwise False.
--- @see StartHiResJob
--- @see StartJob
--- @see EndJob
--- @see StartSimpleHiResJob
function JobIsRunning(_id) end

--- End a running job.
--- @param _id number Number with the id of the job.
--- @see StartHiResJob
--- @see StartJob
--- @see JobIsRunning
--- @see StartSimpleHiResJob
function EndJob(_id) end

--- Returns true when an entity is still alive.
--- @param _entity string String with the name of the entity.
--- @return boolean isAlive Bool with True when entity is alive and valid, otherwise false.
function IsValid(_entity) end

--- Returns True when all Leaders of the army are still alive.
--- @param _army Army Table with the description of an army.
--- @return boolean Bool with True, when all elements of the army are still alive, otherwise false.
--- @see IsWeak
--- @see IsVeryWeak
function HasFullStrength(_army) end

--- Returns True when at least one Leader of the army is not alive anymore.
--- @param _army Army Table with the description of an army.
--- @return boolean Bool with True, when one element of the army is dead.
--- @see IsVeryWeak
--- @see HasFullStrength
function IsWeak(_army) end

--- Returns True when many Leaders of the army are dead. (One third of army strength)
--- @param _army Army Table with the description of an army.
--- @return boolean isVeryWeak Bool with True, when many elements are dead.
--- @see IsWeak
--- @see HasFullStrength
function IsVeryWeak(_army) end

--- Returns the number of Leaders which are attached to an AI army.
--- @param _army Army Table with the description of an army.
--- @return number numLeaders Number with the number of attached leaders.
function GetNumberOfLeaders(_army) end

--- Print a message on the screen.
--- @param _text string String with the message.
function Message(_text) end

--- Return the id of the player.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @return number playerId Number with the id of the player.
function GetPlayer(_entity) end

--- Returns True when the specified entity is dead.
--- You can use that function for AI armies, too.
--- @param _entity string String with the name of the entity or Number with the id of the entity or Table of an AI army.
--- @return boolean isDead Bool with True when entity is dead, otherwise False.
--- @see IsAlive
--- @see IsDestroyed
--- @see IsExisting
function IsDead(_entity) end

--- Returns True when the specified entity is destroyed(not in game).
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @return boolean isDestroyed Bool with True when entity is destroyed (not on map), otherwise False.
--- @see IsAlive
--- @see IsDead
--- @see IsExisting
function IsDestroyed(_entity) end

--- Returns True when the specified entity is existing in game.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @return boolean isExisiting Bool with True when entity is existing (in game), otherwise False.
--- @see IsAlive
--- @see IsDead
--- @see IsDestroyed
function IsExisting(_entity) end

--- Returns True when the specified entity is alive.
--- You can not use that function for AI armies.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @return boolean isAlive Bool with True when entity is alive, otherwise False.
--- @see IsDead
--- @see IsDestroyed
--- @see IsExisting
function IsAlive(_entity) end

--- Creates an entity.
--- @param _playerId number Number with the id of the player.
--- @param _entity number Number with the type of the entity (see Entity Type List).
--- @param _position Position Table with the position of the entity (see Position Table).
--- @param _name string String with the name of the entity.
--- @return number Id Number with the id of the created entity.
--- @see DestroyEntity
function CreateEntity(_playerId,_entity,_position,_name) end

--- Destroys an entity.
--- @param _entity number Number with the id of the entity, or String with the name of the entity.
--- @see CreateEntity
function DestroyEntity(_entity) end

---@class (exact) TroopDesc Describes a troop to be added to an army.
---@field leaderType number Entity type of leader.
---@field soldierType number Entity type of attached soldier.
---@field maxNumberOfSoldiers number Number of soldiers.
---@field experiencePoints number Experience points (bugged?).
---@field minNumberOfSoldiers number Number of soldiers.
---@field position Position Tabble that defines soldier position.

--- Enlarges the specified army with the described troop.
--- @param _army Army Table with the description of an army.
--- @param _troop TroopDesc Table with the description of a troop.
function EnlargeArmy(_army,_troop) end

--- Order an entity to attack a position on the map.
--- @param _entity number Number with the id of the entity, or String with the name of an entity.
--- @param _position Positon Table with the attack position.
--- @see Move
function Attack(_entity,_position) end

--- Move an entity to a specified position.
--- @param _entity number Number with the id of the entity, or String with the name of an entity.
--- @param _position Position Table with the movement position.
--- @see Attack
--- @see LookAt
function Move(_entity,_position,_distance) end

--- Feeds the AI system with a construction plan file.
--- @param _playerId number Number with the id of the player.
--- @param _planFile table Table with the plan file table (see Tables).
--- @see FeedAiWithResearchPlanFile
function FeedAiWithConstructionPlanFile(_playerId,_planFile) end

--- Feeds the AI system with a research plan file.
--- @param _playerId number Number with the id of the player.
--- @param _planFile table Table with the research plan file (see Tables).
--- @see FeedAiWithConstructionPlanFile
function FeedAiWithResearchPlanFile(_playerId,_planFile) end

--- Set the diplomacy state between the players.
--- @param _playerId1 number Number with the id of the first player.
--- @param _playerId2 number Number with the id of the second player.
--- @see SetNeutral
--- @see SetFriendly
function SetHostile(_playerId1,_playerId2) end

--- Set the diplomacy state between the players.
--- @param _playerId1 Number with the id of the first player.
--- @param _playerId2 Number with the id of the second player.
--- @see SetHostile
--- @see SetFriendly
function SetNeutral(_playerId1,_playerId2) end

--- Set the diplomacy state between the players.
--- @param _playerId1 number Number with the id of the first player.
--- @param _playerId2 number Number with the id of the second player.
--- @see SetHostile
--- @see SetNeutral
function SetFriendly(_playerId1,_playerId2) end

--- Setup Normal Weather Gfx Set.
--- @see SetupEvelanceWeatherGfxSet.
--- @see SetupMediterraneanWeatherGfxSet.
--- @see SetupHighlandWeatherGfxSet.
function SetupNormalWeatherGfxSet() end

--- Setup Evelance Weather Gfx Set.
--- @see SetupNormalWeatherGfxSet
--- @see SetupMediterraneanWeatherGfxSet
--- @see SetupHighlandWeatherGfxSet
function SetupEvelanceWeatherGfxSet() end

--- Setup Mediterranean Weather Gfx Set.
--- @see SetupNormalWeatherGfxSet
--- @see SetupEvelanceWeatherGfxSet
--- @see SetupHighlandWeatherGfxSet
function SetupMediterraneanWeatherGfxSet() end

--- Setup Highland Weather Gfx Set.
--- @see SetupNormalWeatherGfxSet
--- @see SetupEvelanceWeatherGfxSet
--- @see SetupMediterraneanWeatherGfxSet
function SetupHighlandWeatherGfxSet() end

--- Add Summer at end of Weather Periods.
--- @param _seconds number Summer time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicRain
--- @see AddPeriodicWinter
--- @see StartSummer
--- @see StartRain
--- @see StartWinter
function AddPeriodicSummer(_seconds) end

--- Add Rain at end of Weather Periods.
--- @param _seconds number Raining time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicSummer
--- @see AddPeriodicWinter
--- @see StartSummer
--- @see StartRain
--- @see StartWinter
function AddPeriodicRain(_seconds) end

--- Add Winter at end of Weather Periods.
--- @param _seconds number Winter time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicSummer
--- @see AddPeriodicRain
--- @see StartSummer
--- @see StartRain
--- @see StartWinter
function AddPeriodicWinter(_seconds) end

--- Switch weather to summer and let the sun shine for given time.
--- return back to periodic weather after time gone.
--- @param _seconds number Summer time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicSummer
--- @see AddPeriodicRain
--- @see AddPeriodicWinter
--- @see StartRain
--- @see StartWinter
function StartSummer(_seconds) end

--- Switch weather to rain and let it rain for given time.
--- return back to periodic weather after time gone.
--- @param _seconds number Raining time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicSummer
--- @see AddPeriodicRain
--- @see AddPeriodicWinter
--- @see StartSummer
--- @see StartWinter
function StartRain(_seconds) end

--- Switch weather to winter and let it snow for given time.
--- return back to periodic weather after time gone.
--- @param _seconds Number winter time in seconds ( minimum length is 5 seconds ).
--- @see AddPeriodicSummer
--- @see AddPeriodicRain
--- @see AddPeriodicWinter
--- @see StartSummer
--- @see StartRain
function StartWinter(_seconds) end

--- Change entities player Id.
--- @param _name string String with the name of the entity.
--- @param _player number Number with the target player Id.
--- @return number Id Id of entity.
function ChangePlayer(_name,_player) end

--- Is an entity of special type in given area.
--- @param _player number Number entity belongs to this player.
--- @param _entityType number Number type of entity to search for.
--- @param _position Position Table position table with center of area.
--- @param _range number Number range to check for.
--- @param _amount number Number check for this number of entities.
--- @return boolean hasEntities Bool true if entities in area else false.
function AreEntitiesInArea(_player, _entityType, _position, _range, _amount) end

--- Let an entity look at another entity by rotating it.
--- @param _entity number Number with the id of the entity, or String with the name of an entity.
--- @param _target number Number with the id of the entity, or String with the name of an entity.
--- @see Attack
--- @see Move
function LookAt(_entity, _target) end

--- Allow technologies.
--- @param _technology number Number with the id of the technology.
--- @param _playerID number Number with the id of the player this id is optional and will be set to human player as default.
--- @see ForbidTechnology
--- @see ForbidAllUniversityTechnologies
--- @see ResearchTechnology
function AllowTechnology(_technology, _playerID) end

--- Forbid technologies.
--- @param _technology number Number with the id of the technology.
--- @param _playerID number Number with the id of the player this id is optional and will be set to human player as default.
--- @see AllowTechnology
--- @see ForbidAllUniversityTechnologies
--- @see ResearchTechnology
function ForbidTechnology(_technology, _playerID) end

--- Reserach technologies.
--- @param _technology number Number with the id of the technology.
--- @param _playerID number Number with the id of the player this id is optional and will be set to human player as default.
--- @see AllowTechnology
--- @see ForbidTechnology
--- @see ForbidAllUniversityTechnologies
function ResearchTechnology(_technology, _playerID) end

--- Forbid all universtiy technologies.
--- @param _playerID number Number with the id of the player this id is optional and will be set to human player as default.
--- @see AllowTechnology
--- @see ForbidTechnology
--- @see ResearchTechnology
function ForbidAllUniversityTechnologies(_playerID) end

--- Set player name displayed in diplomacy window.
--- @param _playerId number Number with the id of the player.
--- @param _name string String containing name of player if nil name is removed from diplomacy window.
function SetPlayerName(_playerId, _name) end

---@class AiDesc Describes an AI for
---@see SetupPlayerAi
AiDesc = {
    resources = 
    {
        gold = 0, ---@type number
        clay = 0, ---@type number
        iron = 0, ---@type number
        sulfur = 0, ---@type number
        wood = 0, ---@type number
    }, ---@type table 
    refresh = 
    {
        gold = 0, ---@type number
        clay = 0, ---@type number
        iron = 0, ---@type number
        sulfur = 0, ---@type number
        wood = 0, ---@type number
    }, ---@type table 
    serfLimit = 0,
    resourceFocus = 0,
    extracting = 0, ---@type number 0 = false, 1 = true
    rebuild = false,
    constructing = false,
    repairing = false,
}

-- Setup ai for player.
--- @param _playerId number Number with the id of the player.
--- @param _description AiDesc Table with the ai description (see tutorial for more information).
function SetupPlayerAi(_playerId,_description) end

--- Set marketplace start price for gold, if playerId is optional.
--- @param _playerId number Number with the id of the player, this id is optional default value is 1.
--- @param _price number Number new price.
--- @see SetClayPrice
--- @see SetWoodPrice
--- @see SetStonePrice
--- @see SetIronPrice
--- @see SetSulfurPrice
--- @see SetGoldDeflation
--- @see SetGoldInflation
function SetGoldPrice(_playerId, _price) end
--- @see SetGoldPrice
function SetClayPrice(_playerId, _price) end
--- @see SetGoldPrice
function SetWoodPrice(_playerId, _price) end
--- @see SetGoldPrice
function SetStonePrice(_playerId, _price) end
--- @see SetGoldPrice
function SetIronPrice(_playerId, _price) end
--- @see SetGoldPrice
function SetSulfurPrice(_playerId, _price) end

--- Set marketplace deflation for gold, if playerId is optional.
--- @param _playerId number Number with the id of the player, this id is optional default value is 1.
--- @param _value number Number deflation value.
--- @see SetClayDeflation
--- @see SetWoodDeflation
--- @see SetStoneDeflation
--- @see SetIronDeflation
--- @see SetSulfurDeflation
--- @see SetGoldPrice
--- @see SetGoldInflation
function SetGoldDeflation(_playerId, _value) end
--- @see SetGoldDeflation
function SetClayDeflation(_playerId, _value) end
--- @see SetGoldDeflation
function SetWoodDeflation(_playerId, _value) end
--- @see SetGoldDeflation
function SetStoneDeflation(_playerId, _value) end
--- @see SetGoldDeflation
function SetIronDeflation(_playerId, _value) end
--- @see SetGoldDeflation
function SetSulfurDeflation(_playerId, _value) end

--- Set marketplace inflation for gold, if playerId is optional.
--- @param _playerId number Number with the id of the player, this id is optional default value is 1.
--- @param _value number Number inflation value.
--- @see SetClayInflation
--- @see SetWoodInflation
--- @see SetStoneInflation
--- @see SetIronInflation
--- @see SetSulfurInflation
--- @see SetGoldPrice
--- @see SetGoldDeflation
function SetGoldInflation(_playerId, _value) end
--- @see SetGoldInflation
function SetClayInflation(_playerId, _value) end
--- @see SetGoldInflation
function SetWoodInflation(_playerId, _value) end
--- @see SetGoldInflation
function SetStoneInflation(_playerId, _value) end
--- @see SetGoldInflation
function SetIronInflation(_playerId, _value) end
--- @see SetGoldInflation
function SetSulfurInflation(_playerId, _value) end

---@class NPCTable
---@field name string Entity name of said npc.
---@field follow string Entity name of entity to follow.

--- Create a npc that can be used as interaction target.
--- @param _npc NPCTable Table npc data table, see description of table NPC and take a look at the tutorial.
--- @see DestroyNPC
--- @see TalkedToNPC
function CreateNPC(_npc) end

--- Destroy a npc.
--- @param _npc NPCTable Table npc data table, see description of table NPC and take a look at the tutorial.
--- @see CreateNPC
--- @see TalkedToNPC
function DestroyNPC(_npc) end

--- Has any hero already talked to this npc.
--- @param _npc NPCTable Table npc data table, see description of table NPC and take a look at the tutorial.
--- @return boolean hasTalked Bool true if player has already talked to npc else false.
--- @see CreateNPC
--- @see DestroyNPC
function TalkedToNPC(_npc) end

--- Get an entities name.
--- @param _entity number Number with the id of the entity.
--- @return string name String name of entity.
--- @see GetEntityId
--- @see SetEntityName
function GetEntityName(_entity) end

--- Give an entity a name.
--- @param _entity string String with the name of the entity or Number with the id of the entity.
--- @param _name string New name of entity.
--- @see GetEntityId
--- @see GetEntityName
function SetEntityName(_entity, _name) end

--- Create military group with leader and given amount of soldiers.
--- @param _player number Id of the player.
--- @param _entity number Leadertype of the entity (see Entity Type List).
--- @param _soldiers number Amount of soldiers attached to leader.
--- @param _position Position Table with the position of the entity (see Position Table).
--- @param _name string String with the name of the entity...optional.
--- @param _lookAt string String with the name of the entity or Number with the id of the entity to look at after creation...optional.
--- @see CreateEntity
--- @see DestroyEntity
function CreateMilitaryGroup(_player,_entity,_soldiers,_position,_name,_lookAt) end