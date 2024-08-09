---
ns: VEHICLE
---
## LOWER_CONVERTIBLE_ROOF

```c
// 0xDED51F703D0FA83D 0xC5F72EAE
void LOWER_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL instantlyLower);
```

Lowers the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of lowering the roof.

You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#_0x52F357A30698BCCE).

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The convertible vehicle whose roof you want to lower.
* **instantlyLower**: A boolean value indicating whether the roof should be lowered instantly without transitioning through the animation. Set to `false` to lower the roof with the animation or `true` to lower it instantly.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not IsVehicleAConvertible(vehicle, false) then return end
LowerConvertibleRoof(vehicle, false)
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!IsVehicleAConvertible(vehicle, false)) return;
LowerConvertibleRoof(vehicle, false);
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!IsVehicleAConvertible(vehicle, false)) return;
LowerConvertibleRoof(vehicle, false);
```
