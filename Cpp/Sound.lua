Sound = {
    ---gets current volume
    ---@param soundtype number, see set
    ---@return number vol
    GetVolumeAdjustment = function(soundtype)end,
    IsSoundPlaying = function()end,
    --- pauses 3d? sounds
    ---@param p boolean
    Pause3D = function(p)end,
    --- pauses all sounds (including music)
    ---@param p boolean
    PauseAll = function(p)end,
    Play2DQueuedSound = function()end,
    --- plays a sound (used by warning for questinfo)
    ---@param soundid number sound id
    ---@param loopedFlag number 0/1
    ---@param volume number|nil optional, default 127
    Play2DSound = function(soundid, loopedFlag, volume)end,
    ---@param soundid number sound id
    ---@param volume number|nil optional, default 127
    PlayFeedbackSound = function(soundid, volume)end,
    ---@param soundid number sound id
    ---@param volume number|nil optional, default 127
    PlayGUISound = function(soundid, volume)end,
    PlayQueuedFeedbackSound = function()end,
    ---@param soundid number sound id
    PlaySound = function(soundid, uk)end,
    --- starts a sound at a specific position
    ---@param soundid number
    ---@param x number
    ---@param y number
    ---@param z number
    ---@param volume number (0-127)
    ---@param looped number flag
    PlaySoundPos = function(soundid, x, y, z, volume, looped)end,
    --- changes volume
    ---@param soundtype number 0->main volume, 1->unknown, affects all?, 2->feedback, 3->soundeffect, 4->voice (briefing/ctscene/video?), 5->ambient, 6->voice too?
    ---@param vol number >=0, <= 1
    SetVolumeAdjustment = function(soundtype, vol)end,
    StartMusic = function()end,
    StartOnlineHelpSound = function()end,
    --- stops a sound. not sure what parameters are used for what.
    ---@param soundid number
    ---@param haspos number flag
    ---@param x number
    ---@param y number
    ---@param z number
    ---@param volume number
    ---@param looped number fag
    StopSound = function(soundid, haspos, x, y, z, volume, looped)end,
}