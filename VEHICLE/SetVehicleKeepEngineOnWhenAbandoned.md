---
ns: VEHICLE
aliases: ["0xB8FBC8B1330CA9B4", "_SET_VEHICLE_JET_ENGINE_ON"]
---
## SET_VEHICLE_KEEP_ENGINE_ON_WHEN_ABANDONED

```c
// 0xB8FBC8B1330CA9B4 0x51E0064F
void SET_VEHICLE_KEEP_ENGINE_ON_WHEN_ABANDONED(Vehicle vehicle, BOOL toggle);
```

Calling this native will keep a vehicle's engine running after exiting.

## Parameters
* **vehicle**: The vehicle handle.
* **toggle**: `true` to keep the engine on, otherwise `false`.

