---
ns: TASK
---
## CLEAR_PED_TASKS_IMMEDIATELY

```c
// 0xAAA34F8A7CB32098 0xBC045625
void CLEAR_PED_TASKS_IMMEDIATELY(Ped ped);
```

Immediately stops the pedestrian from whatever it's doing. The difference between this and **ClearPedTasks** is that this one teleports the ped but does not change the position of the ped.

## Parameters
* **ped**: Ped id.

