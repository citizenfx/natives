---
ns: BRAIN
---
## TASK_VEHICLE_PLAY_ANIM

```c
// 0x69F5C3BD0F3EBD89 0x2B28F598
void TASK_VEHICLE_PLAY_ANIM(Vehicle vehicle, char* animation_set, char* animation_name);
```

```
Most probably plays a specific animation on vehicle. For example getting chop out of van etc...  
Here's how its used -   
AI::TASK_VEHICLE_PLAY_ANIM(l_325, "rcmnigel1b", "idle_speedo");  
AI::TASK_VEHICLE_PLAY_ANIM(l_556[0/*1*/], "missfra0_chop_drhome", "InCar_GetOutofBack_Speedo");  
FYI : Speedo is the name of van in which chop was put in the mission.  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **vehicle**: 
* **animation_set**: 
* **animation_name**: 

