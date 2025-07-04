# Current Status
## Devices/Connections
```sh
nmcli
```
## IP Addresses
```sh
ip -br addr
```

# List Available WiFi
```sh
nmcli device wifi list
```

# Connect to WiFi
```sh
nmcli device wifi connect [SSID] password [PASSWORD]
```
or
```sh
nmcli device wifi connect [SSID] --ask
```

# Reconnect to WiFi
```sh
nmcli device wifi connect [SSID]
```
