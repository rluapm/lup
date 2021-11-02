local m = {}

--[[
    API ENDPOINT STRUCTURE

    {{ ((method here (can be multiple))) }, ((endpoint here)) }
]]--

local ge = 'get'
local po = 'post'
local pu = 'put'
local pa = 'patch'

function ep(endpoint,methods)
    return {methods,endpoint}
end

m.accountSettings = {
    apiRoute = 'https://accountsettings.roblox.com/v1',
    endpoints = {
        settings ={
            metadata = ep('/account/settings/metadata',{ge}),
            settingsGroups = ep('/account/settings/settings-groups',{ge})
        },
        privacySettings = {
            appChatPrivacy = ep('/app-chat-privacy',{ge,po}),
            gameChatPrivacy = ep('/game-chat-privacy',{ge,po}),
            inventoryPrivacy = ep('/inventory-privacy',{ge,po}),
            privacy = ep('/privacy',{ge,pa}),
            privacyInfo = ep('/privacy/info',{ge}),
            privateMessagePrivacy = ep('/private-message-privacy',{ge,po}),
            visibilityPrivacy = ep('/visibility-privacy',{ge,po}),
        },
        contentRestriction = ep('/content-restriction',{ge,po}),
        email ={
            email = ep('/email',{ge,po,pa}),
            verify = ep('/email/verify',{po})
        },
        
    }
}


return m