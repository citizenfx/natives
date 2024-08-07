---
ns: ENTITY
---
## CLEAR_ENTITY_LAST_DAMAGE_ENTITY

```c
// 0xA72CD9CA74A5ECBA 0x2B83F43B
cs_type(Any) void CLEAR_ENTITY_LAST_DAMAGE_ENTITY(Entity entity);
```

This native **could affect** the arguments of the `CEventNetworkEntityDamage` game event, by clearing the damaging entity before the event is fired.

## Parameters
* **entity**: The entity to clear the last damaging entity from.

## Return value
