# lup
Roblox Lua Package Manager

# How to use
Click this [link](https://www.roblox.com/library/6320827379/Lua-Package-Manager-Main) to get this module!

Then, make sure that you have HttpService enabled and LoadStringEnabled checked in ServerScriptService.

# Example
```lua
repeat wait() until _G.LUP_LOADED -- This MUST be here or else it will NOT work.

local example = _G.import('example')
local float = _G.import('float')
local threading = _G.import('threading')

threading:Start(example.print,float.toFloat(7))
example.print(threading:GetLogs())
```