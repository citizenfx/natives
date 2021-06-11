---
ns: ENTITY
---
## SET_ENTITY_COORDS_NO_OFFSET

```c
// 0x239A3351AC1DA385 0x4C83DE8D
void SET_ENTITY_COORDS_NO_OFFSET(Entity entity, float xPos, float yPos, float zPos, BOOL alive, BOOL deadFlag, BOOL ragdollFlag);
```

Sets the coordinates (world position) for a specified entity.

## Parameters
* **entity**: The entity to change coordinates for.
* **xPos**: The X coordinate.
* **yPos**: The Y coordinate.
* **zPos**: The Z coordinate, origin level.
* **alive**: Unused by the game, potentially used by debug builds of GTA in order to assert whether or not an entity was alive.
* **deadFlag**: Whether to disable physics for dead peds, too, and not just living peds.
* **ragdollFlag**: A special flag used for ragdolling peds.

