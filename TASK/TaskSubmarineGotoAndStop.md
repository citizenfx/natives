---
ns: TASK
---
## _TASK_SUBMARINE_GOTO_AND_STOP

```c
// 0xC22B40579A498CA4
void _TASK_SUBMARINE_GOTO_AND_STOP(Any p0, Vehicle submarine, float x, float y, float z, Any p5);
```

Used in am_vehicle_spawn.ysc and am_mp_submarine.ysc.
p0 is always 0, p5 is always 1
p1 is the vehicle handle of the submarine. Submarine must have a driver, but the ped handle is not passed to the native.
Speed can be set by calling SET_DRIVE_TASK_CRUISE_SPEED after

```
NativeDB Introduced: v2189
```

## Parameters
* **p0**:
* **submarine**:
* **x**:
* **y**:
* **z**:
* **p5**:
