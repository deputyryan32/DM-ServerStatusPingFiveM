local alternatePing = true

local function sendStatusPing()
    PerformHttpRequest(Config.StatusLoggerURL, function(statusCode, responseText, headers)
        if statusCode == 200 then
            print("[DM-ServerStatusPingFiveM] Status ping sent to BetterStack. Status Code: 200")
        else
            print("[DM-ServerStatusPingFiveM] Failed to send status ping. Status Code: " .. statusCode)
        end
    end, 'POST', json.encode({status = "online"}), Config.StatusLoggerHeaders)
end

local function sendDiscordNotification()
    PerformHttpRequest(Config.DiscordWebhookURL, function(statusCode, responseText, headers)
        if statusCode == 204 then
            print("[DM-ServerStatusPingFiveM] Status notification sent to Discord.")
        else
            print("[DM-ServerStatusPingFiveM] Failed to send Discord notification. Status Code: " .. statusCode)
        end
    end, 'POST', json.encode({
        content = Config.BrandingMessage,
        embeds = {{
            title = "Server Status",
            description = "The server is currently **online** and operating smoothly.",
            color = 65280 -- Green
        }}
    }), Config.DiscordHeaders)
end

CreateThread(function()
    sendStatusPing()
    while true do
        Wait(Config.PingInterval)
        if alternatePing then
            sendDiscordNotification()
        else
            sendStatusPing()
        end
        alternatePing = not alternatePing
    end
end)