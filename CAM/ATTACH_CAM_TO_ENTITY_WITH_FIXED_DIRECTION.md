---
ns: CAM
---
## ATTACH_CAM_TO_ENTITY_WITH_FIXED_DIRECTION

```c
// ATTACH_CAM_TO_ENTITY_WITH_FIXED_DIRECTION
void ATTACH_CAM_TO_ENTITY_WITH_FIXED_DIRECTION(Cam cam, Entity entity, float rotX, float rotY, float rotZ, float offsetX, float offsetY, float offsetZ, BOOL isRelative);
```

```
Attaches a camera to an entity and makes the camera direction relative to the entity direction. NativeDB Introduced: v2189
```

## Parameters
* **cam**: The camera handle.
* **entity**: The entity handle.
* **rotX**: The X rotation.
* **rotY**: The Y rotation.
* **rotZ**: The Z rotation.
* **offsetX**: The X offset direction.
* **offsetY**: The Y offset direction.
* **offsetZ**: The Z offset direction.
* **isRelative**: determines whether the offset position is relative to the entity.
