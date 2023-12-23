---
ns: TASK
---
## TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY

```c
// 0xB2A16444EAD9AE47 0x9BD52ABD
void TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(Ped ped, float x, float y, float z, Entity entityToAimAt, float moveSpeed, BOOL shoot, float targetRadius, float slowDistance, BOOL useNavMesh, int navFlags, BOOL instantBlendAtAim, cs_type(Any) Hash firingPattern, int time);
```

Will make the ped move to a coordinate while aiming (and optionally shooting) at the given entity.

## Parameters
* **ped**: Ped to task 
* **x**: Destination X position
* **y**: Destination Y position
* **z**: Destination Z position
* **entityToAimAt**: Entity that the ped will aim at.
* **moveSpeed**: Mostly 2f, but also 1/1.2f, etc.
* **shoot**: If true ped will shoot; false - will not
* **targetRadius**: Usually 0.5f
* **slowDistance**: Usually 4f
* **useNavMesh**: 
* **navFlags**: Usually 0 or 64
* **instantBlendAtAim**: 
* **firingPattern**: ${firing_pattern_full_auto}, 0xC6EE6B4C
* **time**: Usually 20000 (ms)

