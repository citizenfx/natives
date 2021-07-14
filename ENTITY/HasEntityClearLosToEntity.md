---
ns: ENTITY
---
## HAS_ENTITY_CLEAR_LOS_TO_ENTITY

```c
// 0xFCDFF7B72D23A1AC 0x53576FA7
BOOL HAS_ENTITY_CLEAR_LOS_TO_ENTITY(Entity entity1, Entity entity2, int flags);
```

Checks if entity1 has a clear line of sight to entity2. So a simple raycast which if it collides with any of the given colliderTypes returns false.

The direction of the check matters with for example bushes, so checking from inside to outside a bush with traceType 256 returns true, but the other way around returns false.

## Parameters
* **entity1**: Entity to start from
* **entity2**: Entity to check to
* **flags**: A bit mask with bits 1, 2, 4, etc, relating to collider types (see: [START_EXPENSIVE_SYNCHRONOUS_SHAPE_TEST_LOS_PROBE](#_0x377906D8A31E5586)). 17 is most common in GTA scripts.

## Return value
Returns `true` if no collider of specified bitmask is hit.
