---
ns: ENTITY
---
## SET_ENTITY_COORDS_NO_OFFSET

```c
// 0x239A3351AC1DA385 0x4C83DE8D
void SET_ENTITY_COORDS_NO_OFFSET(Entity entity, float x, float y, float z, BOOL keepTasks, BOOL keepIK, BOOL doWarp);
```

Teleports an entity to specified coordinates directly, with options to maintain certain behaviors post-teleportation.

**Note**:
- This native allows precise placement of entities without the usual adjustments for collision or interaction with the environment that may occur with other teleportation natives.
- The `keepTasks` and `keepIK` parameters are specifically useful for maintaining the current state of a ped, ensuring actions or animations are not abruptly stopped due to the teleportation.
- Setting `doWarp` to `false` is useful when simulating continuous movement or when the entity should interact with its immediate surroundings upon arrival.

## Parameters
* **entity**: The entity to reposition.
* **x**: X coordinate for the new position.
* **y**: Y coordinate for the new position.
* **z**: Z coordinate for the new position.
* **keepTasks**: If `true`, the tasks currently assigned to the ped are not removed upon teleportation. Applies only to peds.
* **keepIK**: If `true`, the Inverse Kinematics (IK) on the ped are not reset upon teleportation. Applies only to peds.
* **doWarp**: If `false`, the entity will maintain continuous motion and will not clear contacts nor create space for itself upon teleportation.