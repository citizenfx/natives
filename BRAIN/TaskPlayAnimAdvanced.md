---
ns: BRAIN
---
## TASK_PLAY_ANIM_ADVANCED

```c
// 0x83CDB10EA29B370B 0x3DDEB0E6
void TASK_PLAY_ANIM_ADVANCED(Ped ped, char* animDict, char* animName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float animEnterSpeed, float animExitSpeed, int duration, Any flag, float animTime, Any p14, Any p15);
```


It's similar to the one above, except the first 6 floats let you specify the initial position and rotation of the task. (Ped gets teleported to the position).


[Animations list](https://alexguirre.github.io/animations-list/)


## Parameters
* **ped**: The target ped
* **animDict**: Name of the animation dictionary
* **animName**: Name of the animation
* **posX**: Initial X position of the task
* **posY**: Initial Y position of the task
* **posZ**: Initial Z position of the task
* **rotX**: Initial X rotation of the task, doesn't seem to have any effect
* **rotY**: Initial Y rotation of the task, doesn't seem to have any effect
* **rotZ**: Initial Z rotation of the task
* **animEnterSpeed**: Adjust character speed to fully enter animation
* **animExitSpeed**: Adjust character speed to fully exit animation (useless `ClearPedTasksImmediately()` is called)
* **duration**: Time in milliseconds
* **flag**: 
* **animTime**: Value between 0.0 and 1.0, lets you start an animation from the given point
* **p14**: 
* **p15**: 

