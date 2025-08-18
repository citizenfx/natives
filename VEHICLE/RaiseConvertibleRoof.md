---
ns: VEHICLE
---
## RAISE_CONVERTIBLE_ROOF

```c
// 0x8F5FB35D7E88FC70 0xA4E4CBA3
void RAISE_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL instantlyRaise);
```

Raises the roof on a convertible vehicle, utilizing any available animations for the action. This native is particularly useful for creating a realistic interaction with convertible vehicles by animating the process of raising the roof.

You can check if the vehicle has an convertible roof using [`IS_VEHICLE_A_CONVERTIBLE`](#_0x52F357A30698BCCE).

To lower the convertible roof, you can use [`LOWER_CONVERTIBLE_ROOF`](#_0xDED51F703D0FA83D).

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The convertible vehicle whose roof you wish to raise.
* **instantlyRaise**: A boolean indicating whether the roof should be raised instantly without the animation transition. Set `false` to raise the roof with the animation, or `true` to raise it immediately.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not IsVehicleAConvertible(vehicle, false) then return end
RaiseConvertibleRoof(vehicle, false)
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!IsVehicleAConvertible(vehicle, false)) return;
RaiseConvertibleRoof(vehicle, false);
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!IsVehicleAConvertible(vehicle, false)) return;
RaiseConvertibleRoof(vehicle, false);
```
