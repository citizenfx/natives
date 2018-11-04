---
ns: VEHICLE
aliases: ["0xAD2D28A1AFDFF131"]
---
## SET_PLANE_TURBULENCE_MULTIPLIER

```c
// 0xAD2D28A1AFDFF131 0xED159AE6
void SET_PLANE_TURBULENCE_MULTIPLIER(Vehicle vehicle, float multiplier);
```

This native sets the turbulence multiplier. It only works for planes.
0.0 = no turbulence at all.
1.0 = heavy turbulence.

Works by just calling it once, does not need to be called every tick.

## Parameters
* **vehicle**: The plane to set the multiplier for
* **multiplier**: The turbulence multiplier. Value between 0.0 and 1.0

## Examples
```lua
local plane = GetVehiclePedIsIn(PlayerPedId(), false)
if IsThisModelAPlane(GetEntityModel(plane)) then
    -- Goodbye turbulence!
    SetPlaneTurbulenceMultiplier(plane, 0.0)
end
```
