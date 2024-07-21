---
ns: PED
---
## SET_IK_TARGET

```c
// 0xC32779C16FCEECD9 0x6FE5218C
void SET_IK_TARGET(Ped ped, int ikIndex, Entity entityLookAt, int boneLookAt, float offsetX, float offsetY, float offsetZ, int ikTargetFlags, int blendInDuration, int blendOutDuration);
```

Sets the IK target for a given IK part belonging to the ped. The IK target will only be valid for one update, so it needs to be set for as long as it is needed (to avoid IK targets not being cleared and getting stuck enabled).

## Parameters
* **ped**: The ped handle.
* **ikIndex**: See ``IK_PART``.
* **entityLookAt**: Set to 0 for no entity, offsets will be world coordinates instead.
* **boneLookAt**: Set to -1 for no target bone.
* **offsetX**: X-axis offset calculated from the postion of ``entityLookAt``.
* **offsetY**: Y-axis offset calculated from the postion of ``entityLookAt``.
* **offsetZ**: Z-axis offset calculated from the postion of ``entityLookAt``.
* **ikTargetFlags**: See ``IK_TARGET_FLAGS``.
* **blendInDuration**: 
* **blendOutDuration**: Sets how long the animation lasts in ms.


```
NativeDB Introduced: v323
```

```c
enum IK_PART {
  K_PART_INVALID = 0,
  IK_PART_HEAD = 1, // head
  IK_PART_SPINE = 2, // spine
  IK_PART_ARM_LEFT = 3, // Left Arm
  IK_PART_ARM_RIGHT = 4, // Right Arm
  IK_PART_LEG_LEFT = 5, // Left Leg
  IK_PART_LEG_RIGHT = 6 // Right Leg
};

```

```c
enum IK_TARGET_FLAGS {
	ITF_DEFAULT = 0,
	ITF_ARM_TARGET_WRT_HANDBONE	= 1, // arm target relative to the handbone
	ITF_ARM_TARGET_WRT_POINTHELPER = 2, // arm target relative to the pointhelper
	ITF_ARM_TARGET_WRT_IKHELPER	= 4, // arm target relative to the ikhelper
	ITF_IK_TAG_MODE_NORMAL = 8, // use animation tags directly
	ITF_IK_TAG_MODE_ALLOW	= 16, // use animation tags in ALLOW mode
	ITF_IK_TAG_MODE_BLOCK	= 32, // use animation tags in BLOCK mode
	ITF_ARM_USE_ORIENTATION	= 64 // solve for orientation in addition to position
};

```

## Examples
```lua
-- Points the right arm to the world coordinates -1849.0, -1231.0, 13.0 for 10 seconds -- Which is the end of the Del Perro Pier
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0, -1231.0, 13.0, 0, 0, 10000) 
```
```js
// Points the right arm to the world coordinates -1849.0, -1231.0, 13.0 for 10 seconds -- Which is the end of the Del Perro Pier
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0, -1231.0, 13.0, 0, 0, 10000);
```
```cs
using static CitizenFX.Core.Native.API;
// ...

// Points the right arm to the world coordinates -1849.0, -1231.0, 13.0 for 10 seconds -- Which is the end of the Del Perro Pier
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0f, -1231.0f, 13.0f, 0, 0, 10000);
```
