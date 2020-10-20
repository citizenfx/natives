---
ns: BRAIN
aliases: ["0xB0A6CFD2C69C1088","_SET_TASK_PROPERTY_BOOL"]
---
## SET_TASK_MOVE_NETWORK_SIGNAL_BOOL

```c
// 0xB0A6CFD2C69C1088 0xF3538041
void SET_TASK_MOVE_NETWORK_SIGNAL_BOOL(Ped ped, char* signalName, BOOL value);
```

```
Examples:  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 0);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isFirstPerson", 1);  
AI::_B0A6CFD2C69C1088(PLAYER::PLAYER_PED_ID(), "isBlocked", sub_179027());  
```

## Parameters
* **ped**: The ped that's performing the task.
* **signalName**: The property name.
* **value**: The property value to set.

