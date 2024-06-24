---
ns: TASK
---
## TASK_PLAY_ANIM_ADVANCED

```c
// 0x83CDB10EA29B370B 0x3DDEB0E6
void TASK_PLAY_ANIM_ADVANCED(Ped ped, char* animDictionary, char* animationName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float blendInSpeed, float blendOutSpeed, int duration, Any flag, float animTime, Any p14, Any p15);
```

Similar in functionality to [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.

[Animations list](https://alexguirre.github.io/animations-list/)

## Parameters
* **ped**: The ped you want to play the animation
* **animDictionary**: The animation dictionary
* **animationName**: The animation name
* **posX**: Initial X position of the task
* **posY**: Initial Y position of the task
* **posZ**: Initial Z position of the task
* **rotX**: Initial X rotation of the task
* **rotY**: Initial Y rotation of the task
* **rotZ**: Initial Z rotation of the task
* **blendInSpeed**: The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
* **blendOutSpeed**: The speed at which the animation blends out. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant
* **duration**: The duration of the animation in milliseconds. -1 will play the animation until canceled
* **flag**: See [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94)
* **animTime**: Value between 0.0 and 1.0, lets you start an animation from the given point
* **p14**: 
* **p15**: 

