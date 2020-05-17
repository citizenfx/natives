---
ns: VEHICLE
aliases: ["0x1087BC8EC540DAEB"]
---
## _SET_DISABLE_VEHICLE_WINDOW_COLLISIONS

```c
// 0x1087BC8EC540DAEB
void _SET_DISABLE_VEHICLE_WINDOW_COLLISIONS(Vehicle vehicle, BOOL p1);
```

Disables collision for all windows.

This is a toggle, so it does not need to be looped each frame.

This is used for vehicles like the nightshark,
where there is a vehicle mod option (mod index 5) that adds armor
plating in front of the windows.

## Parameters
* **vehicle**: The vehicle to toggle this for.
* **p1**: True disables the collision, false enables the collision

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

if GetEntityModel(vehicle) == `NIGHTSHARK` then
    -- Mod index 5 = armored window plates
    if GetVehicleMod(vehicle, 5) ~= -1 then
        -- The nightshark has armored plates in front of the windows
        -- so we disable the window collisions
        SetDisableVehicleWindowCollisions(vehicle, true)
    else
        -- The nightshark has no armored plates in front of the windows
        -- so we enable the window collisions
        SetDisableVehicleWindowCollisions(vehicle, false)
    end
end
```
