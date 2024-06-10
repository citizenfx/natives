---
ns: VEHICLE
---
## IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS

```c
// 0x2959F696AE390A99 0x69200FA4
BOOL IS_VEHICLE_STOPPED_AT_TRAFFIC_LIGHTS(Vehicle vehicle);
```

This native checks if the given vehicle is stopped at a red or amber traffic light junction, provided the driver's personality is set to not run amber lights.

## Parameters
* **vehicle**: The vehicle handle.

## Return value
Will return `true` if the vehicle is at an amber light junction and the vehicle driver's personality is set to not run amber lights, or if the vehicle is at a red light, regardless of the driver's personality. 
Will return `false` if the vehicle is stopped behind another vehicle waiting at a traffic light.
