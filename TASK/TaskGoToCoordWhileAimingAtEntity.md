---
ns: TASK
---
## TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY

```c
// 0xB2A16444EAD9AE47 0x9BD52ABD
void TASK_GO_TO_COORD_WHILE_AIMING_AT_ENTITY(Ped ped, float x, float y, float z, Entity entityToAimAt, float moveSpeed, BOOL shoot, float targetRadius, float slowDistance, BOOL useNavMesh, int navFlags, BOOL instantBlendAtAim, cs_type(Any) Hash firingPattern, int time);
```

Will make the ped move to a coordinate while aiming (and optionally shooting) at the given entity.

```c
enum eFiringPatternHashes {
    FIRING_PATTERN_DEFAULT = 0,
    FIRING_PATTERN_BURST_FIRE = -687903391,
    FIRING_PATTERN_BURST_FIRE_DRIVEBY = -753768974,
    FIRING_PATTERN_FULL_AUTO = -957453492,
    FIRING_PATTERN_SINGLE_SHOT = 1566631136,
    FIRING_PATTERN_DELAY_FIRE_BY_ONE_SEC = 2055493265,
    FIRING_PATTERN_BURST_FIRE_HELI = -1857128337,
    FIRING_PATTERN_SHORT_BURSTS = 445831135,
    FIRING_PATTERN_BURST_FIRE_MICRO = 1122960381,
    FIRING_PATTERN_SLOW_FIRE_TANK = -490063247,
    FIRING_PATTERN_TAMPA_MORTAR = -1842093953
}
```

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
* **firingPattern**: The firing pattern to use, refer to `eFiringPatternHashes`
* **time**: Usually 20000 (ms)

