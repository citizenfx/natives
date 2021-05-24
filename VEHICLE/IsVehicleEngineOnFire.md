---
ns: VEHICLE
aliases: ["0xEC69ADF931AAE0C3"]
---
## _IS_VEHICLE_ENGINE_ON_FIRE

```c
// 0xEC69ADF931AAE0C3
BOOL _IS_VEHICLE_ENGINE_ON_FIRE(Vehicle vehicle);
```

Only ever used once in decompiled scripts: **am_pi_menu**:
Returns true if the engine is on fire, or if the vehicle engine health is < 0 and it **has been** on fire.

It sometimes doesn't return true when the vehicle engine has been on fire, and has since been fixed. I'm not really sure what the exact conditions are.

This usually returns true even if there are no visible flames yet (engine health > 0). However if you monitor engine health you'll see that it starts decreasing as soon as this returns true.

## Parameters
* **vehicle**: The vehicle to check.


## Return value
Returns true when the engine of your vehicle is on fire. Returns false if it's not on fire.


## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)
SetVehicleEngineHealth(vehicle, 99)

CreateThread(function()
    -- waiting for the vehicle to be on fire, usually takes one small
    -- crash into a wall or something to do this if engine health < 100.
    while IsVehicleEngineOnFire(vehicle) ~= 1 do
        Wait(0)
    end
    print("Vehicle is now on fire!")
end)
```
