local main = {}

function getFile(filename: string)
    local url = "https://raw.githubusercontent.com/10GoodBlox/Script-CDN/main/files/"

    return game:HttpGet(url..filename)
end

function main:isSupported()
    local unsupported = (writefile == nil or isfile == nil)
    local method = (getsynasset or getcustomasset)
    if unsupported then
        return false
    end

    return writefile, isfile, method
end

function main:download(file: string, to:string)
    to = to or ""
    if main:isSupported() == false then
        return false
    end

    local wrf, isf, getasset = main:isSupported()
    local fileToDownloadTo = to..file

    if isf(fileToDownloadTo) then
        wrf(fileToDownloadTo, getFile(file))
    end

    return getasset(fileToDownloadTo)
end

return main