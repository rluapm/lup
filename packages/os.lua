local m = {}

function m:Rename(obj, name)
    if obj == "self" then
        script.Parent.Name = name
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
	local bleh

	if obj == "self" then
		bleh = script.Parent
	else
		bleh = obj.Parent
	end

	local pathstuff = {}

	repeat
		table.insert(pathstuff, bleh)
		print(bleh.Name)
		if breh == nil then break
		bleh = bleh.Parent
	until bleh.Name == nil

	local fullpath

	for i,v in pairs(pathstuff) do
		fullpath += v.Name.."."
	end

	fullpath = fullpath:sub(1,-2)

	return fullpath
end

return m
