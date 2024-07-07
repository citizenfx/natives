---
ns: VEHICLE
aliases: ["_SET_VEHICLE_HOVER_TRANSFORM_ACTIVE"]
---
## SET_DISABLE_HOVER_MODE_FLIGHT

```c
// 0x2D55FE374D5FDB91
void SET_DISABLE_HOVER_MODE_FLIGHT(Vehicle vehicle, BOOL toggle);
```

Disables wings for `Deluxo` and `Oppressor MK II`. For the Deluxo, it retracts the wings immediately, preventing flight. For the Oppressor Mk II, the wings retract after landing and take-off is not possible, though it can still glide if launched into the air.


## Parameters
* **vehicle**: The vehicle to which the toggle will be applied.
* **toggle**: Boolean parameter where setting `true` disables the vehicle's wings, preventing flight. Setting it to `false` allows the vehicle to fly as usual.

## Examples
```lua
-- In this case we are disabling the wings of the vehicle
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetDisableHoverModeFlight(vehicle, true)
```

```js
// In this case we are disabling the wings of the vehicle
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetDisableHoverModeFlight(vehicle, true);
```

```cs
// In this case we are disabling the wings of the vehicle
using static CitizenFX.Core.Native.API;
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetDisableHoverModeFlight(vehicle, true);
```
