---@diagnostic disable: missing-return, duplicate-set-field
--- size of a table
---@param t table
---@return number
table.getn = function(t) end
---for loop comatibility
---@param t table
---@param f function
table.foreach = function(t, f) end
---%
---@param a number
---@param b number
---@return number
function math.mod(a,b) return a % b end
---^
---@param a number
---@param b number
---@return number
---@diagnostic disable-next-line: lowercase-global
function __pow(a,b) return a^b end
---string patter interator
---@param s string
---@param pat string
---@return fun():string
function string.gfind(s, pat) end

--- @class Position
local Position = {X=0,Y=0}

--- @class PositionR
local PositionR = {X=0,Y=0,r=0}

--- @class CostInfo
local CostInfo = {}
