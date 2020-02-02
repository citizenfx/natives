---
ns: VEHICLE
aliases: ["0x90B6DA738A9A25DA", "_SET_SOME_VEHICLE_DENSITY_MULTIPLIER_THIS_FRAME"]
---
## SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME

```c
// 0x90B6DA738A9A25DA 0xDAE2A2BE
void SET_AMBIENT_VEHICLE_RANGE_MULTIPLIER_THIS_FRAME(float range);
```

Sets the ambient vehicle spawn range.
For example, if you set the range to 0.1, the ambient cars will spawn close to your player.

This native needs to be called every frame.

## Parameters
* **range**: Most likely a value between 0.0 and 1.0.

