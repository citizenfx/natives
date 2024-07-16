---
ns: MONEY
aliases: ["0x08E8EEADFD0DC4A0"]
---
## NETWORK_GET_CAN_TRANSFER_CASH

```c
// 0x08E8EEADFD0DC4A0 0x03461981
BOOL NETWORK_GET_CAN_TRANSFER_CASH(int amount);
```

```
Returns false if amount > wallet balance or daily transfer limit has been hit.

NativeDB Introduced: v323
```

## Parameters
* **amount**:
