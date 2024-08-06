---
ns: ENTITY
aliases: ["0xDC6F8601FAF2E893"]
---
## SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE

```c
// 0xDC6F8601FAF2E893 0xA0466A69
void SET_WAIT_FOR_COLLISIONS_BEFORE_PROBE(Entity entity, BOOL toggle);
```

```
SET_*
Only called within 1 script for x360. 'fm_mission_controller' and it used on an object.
Ran after these 2 natives,
set_object_targettable(uParam0, 0);
set_entity_invincible(uParam0, 1);
```

## Parameters
* **entity**: 
* **toggle**: 

