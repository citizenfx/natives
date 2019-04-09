---
ns: BRAIN
aliases: ["0xB0A6CFD2C69C1088"]
---
## _SET_TASK_PROPERTY_BOOL

```c
// 0xB0A6CFD2C69C1088 0xF3538041
void _SET_TASK_PROPERTY_BOOL(Ped ped, char* p1, BOOL p2);
```

```
Examples:  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 0);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 1);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isBlocked", sub_179027());  
```

## Parameters
* **ped**: The ped that's performing the task.
* **p1**: The property name.
* **p2**: The property value to set.

