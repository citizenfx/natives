---
ns: VEHICLE
---
## _GET_IS_VEHICLE_ELECTRIC

```c
// 0x1FCB07FE230B6639
BOOL _GET_IS_VEHICLE_ELECTRIC(Hash vehicleModel);
```

Checks if the vehicle is electric.

```
NativeDB Introduced: v3258
```

## Parameters
* **vehicleModel**: The hash of the vehicle model to check.

## Return value
Returns `true` if the vehicle is electric or `false` otherwise.

## Examples
```lua
local veh = GetVehiclePedIsIn(PlayerPedId(), false)
-- GetVehiclePedIsIn will return 0 if the ped isn't currently in a vehicle
if veh == 0 then return end
local model = GetEntityModel(veh)
if (GetIsVehicleElectric(model)) then
    print("This vehicle is electric")
else
    print("This vehicle is not electric")
end
```