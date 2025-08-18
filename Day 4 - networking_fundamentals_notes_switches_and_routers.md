# Networking Fundamentals - Study Notes

## Network Infrastructure Components

### Switch
**Primary Function:** Connects devices within a local network

**How It Works:**
- Detects specific devices connected to it using **MAC addresses** (physical addresses)
- Each network interface has a unique MAC address (e.g., `AA:BB:CC:DD:EE:FF`)
- Maintains a **MAC address table** to track which device is on which port
- Used to exchange data within a **Local Area Network (LAN)** - not the internet
- Creates **collision domains** - each port is its own collision domain

**Key Characteristics:**
- **Layer 2 device** (Data Link Layer in OSI model)
- **Intelligent forwarding** - learns MAC addresses and only sends data to intended recipient
- **Full-duplex communication** - can send and receive simultaneously
- **Creates networks** by connecting multiple devices together

**Security Implications:**
- **MAC flooding attacks** - overflow the MAC address table
- **MAC spoofing** - attacker changes their MAC address to impersonate another device
- **Port mirroring** - used for network monitoring and analysis

---

### Router
**Primary Function:** Connects different networks together

**How It Works:**
- Forwards data (packets) to the correct destination based on **IP addresses**
- Uses **routing tables** to determine the best path for data
- Connects you to the internet through a modem or ISP connection
- **Connects networks** - links your LAN to other networks (like the internet)

**Key Characteristics:**
- **Layer 3 device** (Network Layer in OSI model)
- **Path determination** - decides the best route for data to travel
- **NAT (Network Address Translation)** - translates private IP addresses to public ones
- **DHCP server** - assigns IP addresses to devices on your network
- **Firewall capabilities** - basic security filtering

**Security Implications:**
- **Default gateway** - all internet traffic flows through the router
- **Port forwarding** - can expose internal services to the internet
- **Router exploitation** - compromised routers can intercept all network traffic
- **Routing attacks** - BGP hijacking, route poisoning

---

## Key Differences: Switch vs Router

| Aspect | Switch | Router |
|--------|--------|--------|
| **OSI Layer** | Layer 2 (Data Link) | Layer 3 (Network) |
| **Addressing** | MAC addresses | IP addresses |
| **Scope** | Within one network | Between different networks |
| **Function** | Creates collision domains | Creates broadcast domains |
| **Intelligence** | Learns MAC addresses | Maintains routing tables |
| **Internet Access** | No | Yes (with ISP connection) |

---

## Real-World Network Flow

### Typical Home Network:
```
Internet → Modem → Router → Switch → Your Devices
```

### Data Flow Example:
1. **Your computer** wants to visit Google.com
2. **Computer** sends packet to **switch** (using Google's IP, but switch's MAC)
3. **Switch** forwards to **router** (recognizes it's not a local address)
4. **Router** looks up route to Google.com in routing table
5. **Router** forwards packet through **modem** to **ISP**
6. **Internet** routes packet to Google's servers
7. **Return path** reverses this process

---

## Advanced Concepts

### Switch Advanced Features:
- **VLANs (Virtual LANs)** - logically separate networks on same physical switch
- **Spanning Tree Protocol (STP)** - prevents network loops
- **Port Security** - limit which devices can connect to specific ports
- **Quality of Service (QoS)** - prioritize certain types of traffic

### Router Advanced Features:
- **Access Control Lists (ACLs)** - filter traffic based on rules
- **VPN capabilities** - secure tunnels through the internet
- **Dynamic routing protocols** - OSPF, EIGRP, BGP
- **Load balancing** - distribute traffic across multiple paths

---

## Cybersecurity Perspective

### Why This Matters for Security:
1. **Network Segmentation** - switches and routers control traffic flow
2. **Attack Surface** - every network device is a potential target
3. **Traffic Analysis** - understanding normal vs. suspicious network behavior
4. **Incident Response** - knowing how data flows helps trace attacks
5. **Network Defense** - proper configuration prevents many attacks

### Common Attack Vectors:
- **ARP Poisoning** - exploit switch MAC learning
- **VLAN Hopping** - break out of network segments
- **Router Compromise** - control all network traffic
- **Man-in-the-Middle** - position between communicating devices

---

## Practical Lab Exercises

### Switch Investigation:
```bash
# View ARP table (MAC to IP mappings)
arp -a

# Show network interfaces and MAC addresses
ip link show
```

### Router Investigation:
```bash
# View routing table
ip route show

# Find default gateway
ip route | grep default

# Trace packet path to destination
traceroute google.com
```

---

## Next Steps
- **Hands-on Practice:** Set up virtual networks in your lab
- **Packet Analysis:** Observe switch and router behavior in Wireshark
- **Security Tools:** Learn to audit network infrastructure
- **Advanced Topics:** VLANs, routing protocols, network security