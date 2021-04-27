local number = {}

function number:MsToSeconds(integseconds)
    integseconds = integseconds/1000
    return integseconds
end

function number:MsToMinutes(integMinutes)
    integMinutes = integMinutes/1000
    wait()
    integMinutes = integMinutes/60
    return integMinutes
end

function number:MsToHours(integHours)
    integHours = integHours/1000
    wait()
    integHours = integHours/60
    wait()
    integHours = integHours/60
    return integHours
end

return number
