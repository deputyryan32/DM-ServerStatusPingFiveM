Config = {}

-- Endpoint URL for the status logger (e.g., BetterStack)
Config.StatusLoggerURL = "https://uptime.betterstack.com/api/v1/heartbeat/your-key" -- Replace with your BetterStack URL or similar

-- Interval in milliseconds between pings (default: 1 minute)
Config.PingInterval = 60000

-- Custom headers if required by the logger service
Config.Headers = {
    ["Authorization"] = "Bearer your_token", -- Replace with the required header value
    ["Content-Type"] = "application/json"    -- Adjust if needed
}
