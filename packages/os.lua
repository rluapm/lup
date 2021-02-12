local m = {}

local enum = _G.import('@os/enum')

function m:Error(plr, err, code)
  local c = code or 1

  plr:Kick('[ERROR: '..code..'] '..err)  
end

function m:GetEnv(obj)
	local bleh = obj or enum.Self

	if bleh == enum.Self then bleh = script end
	
	local fullpath
	fullpath = bleh:GetFullName()

	local env = fullpath:split('.')
	
	return env[1]
end

function m:Crash()
	while wait() do Instance.new('Part', workspace) end	
end

function m.source()
	return script.Name	
end

function m.path(obj)
	local bleh = obj or enum.Self

	if bleh == enum.Self then bleh = script end
	
	local fullpath
	fullpath = bleh:GetFullName()

	return fullpath
end

return m
