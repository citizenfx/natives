---
ns: ENTITY
---
## HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY

```c
// 0xC86D67D52A707CF8 0x07FC77E0
BOOL HAS_ENTITY_BEEN_DAMAGED_BY_ENTITY(Entity entity, Entity damager, BOOL bCheckDamagerVehicle);
```


## Parameters
* **entity**: The entity to check.
* **damager**: The entity that caused the damage.
* **bCheckDamagerVehicle**: If the damager is driving a vehicle then check to see if the entity was damaged by the vehicle.

## Return value
Returns true if the entity has been damaged by the specified entity.
