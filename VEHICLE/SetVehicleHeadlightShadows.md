---
ns: VEHICLE
aliases: ["0x1FD09E7390A74D54", "_SET_VEHICLE_LIGHTS_MODE"]
---
## SET_VEHICLE_HEADLIGHT_SHADOWS

```c
// 0x1FD09E7390A74D54
void SET_VEHICLE_HEADLIGHT_SHADOWS(Vehicle vehicle, int flag);
```

Sets the vehicle headlight shadow flags.

```
NativeDB Introduced: v323
```

```c
enum eVehicleHeadlightShadowFlags {
    // Default (Lights can be toggled between off, normal and high beams)
    NO_HEADLIGHT_SHADOWS = 0,
    // Lights Disabled (Lights are fully disabled, cannot be toggled)
    HEADLIGHTS_CAST_DYNAMIC_SHADOWS = 1,
    // Always On (Lights can be toggled between normal and high beams)
    HEADLIGHTS_CAST_STATIC_SHADOWS = 2,
    HEADLIGHTS_CAST_FULL_SHADOWS = 3 
};
```

## Parameters
* **vehicle**: The target vehicle.
* **flag**: A value from `eVehicleHeadlightShadowFlags` representing the desired headlight shadow flag.


## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not vehicle then return end

-- Set the vehicle headlight shadows to cast static shadows (always on)
SetVehicleHeadlightShadows(vehicle, 2)
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!vehicle) return;

// Set the vehicle headlight shadows to cast static shadows (always on)
SetVehicleHeadlightShadows(vehicle, 2);
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (vehicle == 0) return;

// Set the vehicle headlight shadows to cast static shadows (always on)
SetVehicleHeadlightShadows(vehicle, 2);
```