---
ns: NETWORK
---
## NETWORK_REQUEST_CONTROL_OF_ENTITY

```c
// 0xB69317BF5E782347 0xA05FEBD7
BOOL NETWORK_REQUEST_CONTROL_OF_ENTITY(Entity entity);
```

Request ownership of the entity with the specified entity index from the current owner.

## Parameters
* **entity**: The entity handle.

## Return value
Returns true if the entity is already owned by us.