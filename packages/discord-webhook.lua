local m = {}

local http = game:GetService("HttpService")

local dw = ''

function m:Init(w)
    dw = w
end

function m:Send(o)
    local newdata = http:JSONEncode(o)
    http:PostAsync(dw, newdata)
    
    return true
end

return m