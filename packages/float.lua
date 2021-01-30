local mo = {}

mo.toFloat = function(iint)
    iint = iint + 0.000000000000000000001
    iint = iint - 0.000000000000000000001
    return iint
end

return mo