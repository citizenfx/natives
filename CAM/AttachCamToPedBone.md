---
ns: CAM
---
## ATTACH_CAM_TO_PED_BONE

```c
// 0x61A3DBA14AB7F411 0x506BB35C
void ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float xOffset, float yOffset, float zOffset, BOOL isRelative);
```

This native works with peds only.

## Parameters
* **cam**: The camera handle.
* **ped**: The ped handle.
* **boneIndex**: This is different to boneID, use ['GET_PED_BONE_INDEX'](#_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. ```cam``` will be attached to the center of ```ped``` if bone index given doesn't correspond to bone indexes for that entity type.
* **xOffset**: X-axis offset
* **yOffset**: Y-axis offset
* **zOffset**: Z-axis offset
* **isRelative**: Whether or not the camera will be relative to the bone

## Examples

```lua
local ped = PlayerPedId()
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

AttachCamToPedBone(cam,ped,4089, 0.0, 0.0, 0.0, true) -- attach it to a finger on the left hand

SetCamActive(cam, true)
RenderScriptCams(true, false, 0, true, true)

```
