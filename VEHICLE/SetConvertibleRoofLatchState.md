---
ns: VEHICLE
aliases: ["0x1A78AD3D8240536F"]
---
## SET_CONVERTIBLE_ROOF_LATCH_STATE

```c
// 0x1A78AD3D8240536F 0x0858678C
void SET_CONVERTIBLE_ROOF_LATCH_STATE(Vehicle vehicle, BOOL bLatched);
```

This native is used to latch or unlatch the convertible roof of a vehicle. It allows for direct control over the roof's mechanism without actually opening or closing the roof. This can be useful for scenarios where you need to prepare a vehicle's roof to be opened or closed by another action or to ensure it remains fixed in its current state regardless of other interactions.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle whose convertible roof latch state is to be set.
* **bLatched**: A boolean value indicating the desired latch state of the roof. Set to `true` to latch (lock) the roof, preventing it from being opened. Set to `false` to unlatch (unlock) the roof, allowing it to be opened or closed.

## Examples
```lua
-- To latch (lock) the convertible roof, preventing it from being opened
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if not DoesVehicleHaveRoof(vehicle) then return end
SetConvertibleRoofLatchState(vehicle, true)
```

```js
// To latch (lock) the convertible roof, preventing it from being opened
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!DoesVehicleHaveRoof(vehicle)) return;
SetConvertibleRoofLatchState(vehicle, true);
```

```cs
// To latch (lock) the convertible roof, preventing it from being opened
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (!DoesVehicleHaveRoof(vehicle)) return;
SetConvertibleRoofLatchState(vehicle, true);
```