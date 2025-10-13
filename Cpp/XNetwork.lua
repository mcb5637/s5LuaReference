---@diagnostic disable: missing-return
XNetwork = {
	--- ip adress?
	---@return number n1
	---@return number n2
	---@return number n3
	---@return number n4
    Broadcast_Client_GetFoundServer = function()end,
	---@return number
    Broadcast_Client_GetNumberOfServer = function()end,
	---ip adress -> index?
	---@param n1 number
	---@param n2 number
	---@param n3 number
	---@param n4 number
	---@return number
    Broadcast_Client_GetServerIndex = function(n1, n2, n3, n4)end,
	---@param ni number
	---@return number n1
	---@return number n2
	---@return number n3
	---@return number n4
	---@return string
    Broadcast_Client_GetServerInformation = function(ni)end,
	---@return number flag
    Broadcast_Client_UpdateServerList = function()end,
	---@return number flag
    Broadcast_Start = function()end,
	---@return number flag
    Broadcast_Stop = function()end,
	---@return number flag
    Broadcast_Update = function()end,
	---@param msg string
    Chat_SendMessageToAll = function(msg)end,
	---@param msg string
    Chat_SendMessageToAllied = function(msg)end,
	---@param b boolean
	---@return number flag
    GameInformation_CanStartGame = function(b)end,
	---@return number flag
    GameInformation_GetFreeAlliancesFlag = function()end,
	---@return number
	---@param pl number
    GameInformation_GetLogicPlayerColor = function(pl)end,
	---@return number np const 8
    GameInformation_GetLogicPlayerIDMaximum = function()end,
	---@return number
	---@param pl number
    GameInformation_GetLogicPlayerTeam = function(pl)end,
	---@return string
	---@param pl number
    GameInformation_GetLogicPlayerUbiComUserName = function(pl)end,
	---@return string
	---@param pl number
    GameInformation_GetLogicPlayerUserName = function(pl)end,
	---@return number
    GameInformation_GetMapMaximumNumberOfHumanPlayer = function()end,
	---@return string
    GameInformation_GetMapName = function()end,
	---@return number
    GameInformation_GetMapType = function()end,
	---@return number flag
    GameInformation_GetMPFastGameFlag = function()end,
	---@return number
    GameInformation_GetMPFreeGameMode = function()end,
	---@return number flag
    GameInformation_GetMPFreeGameModeFlag = function()end,
	---@return number
    GameInformation_GetMPPeaceTime = function()end,
	---@param pl number
	---@return number
    GameInformation_GetNetworkAddressByPlayerID = function(pl)end,
	---@param c number
	---@return number
    GameInformation_GetNextFreeLogicPlayerColor = function(c)end,
	---@param a number
	---@return number
    GameInformation_GetPlayerIDByNetworkAddress = function(a)end,
	---@return number
	---@param pl number
    GameInformation_GetPlayerTeam = function(pl)end,
	---@param n number
    GameInformation_HostSetStaticNumberOfTeams = function(n)end,
	---@param pl number
    ---@return number
    GameInformation_IsHumanPlayerAttachedToPlayerID = function(pl)end,
	---@param pl number
    ---@return number
    GameInformation_IsHumanPlayerThatLeftAttachedToPlayerID = function(pl)end,
	---@return number flag
	---@param f number
    GameInformation_IsMPGameOptionsFlagSet = function(f)end,
	---@param pl number
	---@param col number
    GameInformation_SetLogicPlayerColor = function(pl, col)end,
	---@param pl number
	---@param ad number
    GameInformation_SetLogicPlayerNetworkAddress = function(pl, ad)end,
	---@param name string
	---@param numPlayers number
	---@param mpflags number
	---@param guid string
	---@param maptype number
    GameInformation_SetMap = function(name, numPlayers, mpflags, guid, maptype)end,
	---@param n number
    GameInformation_SetMinimumNumberOfTeams = function(n)end,
	---@param m number
    GameInformation_SetMPFreeGameMode = function(m)end,
	---@param t number
    GameInformation_SetMPPeaceTime = function(t)end,
	---@param pl number
    GameInformation_ToggleLogicPlayerTeam = function(pl)end,
    GameInformation_ToggleMPFastGameFlag = function()end,
	---@return string
    GameSystem_GetReasonForHanging = function()end,
	---@return number flag
    GameSystem_IsHanging = function()end,
	---@return number flag
    Host_StartGame = function()end,
	---@return number
    Host_UserInSession_GetHostNetworkAddress = function()end,
	---@return number flag
    Manager_Create = function()end,
	---@return number flag
    Manager_Destroy = function()end,
	---@return number flag
    Manager_DoesExist = function()end,
	---@return number
    Manager_GetLocalMachineLogicPlayerID = function()end,
	---@return number
    Manager_GetLocalMachineNetworkAddress = function()end,
	---@return string
    Manager_GetLocalMachineUserName = function()end,
	---@return string
    Manager_GetUserInSessionInfoString = function()end,
	---@return number flag
    Manager_IsGameRunning = function()end,
	---@param ad number
    Manager_KickPlayerOutOfSession = function(ad)end,
	---@return number flag
    Manager_LocalPlayerWantsToLeaveGame = function()end,
	---@return number flag
    Manager_RestartAsServer_SinglePlayer = function()end,
	---@return number flag
    Manager_StartGame = function()end,
	---@return number flag
    Manager_StartNetwork = function()end,
	---@return number flag
    Manager_StartSession = function()end,
	---@return number flag
    Manager_Stop = function()end,
	---@return number flag
    Manager_Update = function()end,
	---@return number
    Mode_Get = function()end,
	---@param ad number
	---@return number
    Ping_Get = function(ad)end,
	---@return number
    StartUp_Game_GetNumberOfMPPlayers = function()end,
	---@param n number
    StartUp_Game_SetNumberOfMPPlayers = function(n)end,
	---@return number flag
    StartUp_Network_IsServer = function()end,
	---@param flag number
    StartUp_Network_SetServerFlag = function(flag)end,
	---@return number n1
	---@return number n2
	---@return number n3
	---@return number n4
    StartUp_Session_GetServerIP = function()end,
	---@param n1 number
	---@param n2 number
	---@param n3 number
	---@param n4 number
    StartUp_Session_SetServerIP = function(n1, n2, n3, n4)end,
	---@return number
    State_Get = function()end,
	---@param s string
	---@return number n1
	---@return number n2
	---@return number n3
	---@return number n4
    Tool_ConvertStringToIPAddress = function(s)end,
	---@param tincatadr number
	---@param acc string
    UbiCom_ConnectTinCatUserWithUbiComAccount = function(tincatadr, acc)end,
	---@param i number
	---@return number
    UserInSession_GetNetworkAddressByIndex = function(i)end,
	---@return number
    UserInSession_GetNumber = function()end,
	---@return string
	---@param adr number
    UserInSession_GetUbiComAccountNameByNetworkAddress = function(adr)end,
	---@return string
	---@param adr number
    UserInSession_GetUserNameByNetworkAddress = function(adr)end,
	---@param adr number
	---@return number flag
    UserInSession_IsNetworkAddressAValidUser = function(adr)end,
}
