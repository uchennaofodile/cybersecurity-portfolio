#!/bin/bash
# Simple Network Scanner
# Pings common network devices

echo "=== Home Network Scanner ==="
echo "Scanning common IP addresses..."

# Ping your router (usually 192.168.1.1-dummy ip address for learning purposes)
ping -c 1 192.168.1.1 > /dev/null && echo "Router (192.168.1.1): UP" || echo "Router (192.168.1.1): DOWN"

# Ping Google DNS
ping -c 1 8.8.8.8 > /dev/null && echo "Google DNS (8.8.8.8): UP" || echo "Google DNS (8.8.8.8): DOWN"

# Ping Cloudflare DNS  
ping -c 1 1.1.1.1 > /dev/null && echo "Cloudflare DNS (1.1.1.1): UP" || echo "Cloudflare DNS (1.1.1.1): DOWN"

echo "=== Scan Complete ==="
