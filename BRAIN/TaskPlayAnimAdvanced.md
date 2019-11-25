---
ns: BRAIN
---
## TASK_PLAY_ANIM_ADVANCED

```c
// 0x83CDB10EA29B370B 0x3DDEB0E6
void TASK_PLAY_ANIM_ADVANCED(Ped ped, char* animDict, char* animName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float speed, float speedMultiplier, int duration, Any flag, float animTime, Any p14, Any p15);
```

```
It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position). animTime is a float from 0.0 -> 1.0, lets you start an animation from given point. The rest as in AI::TASK_PLAY_ANIM.   
Rotation information : rotX and rotY don't seem to have any effect, only rotZ works.  
```

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **ped**: 
* **animDict**: 
* **animName**: 
* **posX**: 
* **posY**: 
* **posZ**: 
* **rotX**: 
* **rotY**: 
* **rotZ**: 
* **speed**: 
* **speedMultiplier**: 
* **duration**: 
* **flag**: 
* **animTime**: 
* **p14**: 
* **p15**: 

