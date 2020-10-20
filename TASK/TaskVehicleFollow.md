---
ns: BRAIN
aliases: ["_TASK_VEHICLE_FOLLOW"]
---
## TASK_VEHICLE_FOLLOW

```c
// 0xFC545A9F0626E3B6 0xA8B917D7
void TASK_VEHICLE_FOLLOW(Ped driver, Vehicle vehicle, Entity targetEntity, float speed, int drivingStyle, int minDistance);
```

```
Makes a ped in a vehicle follow an entity (ped, vehicle, etc.)  
Driving Styles guide: gtaforums.com/topic/822314-guide-driving-styles/  
AI::_TASK_VEHICLE_FOLLOW(l_244[3/*1*/], l_268[3/*1*/], l_278, 40.0, 262144, 10);  
What is this known as in the decompiled scripts ffs. I need more examples. I've searched in all scripts for keywords suchas,  
TASK_VEHICLE_FOLLOW, FC545A9F0626E3B6, 0xFC545A9F0626E3B6, all the parameters in the above example even just search the last few params '40.0, 262144, 10' and couldnt find where this native is used in scripts at all unless whoever decompiled the scripts gave it a whack a.. name.  
```

## Parameters
* **driver**: 
* **vehicle**: 
* **targetEntity**: 
* **speed**: 
* **drivingStyle**: 
* **minDistance**: 

