---
ns: ENTITY
---
## SET_ENTITY_AS_MISSION_ENTITY

```c
// 0xAD738C3085FE7E11 0x5D1F9E0F
void SET_ENTITY_AS_MISSION_ENTITY(Entity entity, BOOL netMissionEntity, BOOL overrideIfDiffScript);
```

```
Makes the specified entity (ped, vehicle or object) persistent. Persistent entities will not automatically be removed by the engine.
```

Registers **entity** as a mission entity belonging to the calling script.
Once the entity is registered as a mission entity, this native will have no effect unless either of the following conditions:
1. Calling from a different script with the **overrideIfDiffScript** paramater set to true.
2. Or by first calling SET_ENTITY_AS_NO_LONGER_NEEDED, which is effectively removing the entity as a mission entity.

Note: Script entity creation natives such as CREATE_OBJECT set the entity as a mission entity by default. Use IS_ENTITY_A_MISSION_ENTITY to check if an entity is registered as a mission entity.

## Parameters
* **entity**:
* **netMissionEntity**: Whether to register the object as pinned to the script host in the R* network model.
* **overrideIfDiffScript**: If the entity is already registered as a mission entity, setting this to true will allow a different calling script (can't be the script that the entity is currently registered by) to re-register the entity as a mission entity, so that a new value for netMissionEntity can be used, and the mission entity will belong to the different script. If the entity wasn't already a mission entity, this parameter has no effect.
