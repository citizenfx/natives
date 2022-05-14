---
ns: VEHICLE
aliases: ["0xBE4C854FFDB6EEBE","_TRANSFORM_STORMBERG_TO_WATER_VEHICLE", "_TRANSFORM_VEHICLE_TO_SUBMARINE"]
---
## TRANSFORM_TO_SUBMARINE

```c
// 0xBE4C854FFDB6EEBE 0xCAFE5FE0
void TRANSFORM_TO_SUBMARINE(Vehicle vehicle, BOOL instantly);
```

Transforms the `stormberg` to its "water vehicle" variant. If the vehicle is already in that state then the vehicle transformation audio will still play, but the vehicle won't change at all.

## Parameters
* **vehicle**: A vehicle handle.
* **instantly**: If true, the vehicle will be instantly transformed, when false the transform animation plays normally.
