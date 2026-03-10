# Event: on_udp_packet_received

Called when new packets are processed by [LuaHelpers::recv_udp](runtime:LuaHelpers::recv_udp).

## Event Data

| Name | Type | Optional | Description |
| ---- | ---- | -------- | ----------- |
| `payload` | `string` | no | The packet data |
| `source_port` | `uint16` | no | The source port the packet was received from |
| `player_index` | `uint32` | no | The player index whose instance received this packet, or 0 if received on the server |
| `name` | `defines.events` | no | Identifier of the event |
| `tick` | `uint32` | no | Tick the event was generated. |
