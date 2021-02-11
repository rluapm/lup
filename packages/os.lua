local m = {}

function m:GetSiblings(obj)
	local siblings = {}
	if obj == "self" then
		for i,v in pairs(script.Parent:GetChildren()) do
			table.insert(siblings,v)
		end
		return siblings
	else
		for i,v in pairs(obj.Parent:GetChildren()) do
			table.insert(siblings,v)
		end
		return siblings
	end
end

function m:Error(plr, err, code)
  local c = code or 1

  plr:Kick('[ERROR: '..code..'] '..err)  
end

function m:GetEnv(obj)
	local bleh = obj or "self"

	if bleh == "self" then bleh = script end
	
	local fullpath
	fullpath = bleh:GetFullName()

	local env = fullpath:split('.')
	
	return env[1]
end

function m.path(obj)
	local bleh = obj or "self"

	if bleh == "self" then bleh = script end
	
	local fullpath
	fullpath = bleh:GetFullName()

	return fullpath
end

return m
