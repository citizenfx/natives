---
ns: VEHICLE
aliases: ["_SET_VEHICLE_HOVER_TRANSFORM_RATIO"]
---
## SET_SPECIAL_FLIGHT_MODE_RATIO

```c
// 0xD138FA15C9776837
void SET_SPECIAL_FLIGHT_MODE_RATIO(Vehicle vehicle, float ratio);
```

Used alongside [`SET_SPECIAL_FLIGHT_MODE_TARGET_RATIO`](#_0x438B3D7CA026FE91), this function initiates hover transformation for vehicles with a hover mode, like the `Deluxo`, based on a specified ratio (0.0 to 1.0). Incorrect values can glitch the vehicle. Without pairing, vehicles revert to car mode. Ineffective on the `oppressor2`

## Parameters
* **vehicle**: The vehicle to which the ratio will be applied.
* **ratio**: A value between 0.0 and 1.0 indicating the target state for the vehicle's hover mode transition. In decompiled scripts, a common usage is 0.75 - GetFrameTime(). Exceeding the maximum can cause the `Deluxo's` wheels to glitch, delaying their return to the initial position.

## Examples
```lua
-- In this case we are enabling the hover mode for the vehicle and initiates hover transformation.
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetSpecialFlightModeRatio(vehicle, 0.75 - GetFrameTime())
SetVehicleHoverTransformPercentage(vehicle, 1.0)
```

```js
// In this case we are enabling the hover mode for the vehicle and initiates hover transformation.
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetSpecialFlightModeRatio(vehicle, 0.75 - GetFrameTime());
SetVehicleHoverTransformPercentage(vehicle, 1.0);
```

```cs
// In this case we are enabling the hover mode for the vehicle and initiates hover transformation.
using static CitizenFX.Core.Native.API;
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetSpecialFlightModeRatio(vehicle, 0.75f - GetFrameTime());
SetVehicleHoverTransformPercentage(vehicle, 1f);
```