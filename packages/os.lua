local m = {}

function m:Rename(obj, name)
    if obj == "self" then
        script.Name = name
    else
        obj.Name = name
    end
end

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

function m.path(obj)
	local bleh = obj or "self"

	if bleh == "self" then bleh = script end
	
	local fullpath
	fullpath = bleh:GetFullName()

	return fullpath
end

return m
