---
ns: ENTITY
---
## SET_ENTITY_AS_MISSION_ENTITY

```c
// 0xAD738C3085FE7E11 0x5D1F9E0F
void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL p1, BOOL p2);
```

Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.

Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.

## Parameters
* **entity**: An entity handle.
* **p1**: 
* **p2**: 

