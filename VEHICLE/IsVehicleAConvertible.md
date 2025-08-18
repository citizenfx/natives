---
ns: VEHICLE
---
## IS_VEHICLE_A_CONVERTIBLE

```c
// 0x52F357A30698BCCE 0x6EF54490
BOOL IS_VEHICLE_A_CONVERTIBLE(Vehicle vehicle, BOOL checkRoofExtras);
```

Determines if a vehicle is a convertible with an animatable roof. This native checks if the specified vehicle model features a convertible roof that can be lowered or raised through an animation.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle to check.
* **checkRoofExtras**: When set to `false`, the native checks only for vehicles with an animatable convertible roof. Set to `true` to include additional checks for vehicles that might have a non-animatable roof (i.e., using vehicle extras)

## Return value
Returns `true` if the vehicle is a convertible with an animatable roof or if `checkRoofExtras` is `true` and the vehicle has a roof (animatable or not). Returns `false` if the vehicle does not meet the criteria.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if IsVehicleAConvertible(vehicle, false) then
    print("The vehicle is a convertible with an animatable roof.")
else
    print("The vehicle is not a convertible or does not have an animatable roof.")
end
```

```js
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (IsVehicleAConvertible(vehicle, false)) {
    console.log("The vehicle is a convertible with an animatable roof.");
} else {
    console.log("The vehicle is not a convertible or does not have an animatable roof.");
}
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (IsVehicleAConvertible(vehicle, false)) {
    Debug.WriteLine("The vehicle is a convertible with an animatable roof.");
} else {
    Debug.WriteLine("The vehicle is not a convertible or does not have an animatable roof.");
}
```
