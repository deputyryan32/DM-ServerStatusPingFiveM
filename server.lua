local function sendStatusPing()
    PerformHttpRequest(Config.StatusLoggerURL, function(statusCode, responseText, headers)
        if statusCode == 200 then
            print("[DM-ServerStatusPingFiveM] Successfully sent status ping. Status Code: 200")
        else
            print("[DM-ServerStatusPingFiveM] Failed to send status ping. Status Code: " .. statusCode)
        end
    end, 'POST', json.encode({status = "online"}), Config.Headers)
end

-- Initial ping on resource start
CreateThread(function()
    sendStatusPing()
    while true do
        Wait(Config.PingInterval)
        sendStatusPing()
    end
end)
