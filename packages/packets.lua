-- owo d-daddy...

local m = {}

local http = game:GetService('HttpService')

local q = {}

function m:Enqueue(method, url, o)
	local oo = o or {}

    local b = {method, url, oo}
    
    if method:lower() == 'get' then
        oo.nocache = o['nocache'] or false
        oo.headers = o['headers'] or {}
    elseif method:lower() == 'post' then
        oo.compress = o['compress'] or false
        oo.headers = o['headers'] or {}
		oo.data = o['body'] or {}
		oo.content_type = o['content_type'] or Enum.HttpContentType.ApplicationJson
    end
    
    table.insert(q, b)
end


function m:GetQueue()
    return q
end

function m:StartUp()
    while wait() do
            for i,v in pairs(q) do
                local b = v
                
                local method = b[1]
                local url = b[2]
                local o = b[3]
                
                if method:lower() == 'get' then
                    http:GetAsync(url, o['nocache'], o['headers'])
                elseif method:lower() == 'post' then
                    local new_data = o['data']
                    if o['content_type'] == Enum.HttpContentType.ApplicationJson then
                        new_data = http:JSONEncode(o['data'])
                    end
                    http:PostAsync(url, new_data, o['content_type'], o['compress'], o['headers'])
                end
		table.remove(q,v)
            end
    end
end
return m
