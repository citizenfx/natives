---
ns: VEHICLE
---
## SET_VEHICLE_LIGHTS

```c
// 0x34E710FF01247C5A 0xE8930226
void SET_VEHICLE_LIGHTS(Vehicle vehicle, int state);
```

Sets the vehicle lights state. Allowing for different lighting modes.

```
NativeDB Introduced: v323
```

```c
enum eVehicleLightSetting {
    // Normal light behavior. Lights cycle through off, then low beams, then high beams.
    // Note: It's affected by day or night; high beams don't exist in daytime.
    NO_VEHICLE_LIGHT_OVERRIDE = 0,
    // Vehicle doesn't have lights, always off.
    FORCE_VEHICLE_LIGHTS_OFF  = 1, 
    // Vehicle has always-on lights.
    // During day: Cycles between low beams and high beams. 
    // At night: Cycles between low beams, low beams, and high beams.
    FORCE_VEHICLE_LIGHTS_ON   = 2,
    // Sets vehicle lights on. Behaves like normal lights (same as 0).
    SET_VEHICLE_LIGHTS_ON     = 3,
    // Sets vehicle lights off. Behaves like normal lights (same as 0).
    SET_VEHICLE_LIGHTS_OFF    = 4 
};
```


## Parameters
* **vehicle**: The target vehicle.
* **state**: A value from `eVehicleLightSetting` representing the desired light setting.


## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not vehicle then return end

-- Set the vehicle lights to always on
SetVehicleLights(vehicle, 2)
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!vehicle) return;

// Set the vehicle lights to always on
SetVehicleLights(vehicle, 2);
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (vehicle == 0) return;

// Set the vehicle lights to always on
SetVehicleLights(vehicle, 2);
```
