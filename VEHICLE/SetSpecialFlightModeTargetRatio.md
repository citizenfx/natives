---
ns: VEHICLE
aliases: ["0x438B3D7CA026FE91","_SET_VEHICLE_TRANSFORM_STATE", "_SET_VEHICLE_HOVER_TRANSFORM_PERCENTAGE"]
---
## SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO

```c
// 0x438B3D7CA026FE91
void SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO(Vehicle vehicle, float state);
```

According to decompiled scripts this should work with the `deluxo` and `oppressor2` vehicles.
Does nothing when used on `oppressor2`.

For the deluxo:
- Set `state` to `0.0`: Fully transform to a 'road' vehicle (non-hover mode).
- Set `state` to `1.0`: Fully transform to a 'flying' vehicle (hover mode).

If you set it to something like 0.5, then something [weird happens](https://streamable.com/p6wmr), you end up in some 50% hover mode, 50% not hover mode.

This doesn't need to be called every tick, just once and the vehicle will transform to that state at the usual transform speed. It'll just stop transforming when it reaches the state you provided.

Once this native is used then players will just be able to hit the vehicle transform key to toggle the transformation cycle; it won't block users from using the key.


## Parameters
* **vehicle**: The vehicle (a deluxo or oppressor2).
* **state**: The transform state (value between 0.0 and 1.0).

## Examples
```lua
-- In this case we are enabling the hover mode for the deluxo (fyling mode)
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetSpecialFlightModeTargetRatio(vehicle, 1.0)
```

```js
// In this case we are enabling the hover mode for the deluxo (fyling mode)
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetSpecialFlightModeTargetRatio(vehicle, 1.0);
```

```cs
// In this case we are enabling the hover mode for the deluxo (fyling mode)
using static CitizenFX.Core.Native.API;
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetSpecialFlightModeTargetRatio(vehicle, 1f);
```
