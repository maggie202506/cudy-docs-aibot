# Switch Glossary

> Terms A-Z: Click to check the definition.

**Index**
[A](#a) | [B](#b) | [C](#c) | [D](#d) | [E](#e) | [F](#f) | [G](#g) | [H](#h) | [I](#i) | [J](#j) | [K](#k) | [L](#l) | [M](#m) | [N](#n) | [O](#o) | [P](#p) | [Q](#q) | [R](#r) | [S](#s) | [T](#t) | [U](#u) | [V](#v) | [W](#w) | [X](#x) | [Y](#y) | [Z](#z)

---

<a name="802.1"></a>
**[ 802.1 ]**
??? glossary-item "802.1Q VLAN"
    The IEEE standard for VLAN tagging in an Ethernet network. It adds a 4-byte header to Ethernet frames to identify the VLAN membership.

??? glossary-item "802.1p"
    A Quality of Service (QoS) mechanism that prioritizes traffic based on the 3-bit priority field in the 802.1Q VLAN tag.

---

<a name="a"></a>
**[ A ]**
??? glossary-item "Aging Time"
    The timeout period after which a switch removes a dynamic MAC address entry from its address table if no traffic is received from that source.

---

<a name="b"></a>
**[ B ]**
??? glossary-item "Backup Restore"
    The utility used to save the switch's current configuration to a file (Backup) and write a previously saved configuration back to the device (Restore).

??? glossary-item "DSCP"
    (Differentiated Services Code Point) A Layer 3 QoS mechanism that uses the 6-bit DiffServ field in the IP header to classify and prioritize traffic.

??? glossary-item "Broadcast"
    A network transmission method where data is sent from one sender to all devices on the same local network segment.

---

<a name="c"></a>
**[ C ]**
??? glossary-item "Cable Diagnostics"
    A feature that tests the physical condition of the Ethernet cables connected to the ports, detecting issues like shorts or cable length.

??? glossary-item "Chassis ID"
    A unique identifier for the switch chassis, often the device's base MAC address, used for identification in discovery protocols like LLDP.

??? glossary-item "Circuit ID"
    A sub-option in DHCP Snooping (Option 82) that identifies the specific physical port or VLAN from which a DHCP request was sent.

??? glossary-item "Cost Metric"
    A value assigned to a link in Spanning Tree Protocol (STP). The protocol uses this to calculate the shortest (lowest cost) path to the Root Bridge.

---

<a name="d"></a>
**[ D ]**
??? glossary-item "DHCP Snooping"
    A Layer 2 security feature that validates DHCP messages and filters out unauthorized (rogue) DHCP server responses.

??? glossary-item "Duplex"
    Refers to the data transmission mode. **Half-duplex** allows one-way communication at a time; **Full-duplex** allows simultaneous two-way communication.

---

<a name="e"></a>
**[ E ]**
??? glossary-item "EEE Config"
    (Energy-Efficient Ethernet) Configuration for the IEEE 802.3az standard, designed to reduce power consumption during periods of low data activity.

??? glossary-item "Egress"
    Refers to the traffic that is leaving or exiting a switch port.

??? glossary-item "Extended Power"
    A PoE feature that allows power delivery over distances exceeding the standard 100-meter limit, often at a reduced data rate.

---

<a name="f"></a>
**[ F ]**
??? glossary-item "Fast-leave"
    An IGMP Snooping feature that allows the switch to immediately stop forwarding multicast traffic to a port when an IGMP Leave message is detected.

??? glossary-item "Firmware Upgrade"
    The process of replacing the switch's current operating software with a newer version to fix bugs or add new features.

??? glossary-item "Flow Control"
    A mechanism (IEEE 802.3x) that manages the data transmission rate between two nodes to prevent the receiver's buffer from overflowing.

??? glossary-item "Forward Delay"
    The time a port spends in the Listening and Learning states before it starts forwarding data in Spanning Tree Protocol.

??? glossary-item "Fullplex"
    A technical shorthand for **Full Duplex**, where a port can transmit and receive data simultaneously.

---

<a name="i"></a>
**[ I ]**
??? glossary-item "IGMP Querier"
    A device (usually a router or L3 switch) that sends IGMP Query messages to discover which hosts belong to which multicast groups.

??? glossary-item "IGMP Snooping"
    A mechanism that allows a Layer 2 switch to examine IGMP packets to maintain a multicast forwarding table, preventing multicast floods.

??? glossary-item "Ingress"
    Refers to the traffic that is entering or coming into a switch port.

??? glossary-item "Ingress Filter"
    A security feature that drops incoming frames if the VLAN ID in the frame does not match the port's VLAN membership.

---

<a name="j"></a>
**[ J ]**
??? glossary-item "Jumbo Frame"
    Ethernet frames with a payload greater than the standard 1,500 bytes, typically up to 9,000 bytes, used to increase data transfer efficiency.

---

<a name="l"></a>
**[ L ]**
??? glossary-item "LAG Member"
    (Link Aggregation Group Member) A physical port that is part of a logical bundled group (Trunk) to increase bandwidth and provide redundancy.

??? glossary-item "LLDP Config"
    (Link Layer Discovery Protocol Configuration) Settings for the vendor-neutral protocol used by devices to advertise their identity and capabilities.

??? glossary-item "LLDP Neighbor"
    Information about directly connected devices that are also running the Link Layer Discovery Protocol.

??? glossary-item "Loop Prevention"
    A general term for techniques (like STP) used to detect and block physical loops in a network that could cause broadcast storms.

---

<a name="m"></a>
**[ M ]**
??? glossary-item "MAC"
    (Media Access Control) The unique 48-bit hardware address assigned to a network interface controller.

??? glossary-item "MAC Manage"
    The administrative interface for viewing the MAC address table, configuring static MAC entries, and setting security bindings.

??? glossary-item "Max Age"
    The maximum amount of time an STP bridge waits without receiving a BPDU before concluding that the topology has changed.

??? glossary-item "Med Capabilities"
    (LLDP-MED) Extensions to LLDP for Media Endpoint Discovery, used to automatically configure devices like VoIP phones.

??? glossary-item "Mirrored port"
    The source port in a port mirroring setup; the port whose traffic is being monitored.

??? glossary-item "Mirroring port"
    The destination port in a port mirroring setup; the port where the traffic analyst or packet sniffer is connected.

??? glossary-item "MTU"
    (Maximum Transmission Unit) The largest size of a packet or frame that can be sent over a specific network interface.

??? glossary-item "MTU VLAN"
    A VLAN configuration where multiple "leaf" ports are isolated from each other but share access to a single "uplink" port.

??? glossary-item "Multicast"
    A transmission method where a single sender sends data to a specific group of interested receivers.

---

<a name="n"></a>
**[ N ]**
??? glossary-item "Network Policy"
    Settings within LLDP-MED used to assign VLANs, priorities, and DSCP values to specific types of traffic, such as Voice.

---

<a name="o"></a>
**[ O ]**
??? glossary-item "OUI"
    (Organizationally Unique Identifier) The first three bytes of a MAC address that identify the manufacturer of the device.

---

<a name="p"></a>
**[ P ]**
??? glossary-item "Pair"
    Refers to the two-wire twisted pairs inside an Ethernet cable (e.g., Cat6 has 4 pairs).

??? glossary-item "Ping Tool"
    A diagnostic utility that sends ICMP Echo Request packets to a target IP to check connectivity and measure latency.

??? glossary-item "Port Management"
    The general administrative category for configuring physical port properties and statuses.

??? glossary-item "Port Mirror"
    The feature that copies traffic from one port (source) to another port (destination) for network analysis.

??? glossary-item "Port Settings"
    Individual port configurations including speed, duplex, flow control, and port description.

??? glossary-item "Port Trunk"
    Also known as Link Aggregation; the process of combining multiple physical ports into one logical high-bandwidth link.

??? glossary-item "Port-based"
    A classification method (often for QoS or VLANs) that applies rules based on the physical port the traffic enters.

??? glossary-item "Port-based VLAN"
    A VLAN configuration where the VLAN membership is defined by the physical port on the switch.

??? glossary-item "Priority"
    A value used to determine the importance of a packet (QoS) or the role of a device in a network protocol (STP Bridge Priority).

??? glossary-item "Protocol Management"
    The configuration section for global network protocols like SNMP, LLDP, and IGMP.

??? glossary-item "PVID"
    (Port VLAN ID) The default VLAN ID assigned to any untagged frames entering a switch port.

---

<a name="r"></a>
**[ R ]**
??? glossary-item "Report Suppression"
    An IGMP Snooping feature that limits the number of IGMP Join reports forwarded to the router to reduce control plane traffic.

??? glossary-item "Round Trip Time"
    (RTT) The time it takes for a signal to be sent plus the time it takes for an acknowledgment to be received.

??? glossary-item "RSTP"
    (Rapid Spanning Tree Protocol) An evolution of STP (IEEE 802.1w) that provides faster convergence when a network topology changes.

??? glossary-item "Rx bytes"
    The total number of data bytes received on a specific interface.

??? glossary-item "Rx pkts"
    The total number of packets received on a specific interface.

---

<a name="s"></a>
**[ S ]**
??? glossary-item "Session"
    A temporary logical connection or interaction between two communicating network devices or a user and the management interface.

??? glossary-item "SNMP"
    (Simple Network Management Protocol) A protocol used for collecting information from and configuring network devices such as switches and routers.

??? glossary-item "Snooping"
    The process of an intermediate device (like a switch) inspecting traffic (like DHCP/IGMP) to improve efficiency or security.

??? glossary-item "SP"
    (Strict Priority) A QoS scheduling method that always empties the highest-priority queue before servicing any lower-priority queues.

??? glossary-item "Spanning Tree"
    (STP) A Layer 2 protocol (IEEE 802.1D) that prevents logical loops in a network with redundant physical paths.

??? glossary-item "Speed Limit"
    Also known as Rate Limiting; the process of limiting the maximum transmission rate on a port (Ingress or Egress).

??? glossary-item "Storm Control"
    A security feature that limits the level of Broadcast, Multicast, or Unknown Unicast traffic to prevent network degradation.

??? glossary-item "System Reboot"
    A command to restart the switch software and hardware without changing the configuration.

??? glossary-item "System Reset"
    A command to restore the switch to its original factory default settings.

---

<a name="t"></a>
**[ T ]**
??? glossary-item "Tagged port"
    A port configured to carry traffic for multiple VLANs, where each frame includes an 802.1Q tag identifying its VLAN.

??? glossary-item "Threshold"
    A configured value that, when crossed, triggers an alert, log entry, or specific action by the switch management software.

??? glossary-item "Traffic Monitor"
    A real-time display or log showing the data rate (Kbps/Mbps) and packet flow across the switch's interfaces.

??? glossary-item "Transmit Hold Count"
    An STP parameter that limits the number of BPDUs the switch can send in a short interval to prevent CPU exhaustion.

??? glossary-item "Trap Server"
    The IP address of the management station (NMS) where the switch sends unsolicited SNMP Trap messages.

??? glossary-item "Trap type"
    Specific event categories (e.g., link up/down, cold start) that trigger an SNMP Trap notification.

??? glossary-item "Trunk Group"
    A logical collection of physical ports configured to work together as a single Link Aggregation Group (LAG).

??? glossary-item "TTL"
    (Time to Live) A field in an IP packet that limits the packet's lifetime. Each router it passes through decreases the TTL by one.

??? glossary-item "Tx bytes"
    Statistics showing the total volume of data (**Bytes**) transmitted (sent) by a port.

??? glossary-item "Tx Delay"
    Timing parameters for protocol packets (like LLDP); defines the delay between sending individual protocol frames.

??? glossary-item "Tx Hold"
    A multiplier used to calculate the Time-to-Live (TTL) for information transmitted in discovery protocols.

??? glossary-item "Tx Interval"
    The frequency (in seconds) at which a device sends out periodic protocol updates (like LLDP or STP).

??? glossary-item "Tx pkts"
    Statistics showing the total number of packets transmitted (sent) by a port.

---

<a name="u"></a>
**[ U ]**
??? glossary-item "Unicast"
    A transmission sent from a single source to a single specific destination on the network.

??? glossary-item "Untagged port"
    A port where outgoing frames do not contain a VLAN tag; typically used for connecting end-user devices like PCs.

??? glossary-item "Uplink"
    A port, often with higher speed, used to connect a local switch to a core switch, router, or the wider network.

---

<a name="v"></a>
**[ V ]**
??? glossary-item "VID"
    (VLAN ID) The numerical ID (1–4094) used to identify a specific Virtual LAN within an Ethernet frame tag.

??? glossary-item "Voice VLAN"
    A specialized VLAN that prioritizes voice traffic (VoIP) over data traffic to ensure call quality even during network congestion.

---

<a name="w"></a>
**[ W ]**
??? glossary-item "WFQ"
    (Weighted Fair Queuing) A QoS scheduling algorithm that gives different traffic flows a "fair" share of bandwidth based on their assigned weights.

??? glossary-item "WRR"
    (Weighted Round Robin) A QoS scheduling algorithm that cycles through queues and sends a certain amount of data from each, proportional to its weight.