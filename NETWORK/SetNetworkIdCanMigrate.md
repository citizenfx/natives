---
ns: NETWORK
---
## SET_NETWORK_ID_CAN_MIGRATE

```c
// 0x299EEB23175895FC 0x47C8E5FF
void SET_NETWORK_ID_CAN_MIGRATE(int networkId, BOOL canMigrate);
```

Sets the `GLOBALFLAG_PERSISTENTOWNER` global flag for the specified network id. Disallows proximity or other common ownership changes to this networkId. Ownership can only be altered via explicit means.

## Parameters
* **networkId**: The network id of the entity.
* **canMigrate**: Whether the network id can be migrated.
