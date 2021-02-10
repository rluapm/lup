local m = {}

function m:GetSiblings(obj, name)
    siblings = {}
    If obj == "self" then
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
      bleh = script.parent[script.Name]
  else
      bleh = obj.parent
  end
  
  pathstuff = {}
  
  repeat
      table.insert(pathstuff, bleh)
      bleh = bleh.Parent
  until tostring(bleh) == "game"

  local fullpath

  for i,v in pairs(pathstuff) do
    fullpath += v.Name.."."
  end

  fullpath = fullpath:sub(1,-2)

  return fullpath
end

return m
