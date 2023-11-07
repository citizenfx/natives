---
ns: VEHICLE
---
## SET_CONVERTIBLE_ROOF

```c
// 0xF39C4F538B5124C2 0xC87B6A51
void SET_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL roofState);
```
This allows for the vehicle's roof to be put on when set to true, and removed when set to false, provided that the vehicle has a version with a roof and a version without a roof.

#### Vehicles with both roofed and roofless versions (others may exist; this list is compiled from decompiled scripts).

* chino
* voltic
* buccaneer
* buccaneer2
* chino2
* faction
* faction2
* mamba


## Parameters
* **vehicle**: The vehicle to which the roof state will be applied.
* **roofState**: Boolean value where `true` adds the roof and `false` removes it, applicable only if the vehicle has a version with and without a roof.

## Examples
```lua
-- In this case we are removing the roof from the vehicle.
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetConvertibleRoof(vehicle, false)
```

```js
// In this case we are removing the roof from the vehicle.
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetConvertibleRoof(vehicle, false);
```

```cs
// In this case we are removing the roof from the vehicle.
using static CitizenFX.Core.Native.API;
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
SetConvertibleRoof(vehicle, false);
```