---
ns: TASK
---
## TASK_GO_TO_ENTITY

```c
// 0x6A071245EB0D1882 0x374827C2
void TASK_GO_TO_ENTITY(Entity entity, Entity target, int duration, float distance, float speed, float p5, int p6);
```

```
The entity will move towards the target until time is over (duration) or get in target's range (distance). p5 and p6 are unknown, but you could leave p5 = 1073741824 or 100 or even 0 (didn't see any difference but on the decompiled scripts, they use 1073741824 mostly) and p6 = 0
Note: I've only tested it on entity -> ped and target -> vehicle. It could work differently on other entities, didn't try it yet.
Example: TASK::TASK_GO_TO_ENTITY(pedHandle, vehicleHandle, 5000, 4.0, 100, 1073741824, 0)
Ped will run towards the vehicle for 5 seconds and stop when time is over or when he gets 4 meters(?) around the vehicle (with duration = -1, the task duration will be ignored).
```

## Parameters
* **entity**: 
* **target**: 
* **duration**: 
* **distance**: 
* **speed**: 
* **p5**: 
* **p6**: 

