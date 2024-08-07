---
ns: ENTITY
---
## SET_ENTITY_AS_MISSION_ENTITY

```c
// 0xAD738C3085FE7E11 0x5D1F9E0F
void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL scriptHostObject, BOOL bGrabFromOtherScript);
```

Assigns an existing entity to be owned by the current script. If the entity was not owned by a script yet, this also means the entity will remain persistent until released.

Note that this is not needed right after creating an entity as a script-created entity will automatically be assigned.

## Parameters
* **entity**: An entity handle.
* **scriptHostObject**: Whether or not to assign script info to this entity, if set to false the entity will only be protected from despawning locally.
* **bGrabFromOtherScript**: Changes the entity so it's owned by the current script if the entity is already a mission entity. This will only work on entities the machine has control of (non-remote entities).
