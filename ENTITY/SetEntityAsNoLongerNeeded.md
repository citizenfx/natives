---
ns: ENTITY
---
## SET_ENTITY_AS_NO_LONGER_NEEDED

```c
// 0xB736A491E64A32CF 0xADF2267C
void SET_ENTITY_AS_NO_LONGER_NEEDED(Entity* entity);
```

Marks the specified entity (ped, vehicle or object) as no longer needed.
Entities marked as no longer needed, will be deleted as the engine sees fit.
Requires NETWORK_GET_SCRIPT_STATUS(0x57D158647A6BFABF) to work when used on vehicle or ped.

## Parameters
* **entity**: 

