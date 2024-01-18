---
ns: CAM
---
## ATTACH_CAM_TO_ENTITY

```c
// 0xFEDB7D269E8C60E3 0xAD7C45F6
void ATTACH_CAM_TO_ENTITY(Cam cam, Entity entity, float xOffset, float yOffset, float zOffset, BOOL isRelative);
```

```
Last param determines if its relative to the Entity  
```

## Parameters
* **cam**: The camera handle.
* **entity**: The entity handle.
* **xOffset**: X-axis offset
* **yOffset**: Y-axis offset
* **zOffset**: Z-axis offset
* **isRelative**: Whether or not the camera will be relative to the entity

## Examples
```lua
local entity = PlayerPedId()
local cam = CreateCam("DEFAULT_SCRIPTED_CAMERA", true)

AttachCamToEntity(cam,entity, 0.0, 0.0, 0.0, true) --attach camera to the center of the entity

SetCamActive(cam, true)
RenderScriptCams(true, false, 0, true, true)
```
