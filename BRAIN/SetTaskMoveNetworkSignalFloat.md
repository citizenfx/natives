---
ns: BRAIN
aliases: ["0xD5BB4025AE449A4E"]
---
## _SET_TASK_PROPERTY_FLOAT

```c
// 0xD5BB4025AE449A4E 0xA79BE783
void _SET_TASK_PROPERTY_FLOAT(Ped ped, char* p1, float p2);
```

```
p0 - PLAYER::PLAYER_PED_ID();  
p1 - "Phase", "Wobble", "x_axis","y_axis","introphase","speed".  
p2 - From what i can see it goes up to 1f (maybe).  
-LcGamingHD  
Example: AI::_D5BB4025AE449A4E(PLAYER::PLAYER_PED_ID(), "Phase", 0.5);  
```

## Parameters
* **ped**: The ped on which the task is playing.
* **p1**: The property name.
* **p2**: The property value to set.

