---
ns: VEHICLE
---
## SET_CONVERTIBLE_ROOF

```c
// 0xF39C4F538B5124C2 0xC87B6A51
void SET_CONVERTIBLE_ROOF(Vehicle vehicle, BOOL toggle);
```
Enables or disables the convertible roof on vehicles that support old-style GTA IV roofs, which are not animated. Setting `toggle` to true will apply the roof to the vehicle, and setting it to false will remove the roof, assuming the vehicle has versions with and without a roof.

If you want to lock or unlock the roof mechanism, use [`SET_CONVERTIBLE_ROOF_LATCH_STATE`](#_0x1A78AD3D8240536F).

You can check if the vehicle has a roof with [`DOES_VEHICLE_HAVE_ROOF`](#_0x8AC862B0B32C5B80).

```
NativeDB Introduced: v323
```

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
* **toggle**: Boolean value where `true` adds the roof and `false` removes it, applicable only if the vehicle has a version with and without a roof.

## Examples
```lua
-- In this case we are removing the roof from the vehicle.
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not DoesVehicleHaveRoof(vehicle) then return end
SetConvertibleRoof(vehicle, false)
```

```js
// In this case we are removing the roof from the vehicle.
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!DoesVehicleHaveRoof(vehicle)) return;
SetConvertibleRoof(vehicle, false);
```

```cs
// In this case we are removing the roof from the vehicle.
using static CitizenFX.Core.Native.API;
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!DoesVehicleHaveRoof(vehicle)) return;
SetConvertibleRoof(vehicle, false);
```
