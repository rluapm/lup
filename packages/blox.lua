local m = {}

function m:Rename(obj, name)
    if obj == "self" then
        script.Name = name
    else
        obj.Name = name
    end
end

function m:Dup(obj, parent)
  obj = obj or "self"
  parent = parent or script.Parent
  if obj == "self" then
    obj = script
  end
  wait(0.01)
  local newobject = obj:Clone()
  newobject.Parent = parent
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

return m
