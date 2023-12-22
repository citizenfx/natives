---
ns: VEHICLE
aliases: ["0x0A3F820A9A9A9AC5"]
---
## SET_HELI_COMBAT_OFFSET

```c
// 0x0A3F820A9A9A9AC5
void SET_HELI_COMBAT_OFFSET(Vehicle vehicle, float x, float y, float z);
```

Set a specific offset for helis chasing target in combat

```
NativeDB Introduced: v1180
```

## Parameters
* **vehicle**: Helicopter for which the combat offset is being set.
* **x**: Offset along the X-axis (left/right) relative to the helicopter's current position and orientation
* **y**: Offset along the Y-axis (forward/backward) relative to the helicopter's current position and orientation
* **z**: Offset along the Z-axis (up/down) relative to the helicopter's current position and orientation.
