Sound = {
    ---gets current volume
    ---@param soundtype number, see set
    ---@return number vol
    GetVolumeAdjustment = function(soundtype)end,
    IsSoundPlaying = function()end,
    Pause3D = function()end,
    PauseAll = function()end,
    Play2DQueuedSound = function()end,
    --- plays a sound (used by warning for questinfo)
    ---@param soundid number sound id
    ---@param loopedFlag number 0/1
    ---@param volume number|nil optional, default 127
    Play2DSound = function(soundid, loopedFlag, volume)end,
    PlayFeedbackSound = function()end,
    PlayGUISound = function()end,
    PlayQueuedFeedbackSound = function()end,
    PlaySound = function()end,
    PlaySoundPos = function()end,
    --- changes volume
    ---@param soundtype number 0->main volume, 1->unknown, affects all?, 2->feedback, 3->soundeffect, 4->voice (briefing/ctscene/video?), 5->ambient, 6->voice too?
    ---@param vol number >=0, <= 1
    SetVolumeAdjustment = function(soundtype, vol)end,
    StartMusic = function()end,
    StartOnlineHelpSound = function()end,
    StopSound = function()end,
}