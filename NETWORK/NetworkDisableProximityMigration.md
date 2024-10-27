---
ns: NETWORK
aliases: ["0x407091CF6037118E"]
---
## NETWORK_DISABLE_PROXIMITY_MIGRATION

```c
// 0x407091CF6037118E 0x9F82917F
void NETWORK_DISABLE_PROXIMITY_MIGRATION(int networkId);
```

Prevents the entity dynamically migrating to nearby players, it can still migrate by other means. You need to call this every tick while you need it disabled.

## Parameters
* **networkId**: The network id of the entity.

