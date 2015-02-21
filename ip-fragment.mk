## Understanding

IP packet can be fragmented when passing network with smaller MTU than required by the payload. This a fragment can be further
fragemented and so all. 

When these fragments arrive at destination, they are reassembled. If any of these fragments get lost, retransmission must be 
peformed from scratch. That is a reason why TCP/IP stack try to avoid it by using mechanism called Path MTU discovery.

The identification number of IP packet along with fragment offset in unit of 8 bytes is used (so it can address 16 bit 
length IP packet)

Because fragments can arrive destination at different order, the IP layer only wait until timeout specified in 
`/proc/sys/net/ipv4/ipfrag_time` (30 seconds by default) before discard received fragments of a particular packet's identification.
