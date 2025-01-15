# DM-ServerStatusPingFiveM

**DM-ServerStatusPingFiveM** is a FiveM script designed to enhance your server's uptime monitoring by pinging a status logger endpoint (e.g., BetterStack) and sending notifications to a Discord channel. This ensures your server status is always accurately monitored.

---

## Features
- **Ping Status Logger**: Automatically pings a provided URL at regular intervals for uptime tracking.
- **Discord Integration**: Sends status notifications to a Discord Webhook.
- **Alternating Pings**: Alternates between sending pings to the logger endpoint and Discord notifications.
- **Configurable Intervals**: Easily adjust the ping frequency in the configuration file.
- **Custom Headers**: Supports custom headers (e.g., API tokens) for added flexibility.
- **Lightweight**: Minimal resource impact on your server.

---

## Installation

1. **Download and Extract**: 
   - Download the script and place the folder `DM-ServerStatusPingFiveM` into your `resources` directory.

2. **Configure**:
   - Open the `config.lua` file.
   - Replace `Config.StatusLoggerURL` with your status logger endpoint (e.g., BetterStack heartbeat URL).
   - Replace `Config.DiscordWebhookURL` with your Discord Webhook URL.
   - Adjust `Config.PingInterval` (in milliseconds) to set the frequency of pings. Default is 1 minute (`60000` ms).
   - Add or modify headers in `Config.StatusLoggerHeaders` and `Config.DiscordHeaders` if required.

3. **Add to Server Configuration**:
   - Open your `server.cfg` file.
   - Add the following line:
     ```
     ensure DM-ServerStatusPingFiveM
     ```

4. **Start the Server**: 
   - Start your FiveM server to initialize the script.

---

## Notes
- The script alternates between sending pings to the status logger and Discord notifications to optimize efficiency.
- Ensure the URLs and tokens provided in the `config.lua` file are valid and active.
