repeat wait() until _G.LUP_LOADED -- This MUST be here or else it will NOT work.

local example = _G.import('example')
local float = _G.import('float')
local threading = _G.import('threading')

threading:Start(example.print,float.toFloat(7))
example.print(threading:GetLogs())