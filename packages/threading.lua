local m = {}

local http = game:GetService("HttpService")
local hash = _G.import('sha256')

local log = {}

function m:Start(target,...)
    local as = {...} or nil
    local status
    local err
    if as == nil then
        status, err = spawn(function() pcall(target) end)
    else
        status, err = spawn(function() pcall(target, unpack(as)) end)
    end

    local custom_id = hash(http:GenerateGUID()..status..err.code)

    local struct = {['Log']=table.getn(log), ['id']=custom_id, ['status']=status, ['code']=err.code}
    
    table.insert(log, struct)
    do return struct end
end

function m:GetLogs()
    return log
end

return m
