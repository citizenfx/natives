---
ns: VEHICLE
---
## IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS

```c
// 0x2959F696AE390A99 0x69200FA4
BOOL IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS(Vehicle vehicle);
```

```
This native checks if the given vehicle is stopped at a red light.

**Note:** Will return false if the vehicle is stopped behind another vehicle waiting at a traffic light.
```

## Parameters
* **vehicle**:
