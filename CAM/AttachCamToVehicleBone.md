---
ns: CAM
aliases: ["0x8DB3F12A02CAEF72"]
---
## _ATTACH_CAM_TO_VEHICLE_BONE

```c
// 0x8DB3F12A02CAEF72
void _ATTACH_CAM_TO_VEHICLE_BONE(Cam cam, Vehicle vehicle, int boneIndex, BOOL relativeRotation, float rotX, float rotY, float rotZ, float offX, float offY, float offZ, BOOL fixedDirection);
```

This native works with vehicles only.
Bone indexes are usually given by this native [GET_ENTITY_BONE_INDEX_BY_NAME](#_0xFB71170B7E76ACBA).

## Parameters
* **cam**: The camera handle.
* **vehicle**: The vehicle handle.
* **boneIndex**: 
* **relativeRotation**: Whether or not the camera rotation will relative the vehicle rotation.
* **rotX**: The X rotation.
* **rotY**: The Y rotation.
* **rotZ**: The Z rotation.
* **offX**: The X offset direction.
* **offY**: The Y offset direction.
* **offZ**: The Z offset direction.
* **fixedDirection**: Whether or not the camera direction will relative to the vehicle direction.

