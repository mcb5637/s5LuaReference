---@diagnostic disable: missing-return
--- LuaDebugger does always exist, but it only does something, if an actual luadebugger exists.
--- most functions are added by the luadebugger, only a few are from shok.
--- do not expect these functions to be there/actually work, when your map gets played by someone else.
--- even with LuaDebugger you may only access lua locals/upvalues, trying to use it on C funcs will throw.
--- notes on execution stack offsets: the hook adds 1, the console adds 2, so via console in a hook you have a total offset of 3.
LuaDebugger = {
    ---pauses execution here
    Break = function()end,
    ---logs something to the luadebugger output window
    ---@param str any
    Log = function(str)end,
    Show = function()end,
    ShowExecuteLineDialog = function()end,
    ---writes a table into a file
    ---@param file string path to file
    ---@param name string name of the table
    ---@param data table tata to write
    WriteTableToFile = function(file, name, data)end,
    ---searches for a local or upvalue.
    ---you cannot access a c function.
    ---@param func number|function index in execution stack or function
    ---@param name string function name
    ---@return any value
    ---@return number|nil idx (<0 for upvalues)
    SearchLocal = function(func, name)end,
    ---reads a local. throws if not existent.
    ---@param func number index in execution stack
    ---@param l number index of local
    ---@return any value
    ---@return string name
    GetLocal = function(func, l)end,
    ---writes a local. throws if not existent.
    ---@param func number index in execution stack
    ---@param l number idex of local
    ---@param val any data
    SetLocal = function(func, l, val)end,
    ---reads a upvalue. throws if not existent.
    ---@param func number|function index in execution stack or function
    ---@param l number index of upvalue
    ---@return any value
    ---@return string name
    GetUpvalue = function(func, l)end,
    ---writes a upvalue. throws if not existent.
    ---@param func number|function index in execution stack or function
    ---@param l number idex of upvalue
    ---@param val any data
    SetUpvalue = function(func, l, val)end,
    ---error handler to be passed into xpcall. shows errors in the luadebugger, as if it were not catched.
    HandleXPCallErrorMessage = function(msg)end,
}