local m = {}

local http = game:GetService("HttpService")

_G.DISCORD_WEBHOOK = ''

function m:Init(w)
    _G.DISCORD_WEBHOOK = w
end

function m:Send(o)
    local newdata = http:JSONEncode(o)
    http:PostAsync(_G.DISCORD_WEBHOOK, newdata)
    
    return true
end

return m