---
ns: TASK
---
## TASK_PLAY_ANIM_ADVANCED

```c
// 0x83CDB10EA29B370B 0x3DDEB0E6
void TASK_PLAY_ANIM_ADVANCED(Ped ped, char* animDictionary, char* animationName, float posX, float posY, float posZ, float rotX, float rotY, float rotZ, float blendInSpeed, float blendOutSpeed, int duration, int flag, float animTime, int rotationOrder, int ikFlags);
```

Similar in functionality to [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94), except the position and rotation parameters let you specify the initial position and rotation of the task. The ped is teleported to the position specified.

[Animations list](https://alexguirre.github.io/animations-list/)

```c
enum eEulerRotationOrder {
	EULER_XYZ = 0,
	EULER_XZY = 1,
	EULER_YXZ = 2,
	EULER_YZX = 3,
	EULER_ZXY = 4,
	EULER_ZYX = 5
}

enum eIKFlags {
	AIK_NONE						= 0,					// No Ik control during the task
    AIK_DISABLE_LEG_IK				= 1,					// Disable leg ik during the task
	AIK_DISABLE_ARM_IK				= 2,					// Disable arm ik during the task
    AIK_DISABLE_HEAD_IK				= 4,					// Disable head ik during the task
    AIK_DISABLE_TORSO_IK			= 8,					// Disable torso ik during the task
    AIK_DISABLE_TORSO_REACT_IK		= 16,					// Disable torso react ik during the task
    AIK_USE_LEG_ALLOW_TAGS			= 32,					// Use anim leg allow tags to determine when leg ik is enabled
    AIK_USE_LEG_BLOCK_TAGS			= 64,					// Use anim leg block tags to determine when leg ik is disabled
    AIK_USE_ARM_ALLOW_TAGS			= 128,					// Use anim arm allow tags to determine when ik is enabled
    AIK_USE_ARM_BLOCK_TAGS			= 256,					// Use anim arm block tags to determine when ik is disabled
    AIK_PROCESS_WEAPON_HAND_GRIP	= 512,					// Process the left hand weapon grip ik during the task
    AIK_USE_FP_ARM_LEFT				= 1024,					// Use first person ik setup for left arm (cannot be used with AIK_DISABLE_ARM_IK)
    AIK_USE_FP_ARM_RIGHT			= 2048,					// Use first person ik setup for right arm (cannot be used with AIK_DISABLE_ARM_IK)
    AIK_DISABLE_TORSO_VEHICLE_IK	= 4096,					// Disable torso vehicle ik during the task
    AIK_LINKED_FACIAL				= 8192					// Searches the dictionary of the clip being played for another clip with the _facial suffix to be played as a facial animation.
}
```

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
* **blendInSpeed**: The speed at which the animation blends in. Lower is slower and higher is faster, 1.0 is normal, 8.0 is basically instant (default `8.0`)
* **blendOutSpeed**: The speed at which the animation blends out. Lower is slower and higher is faster, -1.0 is normal, -8.0 is basically instant (default `-8.0`)
* **duration**: The duration of the animation in milliseconds. -1 will play the animation until canceled (default `-1`)
* **flag**: See [`TASK_PLAY_ANIM`](#_0xEA47FE3719165B94) (default `0`)
* **animTime**: Value between 0.0 and 1.0, lets you start an animation from the given point (default `0.0`)
* **rotationOrder**: See `eEulerRotationOrder` (default `2`)
* **ikFlags**:  See `eIKFlags` (default `0`)

