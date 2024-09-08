---
ns: VEHICLE
---
## SET_VEHICLE_LIGHTS

```c
// 0x34E710FF01247C5A 0xE8930226
void SET_VEHICLE_LIGHTS(Vehicle vehicle, int setting);
```

```cpp
enum eVehicleLightSetting {
    NO_VEHICLE_LIGHT_OVERRIDE = 0,
    FORCE_VEHICLE_LIGHTS_OFF = 1,
    FORCE_VEHICLE_LIGHTS_ON = 2,
    SET_VEHICLE_LIGHTS_ON = 3,
    SET_VEHICLE_LIGHTS_OFF = 4
}
```

## Parameters
* **vehicle**: The vehicle handle.
* **setting**: The vehicle light setting.

