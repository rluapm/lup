-- uwu d-d-dad-daddy... m-more p-please... (joke don't take this seriously)

local m = {}

local hash = _G.import('sha256')

local http = game:GetService('HttpService')

m.server = {}
m.client = {}

local sk = {}
sk.s = {} -- server sockets
sk.c = {} -- client sockets

sk.s.q = {}
sk.c.q = {}

-- SERVER

function m.server:Host(port)
    local id = http:GenerateGUID()
    local p = port or 5045

    local host = id..':'..p
     
    sk.s[host] = host

    return host
end

function m.server.recv(ip)
    return sk.s.q[ip] or {}
end

function m.server:Post(ip, data)
    local id = http:GenerateGUID()
    local hmak = id..ip..data..math.random(1,25565)
    local hs = hash(hmak) -- hash-salt to better security

    sk.c.q[ip][hs] = data
end

function m.server:GetClientSockets()
    return sk.c
end

-- CLIENT

function m.client:Conn(ip)
    local id = http:GenerateGUID()
    local chost = id..':'..math.random(25565,255655)

    sk.s[ip]['clients'][chost] = id

    return chost
end

function m.client.recv(ip)
    return sk.c.q[ip] or {}
end

function m.client:Post(ip, data)
    local id = http:GenerateGUID()
    local hmak = id..ip..data..math.random(1,25565)
    local hs = hash(hmak)

    sk.s.q[ip][hs] = data
end

function m.client:GetServerSockets()
    return sk.s
end

return m