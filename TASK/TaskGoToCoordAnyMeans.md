---
ns: TASK
---
## TASK_GO_TO_COORD_ANY_MEANS

```c
// 0x5BC448CB78FA3E88 0xF91DF93B
void TASK_GO_TO_COORD_ANY_MEANS(Ped ped, float x, float y, float z, float speed, cs_type(Any) Vehicle vehicle, BOOL p6, int walkingStyle, float p8);
```

```
example from fm_mission_controller
TASK::TASK_GO_TO_COORD_ANY_MEANS(l_649, sub_f7e86(-1, 0), 1.0, 0, 0, 786603, 0xbf800000);
```

## Parameters
* **ped**: 
* **x**: 
* **y**: 
* **z**: 
* **speed**: 
* **vehicle**: If this parameter is used, the ped will not move if the vehicle doesn't exist.
* **p6**: Seems to be related to pathing with vehicles, maybe for long distances ?
* **walkingStyle**: 
* **p8**: 

