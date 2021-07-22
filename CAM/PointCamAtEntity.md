---
ns: CAM
---
## POINT_CAM_AT_ENTITY

```c
// 0x5640BFF86B16E8DC 0x7597A0F7
void POINT_CAM_AT_ENTITY(Cam cam, Entity entity, float offsetX, float offsetY, float offsetZ, BOOL p5);
```

Points the camera at the specified entity.

Offset works like [GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS](#_0x1899F328B0E12848).

## Parameters
* **cam**: Cam (Return value of CREATE_CAM or CREATE_CAM_WITH_PARAMS).
* **entity**: Entity for the camera to point at.
* **offsetX**: X offset for the camera (left/right).
* **offsetY**: Y offset for the camera (forward/backward).
* **offsetZ**: Z offset for the camera (up/down).
* **p5**: Always seems to be 1 (true).

## Examples
```lua
local cam = CreateCameraWithParams("DEFAULT_SCRIPTED_CAMERA", GetEntityCoords(PlayerPedId()), 0.0, 0.0, 0.0, 90.0, true, 2)
PointCamAtEntity(cam, PlayerPedId(), 0.0, 0.0, 0.0, true)
RenderScriptCams(true, false, 0, true, true)
```
