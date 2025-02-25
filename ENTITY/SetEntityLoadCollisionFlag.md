---
ns: ENTITY
---
## SET_ENTITY_LOAD_COLLISION_FLAG

```c
// 0x0DC7CABAB1E9B67E 0xC52F295B
void SET_ENTITY_LOAD_COLLISION_FLAG(Entity entity, BOOL loadCollisionFlag, cs_split BOOL doDeadCheck);
```

Sets the collision around the entity to load.

## Parameters
* **entity**: entity to load collisions around for 
* **loadCollisionFlag**: flags to load collisions or not
* **doDeadCheck**: Check if entity is dead. If `true` and entity is dead, the collisions will not be loaded
