local m = {}

local http = game:GetService("HttpService")
local hash = _G.import('sha256')

local log = {}

function m:Start(target,...)
    local as = {...} or nil
    local status
    if as == nil then
        status = spawn(function() pcall(target) end)
    else
        status = spawn(function() pcall(target, unpack(as)) end)
    end

    local custom_id = hash(http:GenerateGUID()..table.getn(log)..status)

    local struct = {['Log']=table.getn(log), ['id']=custom_id}
    
    table.insert(log, struct)
    do return struct end
end

function m:GetLogs()
    return log
end

return m
