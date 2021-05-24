---
ns: TASK
---
## TASK_VEHICLE_PLAY_ANIM

```c
// 0x69F5C3BD0F3EBD89 0x2B28F598
void TASK_VEHICLE_PLAY_ANIM(Vehicle vehicle, char* animationSet, char* animationName);
```

```
Most probably plays a specific animation on vehicle. For example getting chop out of van etc...
Here's how its used -
TASK::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");
TASK::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");
FYI : Speedo is the name of van in which chop was put in the mission.
```

## Parameters
* **vehicle**: 
* **animationSet**: 
* **animationName**: 

