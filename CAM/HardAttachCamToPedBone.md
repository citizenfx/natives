---
ns: CAM
aliases: ["0x149916F50C34A40D","_ATTACH_CAM_TO_PED_BONE_2"]
---
## HARD_ATTACH_CAM_TO_PED_BONE

```c
// 0x149916F50C34A40D
void HARD_ATTACH_CAM_TO_PED_BONE(Cam cam, Ped ped, int boneIndex, float xRot, float yRot, float zRot, float xOffset, float yOffset, float zOffset, BOOL isRelative);
```

Attaches a camera to a specific bone of a Ped, including full matrix transformations for both rotation and position offsets.
This native works with peds only.

```
NativeDB Introduced: v1180
```

## Parameters
* **cam**: The camera handle.
* **ped**: The ped handle.
* **boneIndex**: This is different to boneID, use [`GET_PED_BONE_INDEX`](#_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. `cam` will be attached to the center of `ped` if bone index given doesn't correspond to bone indexes for that entity type.
* **xRot**: X-axis rotation.
* **yRot**: Y-axis rotation.
* **zRot**: Z-axis rotation.
* **xOffset**: X-axis offset.
* **yOffset**: Y-axis offset.
* **zOffset**: Z-axis offset.
* **isRelative**: Whether or not the camera position will be relative to the bone rotation.

## Examples

```lua
local ped = PlayerPedId()
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
local BONETAG_L_FINGER01 = 4089

-- attach it to a finger on the left hand and rotates it 90 degrees on the X-axis
HardAttachCamToPedBone(cam, ped, BONETAG_L_FINGER01, 90.0, 0.0, 0.0, 0.0, 0.0, 0.0, true)

-- renders the camera
RenderScriptCams(true, false, 0, true, true)

```

```js
const ped = PlayerPedId()
const cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)
const BONETAG_L_FINGER01= 4089

// attach it to a finger on the left hand and rotates it 90 degrees on the X-axis
HardAttachCamToPedBone(cam, ped, BONETAG_L_FINGER01, 90.0, 0.0, 0.0, 0.0, 0.0, 0.0, true)

// renders the camera
RenderScriptCams(true, false, 0, true, true)
```

```cs
using static CitizenFX.Core.Native.API;

int ped = PlayerPedId();
int cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true);
int BONETAG_L_FINGER01 = 4089;

// attach it to a finger on the left hand and rotates it 90 degrees on the X-axis
HardAttachCamToPedBone(cam, ped, BONETAG_L_FINGER01, 90.0f, 0.0f, 0.0f, 0.0f, 0.0f, 0.0f, true);

// renders the camera
RenderScriptCams(true, false, 0, true, true);
```
