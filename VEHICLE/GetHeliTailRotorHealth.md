---
ns: VEHICLE
aliases: ["_GET_HELI_TAIL_ROTOR_HEALTH"]
---
## GET_HELI_TAIL_ROTOR_HEALTH

```c
// 0xAE8CE82A4219AC8C 0xA41BC13D
float GET_HELI_TAIL_ROTOR_HEALTH(Vehicle heli);
```

```
NativeDB Introduced: v323
```

## Parameters
* **heli**: Helicopter for which you want to get the rotor health.

## Return value
Returns the health of the rear rotor of the helicopter, not the tail rotor as the name suggests. The maximum value is 1000. At 0, the tail rotor will stall.