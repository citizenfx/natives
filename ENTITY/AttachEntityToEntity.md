---
ns: ENTITY
---
## ATTACH_ENTITY_TO_ENTITY

```c
// 0x6B9BBD38AB0796DF 0xEC024237
void ATTACH_ENTITY_TO_ENTITY(Entity entity1, Entity entity2, int boneIndex, float xPos, float yPos, float zPos, float xRot, float yRot, float zRot, BOOL p9, BOOL useSoftPinning, BOOL collision, BOOL isPed, int rotationOrder, BOOL syncRot);
```

Attach an entity to the specified entity.

## Parameters
* **entity1**: Entity to attach.
* **entity2**: Entity to attach ```entity1``` with.
* **boneIndex**: This is different to boneID, use ['GET_PED_BONE_INDEX'](#_0x3F428D08BE5AAE31) to get the index from the ID. use the index for attaching to specific bones. ```entity1``` will be attached to the center of ```entity2``` if bone index given doesn't correspond to bone indexes for that entity type.
* **xPos**: X-axis offset from the center of ```entity2```.
* **yPos**: Y-axis offset from the center of ```entity2```.
* **zPos**: Z-axis offset from the center of ```entity2```.
* **xRot**: X-axis rotation.
* **yRot**: Y-axis rotation.
* **zRot**: Z-axis rotation.
* **p9**: Unknown. Does not seem to have any effect.
* **useSoftPinning**: If set to false attached entity will not detach when fixed.
* **collision**: Controls collision between the two entities (FALSE disables collision).
* **isPed**: Pitch doesnt work when false and roll will only work on negative numbers (only peds)
* **rotationOrder**: The order in which the rotation is applied. See [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9)
* **syncRot**: If false it ignores entity rotation.

