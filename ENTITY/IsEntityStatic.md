---
ns: ENTITY
---
## IS_ENTITY_STATIC

```c
// 0x1218E6886D3D8327 0x928E12E9
BOOL IS_ENTITY_STATIC(Entity entity);
```

```
A static ped will not react to natives like "APPLY_FORCE_TO_ENTITY" or "SET_ENTITY_VELOCITY" and oftentimes will not react to task-natives like "AI::TASK_COMBAT_PED". The only way I know of to make one of these peds react is to ragdoll them (or sometimes to use CLEAR_PED_TASKS_IMMEDIATELY(). Static peds include almost all far-away peds, beach-combers, peds in certain scenarios, peds crossing a crosswalk, peds walking to get back into their cars, and others. If anyone knows how to make a ped non-static without ragdolling them, please edit this with the solution.  
^ Attach a phCollider to the ped.  
```

## Parameters
* **entity**: 

## Return value
