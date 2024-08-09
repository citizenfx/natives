---
ns: VEHICLE
---
## DOES_VEHICLE_HAVE_ROOF

```c
// 0x8AC862B0B32C5B80 0xDB817403
BOOL DOES_VEHICLE_HAVE_ROOF(Vehicle vehicle);
```

Determines whether a specific vehicle is equipped with a roof.

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle to check for a roof presence.

## Return value
Returns `true` if the vehicle has a roof, `false` otherwise.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
if DoesVehicleHaveRoof(vehicle) then
    print("This vehicle has a roof.")
else
    print("This vehicle does not have a roof.")
end
```

```js
let vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (DoesVehicleHaveRoof(vehicle)) {
    console.log("This vehicle has a roof.");
} else {
    console.log("This vehicle does not have a roof.");
}
```

```cs
using static CitizenFX.Core.Native.API;

int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);
if (DoesVehicleHaveRoof(vehicle)) {
    Debug.WriteLine("This vehicle has a roof.");
} else {
    Debug.WriteLine("This vehicle does not have a roof.");
}
```