---
ns: VEHICLE
---
## IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS

```c
// 0x2959F696AE390A99 0x69200FA4
BOOL IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS(Vehicle vehicle);
```

```
This native checks if the given vehicle is stopped at a red light (this won't return true if the vehicle is stopped behind another vehicle waiting at a traffic light)
```

## Parameters
* **vehicle**: 

## Return value
Returns true if the vehicle is stopped because of a redlight, false otherwise
