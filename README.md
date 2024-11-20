# DM-ServerStatusPingFiveM

**DM-ServerStatusPingFiveM** is a FiveM script designed to ping a status logger endpoint (e.g., BetterStack) to keep your server status updated. It periodically sends requests to the specified URL, ensuring accurate uptime monitoring for your FiveM server.

---

## Features
- **Ping Status Logger**: Automatically pings a provided URL at regular intervals.
- **Configurable Intervals**: Easily adjust the ping frequency in the configuration file.
- **Custom Headers**: Supports custom headers (e.g., API tokens) for added flexibility.
- **Lightweight**: Minimal resource impact on your server.

---

## Installation

1. **Download and Extract**: Download the script and place the folder `DM-ServerStatusPingFiveM` into your `resources` directory.

2. **Configure**:
   - Open the `config.lua` file.
   - Replace `Config.StatusLoggerURL` with your status logger endpoint (e.g., BetterStack heartbeat URL).
   - Adjust `Config.PingInterval` (in milliseconds) to set the frequency of pings. Default is 1 minute (`60000` ms).
   - Add or modify headers in `Config.Headers` if required by the endpoint.

3. **Add to Server Configuration**:
   - Open your `server.cfg` file.
   - Add the following line:
     ```
     ensure DM-ServerStatusPingFiveM
     ```

4. **Start the Server**: Start your FiveM server to initialize the script.