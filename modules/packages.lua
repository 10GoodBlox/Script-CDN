local function getURL(url: string)
    local requestParams = {
        Url = url
    }
    if (http and request) then
        local req = http.request(requestParams)
        return req.Body
    elseif syn then
        local req = syn.request(requestParams)
        return req.Body
    else
        return game:HttpGet(url)
    end
    return nil
end

return function(package: string)
    return getURL("https://raw.githubusercontent.com/10GoodBlox/Script-CDN/main/modules/"..package..".lua")
end