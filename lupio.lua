--[[
	/\/\/\/\/ LUPInOne \/\/\/\/\
	
	- The Roblox Lua all in one package manager.
	
	- Mainly Developed by Uderifen
	
	Wanna add an package?
	Check this out!
	https://github.com/rluapm/lup
]]--
local http = game:GetService("HttpService")

_G.LUP_V = '0.1'
_G.LUP_LOADED = false


-- Init all lup functions.
_G.import = function(...)
	local is = {...}

	return loadstring(http:GetAsync("https://raw.githubusercontent.com/rluapm/lup/main/packages/"..is[1]..".lua",true))()
end

wait(1)

_G.LUP_LOADED = true