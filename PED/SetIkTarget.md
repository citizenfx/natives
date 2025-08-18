---
ns: PED
---
## SET_IK_TARGET

```c
// 0xC32779C16FCEECD9 0x6FE5218C
void SET_IK_TARGET(Ped ped, int ikIndex, Entity entityLookAt, int boneLookAt, float offsetX, float offsetY, float offsetZ, int ikTargetFlags, int blendInDuration, int blendOutDuration);
```

Sets the IK target for a given IK part belonging to the ped.

**Please note:** The IK target will only be valid for one update, so it needs to be set for as long as it is needed (to avoid IK targets not being cleared and getting stuck enabled).

```c
enum eIkPart {
  IK_PART_INVALID = 0,
  // head
  IK_PART_HEAD = 1,
  // spine
  IK_PART_SPINE = 2,
  // Left Arm
  IK_PART_ARM_LEFT = 3,
  // Right Arm
  IK_PART_ARM_RIGHT = 4,
  // Left Leg
  IK_PART_LEG_LEFT = 5,
  // Right Leg
  IK_PART_LEG_RIGHT = 6
};

```

```c
enum eIkTargetFlags {
  ITF_DEFAULT = 0,
  // arm target relative to the handbone
  ITF_ARM_TARGET_WRT_HANDBON = 1,
  // arm target relative to the pointhelper
  ITF_ARM_TARGET_WRT_POINTHELPER = 2,
  // arm target relative to the ikhelper
  ITF_ARM_TARGET_WRT_IKHELPE = 4,
  // use animation tags directly
  ITF_IK_TAG_MODE_NORMAL = 8,
  // use animation tags in ALLOW mode
  ITF_IK_TAG_MODE_ALLOW = 16,
  // use animation tags in BLOCK mode
  ITF_IK_TAG_MODE_BLOCK = 32,
  // solve for orientation in addition to position
  ITF_ARM_USE_ORIENTATION = 64
};

```

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The ped handle.
* **ikIndex**: See `eIkPart` for indexes.
* **entityLookAt**: Set to 0 for no entity, offsets will be world coordinates instead.
* **boneLookAt**: Set to -1 for no target bone.
* **offsetX**: X-axis offset calculated from the position of `entityLookAt`.
* **offsetY**: Y-axis offset calculated from the position of `entityLookAt`.
* **offsetZ**: Z-axis offset calculated from the position of `entityLookAt`.
* **ikTargetFlags**: See `eIkTargetFlags` for flags.
* **blendInDuration**: Animation blending in (in ms). `-1` by default.
* **blendOutDuration**: Animation blending out (in ms). `-1` by default.

## Examples
```lua
-- Points the right arm to -1849.0, -1231.0, 13.0 for 10 seconds
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0, -1231.0, 13.0, 0, 0, 10000)
```
```js
// Points the right arm to -1849.0, -1231.0, 13.0 for 10 seconds
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0, -1231.0, 13.0, 0, 0, 10000);
```
```cs
using static CitizenFX.Core.Native.API;
// ...

// Points the right arm to -1849.0, -1231.0, 13.0 for 10 seconds
SetIkTarget(PlayerPedId(), 4, 0, 0, -1849.0f, -1231.0f, 13.0f, 0, 0, 10000);
```
