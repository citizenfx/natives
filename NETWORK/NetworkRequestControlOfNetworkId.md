---
ns: NETWORK
---
## NETWORK_REQUEST_CONTROL_OF_NETWORK_ID

```c
// 0xA670B3662FAFFBD0 0x9262A60A
BOOL NETWORK_REQUEST_CONTROL_OF_NETWORK_ID(int networkId);
```

Request ownership of the object with the specified network ID from the current owner.

## Parameters
* **networkId**: The network id of the entity.

## Return value
Returns true if the networkId is already owned by us.