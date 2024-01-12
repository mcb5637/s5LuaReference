---@diagnostic disable: missing-return, duplicate-set-field
-- Funktionen aus Kimichuras dlls

CUtilBit32 = {}

-- Führt eine binäre Und Operation durch
---@param _a number
---@param _b number
---@return number result
function CUtilBit32.BitAnd(_a, _b) end

-- Rückt alle Bits um _n Stellen nach rechts
---@param _n number
---@param _a number
---@return number result
function CUtilBit32.BitAShR(_n, _a) end

-- Kehrt alle Bits um
---@param _a number
---@return number result
function CUtilBit32.BitNot(_a) end

-- Führt eine binäre Oder Operation durch
---@param _a number
---@param _b number
---@return number result
function CUtilBit32.BitOr(_a, _b) end

-- Führt eine Bitrotation um _n Stellen nach links durch
---@param _n number
---@param _a number
---@return number result
function CUtilBit32.BitRoL(_n, _a) end

-- Führt eine Bitrotation um _n Stellen nach rechts durch
---@param _n number
---@param _a number
---@return number result
function CUtilBit32.BitRoR(_n, _a) end

-- Rückt alle Bits um _n Stellen nach links und füllt den Rest mit 0
---@param _n number
---@param _a number
---@return number result
function CUtilBit32.BitShL(_n, _a) end

-- Rückt alle Bits um _n Stellen nach rechts und füllt den Rest mit 0
---@param _n number
---@param _a number
---@return number result
function CUtilBit32.BitShR(_n, _a) end

-- Führt eine binäre Exklusiv Oder Operation durch
---@param _a number
---@param _b number
---@return number result
function CUtilBit32.BitXor(_a, _b) end