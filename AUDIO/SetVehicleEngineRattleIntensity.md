---
ns: AUDIO
aliases: ["0x01BB4D577D38BD9E"]
apiset: client
---
## _SET_VEHICLE_ENGINE_RATTLE_INTENSITY

```c
// 0x01BB4D577D38BD9E 0xE81FAC68
void _SET_VEHICLE_ENGINE_RATTLE_INTENSITY(Vehicle vehicle, float intensity);
```

```
SET_VEHICLE_*
```

## Parameters
* **vehicle**: Vehicle to modify
* **intensity**: A value 0.0 - 1.0. The higher the value, the more common it is for the engine to rattle when decelerating.

