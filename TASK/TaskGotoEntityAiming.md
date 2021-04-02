---
ns: TASK
---
## TASK_GOTO_ENTITY_AIMING

```c
// 0xA9DA48FAB8A76C12 0xF1C493CF
void TASK_GOTO_ENTITY_AIMING(Ped ped, Entity target, float distanceToStopAt, float StartAimingDist);
```

```
eg
 TASK::TASK_GOTO_ENTITY_AIMING(v_2, PLAYER::PLAYER_PED_ID(), 5.0, 25.0);
ped = Ped you want to perform this task.
target = the Entity they should aim at.
distanceToStopAt = distance from the target, where the ped should stop to aim.
StartAimingDist = distance where the ped should start to aim.
```

## Parameters
* **ped**: 
* **target**: 
* **distanceToStopAt**: 
* **StartAimingDist**: 

