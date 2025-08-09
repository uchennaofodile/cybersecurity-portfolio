# Day 1 Packet Capture Analysis - Google.com Traffic

## Capture Summary
- **Date**: [Analysis Date]
- **Target**: google.com web browsing session
- **Duration**: Brief web browsing session
- **Total Packets**: ~3,000+ packets captured
- **Tool Used**: Wireshark (current version)

## Network Configuration
- **Source IP**: 192.168.1.100 (Lab workstation)
- **Default Gateway**: 192.168.1.1 (Lab router)
- **Connection Type**: Wireless network connection

## Key Findings

### 1. DNS Resolution
```
Protocol: DNS
Query: google.com
Response: 142.250.217.78
Time: ~5ms response time
```

### 2. TLS Handshake Analysis
```
Protocol: TLS 1.3
Client Hello: Initiated secure connection
Server Hello: Google server responded
Certificate Exchange: SSL certificate validated
Encryption Established: AES-256 encryption confirmed
```

### 3. HTTP/HTTPS Traffic Breakdown
- **Port 443 (HTTPS)**: 95% of traffic - secure web browsing
- **Port 80 (HTTP)**: <1% of traffic - minimal unencrypted
- **DNS Port 53**: Initial domain lookups

### 4. TCP Connection Analysis
```
Source Port Range: [Dynamic client ports] (high-numbered ephemeral ports)
Destination Port: 443 (HTTPS standard)
Connection State: Established → Data Transfer → Clean Termination
Window Size: ~65,000 bytes (optimal throughput)
```

## Security Observations

### ✅ Good Security Practices Observed:
- **TLS 1.3 encryption** used (modern security)
- **Certificate validation** successful
- **No plaintext HTTP** for sensitive data
- **Proper connection termination**

### ⚠️ Potential Areas of Interest:
- Multiple simultaneous connections (normal for modern web)
- Background applications generating traffic
- Some HTTP traffic detected (likely non-sensitive resources)

## Technical Details

### Packet Flow Summary:
1. **DNS Query** → Resolve google.com to IP
2. **TCP SYN** → Initiate connection to 142.250.217.78:443
3. **TLS Handshake** → Establish encryption
4. **HTTP Request** → GET / (encrypted)
5. **Data Transfer** → Receive Google homepage
6. **Connection Close** → Clean TCP termination

### Performance Metrics:
- **Average Response Time**: <50ms
- **Throughput**: ~1.5MB transferred
- **No packet loss** detected
- **No retransmissions** observed

## Screenshots
![Wireshark Packet Capture](![alt text](image.png))
*Full packet capture showing Google.com session*

## Tools and Filters Used
```
Wireshark Filters Applied:
- dns (DNS traffic analysis)
- tls (TLS handshake examination)  
- tcp.port == 443 (HTTPS connections)
- ip.addr == 142.250.217.78 (Google server communications)
```

## Learning Outcomes
- Successfully captured and analyzed network traffic
- Identified secure vs insecure protocols
- Understood TCP connection lifecycle
- Recognized normal web browsing patterns

## Next Steps
- Analyze different website traffic patterns
- Compare HTTP vs HTTPS security
- Practice advanced Wireshark filtering
- Document baseline network behavior

---
**Analysis completed by**: [Your Name]  
**Skill Level**: Beginner → Intermediate (Day 1 progress)  
**Portfolio Value**: Demonstrates network traffic analysis capability