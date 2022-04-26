---
ns: VEHICLE
aliases: ["0x2A69FFD1B42BFF9E","_TRANSFORM_STORMBERG_TO_ROAD_VEHICLE", "_TRANSFORM_SUBMARINE_TO_VEHICLE"]
---
## TRANSFORM_TO_CAR

```c
// 0x2A69FFD1B42BFF9E 0xD8B90941
void TRANSFORM_TO_CAR(Vehicle vehicle, BOOL instantly);
```

Transforms the `stormberg` to its "road vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.

## Parameters
* **vehicle**: A vehicle handle.
* **instantly**: If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
