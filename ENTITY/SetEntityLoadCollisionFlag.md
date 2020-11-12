---
ns: ENTITY
---
## SET_ENTITY_LOAD_COLLISION_FLAG

```c
// 0x0DC7CABAB1E9B67E 0xC52F295B
void SET_ENTITY_LOAD_COLLISION_FLAG(Entity entity, BOOL toggle);
```

Loads collision grid for an entity spawned outside of a player's loaded area. This allows peds to execute tasks rather than sit dormant because of a lack of a physics grid.

Certainly not the main usage of this native but when set to true for a Vehicle, it will prevent the vehicle to explode if it is spawned far away from the player.  

```
NativeDB Added Parameter 3: Any p2
```

## Parameters
* **entity**: 
* **toggle**: 

