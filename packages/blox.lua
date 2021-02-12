local m = {}

local enum = _G.import('@blox/enum')

function m:Rename(obj, name)
    if obj == enum.Self then
        script.Name = name
    else
        obj.Name = name
    end
end

function m:Dup(obj, parent)
  obj = obj or enum.Self
  parent = parent or script.Parent
  if obj == enum.Self then
    obj = script
  end
  wait(0.01)
  local newobject = obj:Clone()
  newobject.Parent = parent
end

function m:Remove(obj)
  obj = obj or enum.Self
  if obj == enum.Self then
    obj = script
  end
  wait(0.01)
  obj:Destroy()
end

function m:GetSiblings(obj)
	local siblings = {}
	if obj == enum.Self then
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
