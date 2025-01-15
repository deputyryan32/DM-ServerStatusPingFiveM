Config = {}

-- Endpoint URL for the status logger (e.g., BetterStack)
Config.StatusLoggerURL = "https://uptime.betterstack.com/api/v1/heartbeat/your-key" -- Replace with your BetterStack URL or similar

-- Discord Webhook URL for status notifications
Config.DiscordWebhookURL = "https://discord.com/api/webhooks/your-webhook-id/your-webhook-token" -- Replace with your Discord Webhook

-- Interval in milliseconds between pings (default: 1 minute)
Config.PingInterval = 60000

-- Custom headers for the status logger service
Config.StatusLoggerHeaders = {
    ["Authorization"] = "Bearer your_token", -- Replace with the required header value
    ["Content-Type"] = "application/json"    -- Adjust if needed
}

-- Custom headers for the Discord Webhook
Config.DiscordHeaders = {
    ["Content-Type"] = "application/json"
}

-- Custom branding for Discord notifications
Config.BrandingMessage = "🔧 **DM-ServerStatusPingFiveM** by DeputyMods | Monitoring Made Easy"