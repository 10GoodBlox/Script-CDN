local me = {}

local HTTPS = game:GetService("HttpService")
local scriptName: string = nil
local execId:string = nil

function me:setScriptName(name: string)
    assert((name ~= nil), "name missing or nil.")
    scriptName = name
end

function me:makeExecutionId()
    assert(scriptName, "Please use :setScriptName('yourscriptname')") 
    execId = HTTPS:GenerateGUID()
    getgenv()[tostring(scriptName).."_sid"] = execId
end

function me:isExecutionValid() 
    assert((scriptName ~= nil), "Please use :setScriptName('yourscriptname')") 
    assert((execId ~= nil), "Please use :setScriptName('yourscriptname')") 
    return getgenv()[tostring(scriptName).."_sid"] == execId
end

return me