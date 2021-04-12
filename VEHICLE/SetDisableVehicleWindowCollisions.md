---
ns: VEHICLE
aliases: ["0x1087BC8EC540DAEB"]
---
## _SET_DISABLE_VEHICLE_WINDOW_COLLISIONS

```c
// 0x1087BC8EC540DAEB
void _SET_DISABLE_VEHICLE_WINDOW_COLLISIONS(Vehicle vehicle, BOOL toggle);
```

R* used it to "remove" vehicle windows when "nightshark" had some mod, which adding some kind of armored windows. When enabled, you can't break vehicles glass. All your bullets wiil shoot through glass. You also will not able to break the glass with any other way (hitting and etc)

## Parameters
* **vehicle**: The vehicle to toggle this for.
* **toggle**: True disables the collision, false enables the collision

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
