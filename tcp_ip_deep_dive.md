#Day 2 TCP/IP Deep Dive

##Summary
```
IP is the address of the device - akin to a home address
e.g. Your computer is at (192.168.1.5 - like "123 Main Street")
Google lives at 8.8.8.8 ("like 456 Google Avenue")

Computers needs addressses so messages know where to go.

TCP - Is the reliable mail carrier that delivers the message.
It's reliable because it can recover from error.
The device sends the data and receives and acknowledgement from the receiever.

TCP is like a really careful mail carrier who:

Knocks on your door: "Hey, I have a package for you!"
Waits for you to answer: "Yes, I'm here!"
Delivers the package: "Here you go!"
Gets confirmation: "Thanks, I got it!"
If you don't answer, they keep trying until you do

The Magic Conversation (3-Way Handshake):

Computer A: "Hey Computer B, want to talk?" (SYN)
Computer B: "Sure! I heard you, and I want to talk too!" (SYN-ACK)
Computer A: "Great! Let's start talking!" (ACK)

Now they can send messages back and forth safely!

```


###Wireshark Analysis

```
Client - Your computer: [IP] sends a packet via TCP to google: [Google's IP - 142..]

Sequence Number: 0 (relative sequence number) - Telling server this is the sequence number I am starting with so go ahead and track everything I send you starting from 0

Flags: ...1. = Syn: Set

Window size value: I can receive this many bytes at one time

Options
Maxium segment size: eg. 1300 bytes - telling link partner that's the amount of bytes you can put in a TCP segment and I'm okay with that.

Ghost Byte
Syn with no data
Syn/Ack comes back and behaves as if a byte was sent

```

##The 3-Way HandShake Visualized
```

The 3-Way Handshake Visualized
Real Life Analogy:
Imagine knocking on your friend's door:

SYN: knock knock "Hey, it's me! Can we talk?"
SYN-ACK: door opens "Oh hey! Yes, I can talk too!"
ACK: "Awesome! Let's start our conversation!"

In Computer Terms:

SYN: "I want to start a connection"
SYN-ACK: "I acknowledge your request AND I want to connect too"
ACK: "I acknowledge that you're ready - let's go!"

What This Looks Like in Wireshark:
Let's Create This Right Now:

Start a new Wireshark capture
Open your web browser
Type: google.com and press Enter
Immediately stop Wireshark capture (within 5 seconds)
Filter by typing: tcp.flags.syn == 1

The Security Implications:
Why Attackers Care:

SYN Flood Attack: Send thousands of SYN packets but never send the final ACK
Connection Hijacking: Jump into the conversation after the handshake
Port Scanning: Send SYN packets to see what's listening

What You're Learning to Detect:

Normal handshakes: 3 packets, nice and clean
Failed connections: SYN with no SYN-ACK response
Suspicious patterns: Too many SYNs from one source

Your Practice Exercise:
Try This Right Now:

Capture traffic while visiting 3 different websites
Look for the TCP handshakes for each connection
Notice: Each new website = new handshake
Count: How many connections does ONE webpage actually create?
