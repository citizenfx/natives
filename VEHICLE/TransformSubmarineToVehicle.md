---
ns: VEHICLE
aliases: ["0x2A69FFD1B42BFF9E","_TRANSFORM_STORMBERG_TO_ROAD_VEHICLE"]
---
## _TRANSFORM_SUBMARINE_TO_VEHICLE

```c
// 0x2A69FFD1B42BFF9E
void _TRANSFORM_SUBMARINE_TO_VEHICLE(Vehicle vehicle, BOOL instantly);
```

Transforms the `stormberg` to it's "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.

## Parameters
* **vehicle**: A vehicle handle.
* **instantly**: If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
