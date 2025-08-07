---
ns: ENTITY
---
## IS_ENTITY_AT_ENTITY

```c
// 0x751B70C3D034E187 0xDABDCB52
BOOL IS_ENTITY_AT_ENTITY(Entity entity, Entity target, float xSize, float ySize, float zSize, BOOL highlightArea, BOOL do3dCheck, int transportMode);
```

Checks if entity is within the specified axis aligned box around the target entity.

```c
enum eTransportMode {
    SCRIPT_TM_ANY = 0,
    SCRIPT_TM_ON_FOOT = 1,
    SCRIPT_TM_IN_VEHICLE = 2
};
```

## Parameters
* **entity**: The source entity handle.
* **target**: The target entity handle.
* **xSize**: The x size of the axis aligned box around the target entity to check.
* **ySize**: The y size of the axis aligned box around the target entity to check.
* **zSize**: The z size of the axis aligned box around the target entity to check.
* **highlightArea**:
* **do3dCheck**: If the check should be 2d or 3d.
* **transportMode**: The transport mode. Returns early if the entity is not in that mode of transportation.

## Return value
