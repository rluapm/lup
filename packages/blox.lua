local m = {}

function m:Rename(obj, name)
    if obj == "self" then
        script.Name = name
    else
        obj.Name = name
    end
end

function m:Dup(obj, parent)
  obj = obj or "Self"
  parent = parent or script.Parent
  if obj == "Self" then
    obj = script
  end
  wait(0.01)
  local newobject = obj:Clone()
  newobject.Parent = parent
end

return m
