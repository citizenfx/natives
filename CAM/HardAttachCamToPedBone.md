---
ns: CAM
aliases: ["0x149916F50C34A40D","_ATTACH_CAM_TO_PED_BONE_2"]
---
## HARD_ATTACH_CAM_TO_PED_BONE

```c
// 0x149916F50C34A40D
void HARD_ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float xRot, float yRot, float zRot, float xOffset, float yOffset, float zOffset, BOOL isRelative);
```

This native works with peds only.

```
NativeDB Introduced: v1180
```

## Parameters
* **cam**: The camera handle.
* **ped**: The ped handle.
* **boneIndex**: This is different to boneID, use ['GET_PED_BONE_INDEX'](#_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. ```cam``` will be attached to the center of ```ped``` if bone index given doesn't correspond to bone indexes for that entity type.
* **xRot**: X-axis rotation.
* **yRot**: Y-axis rotation.
* **zRot**: Z-axis rotation.
* **xOffset**: X-axis offset
* **yOffset**: Y-axis offset
* **zOffset**: Z-axis offset
* **isRelative**: Whether or not the camera position will be relative to the bone rotation

## Examples

```lua
local ped = PlayerPedId()
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

AttachCamToPedBone_2(cam, ped, 4089, 90.0, 0.0, 0.0, 0.0, 0.0, 0.0, true) -- attach it to a finger on the left hand and rotates it 90 degrees on the X-axis

RenderScriptCams(true, false, 0, true, true) -- renders the camera

```
