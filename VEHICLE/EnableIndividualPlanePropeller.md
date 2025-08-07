---
ns: VEHICLE
---
## _ENABLE_INDIVIDUAL_PLANE_PROPELLER

```c
// 0xDC05D2777F855F44
void _ENABLE_INDIVIDUAL_PLANE_PROPELLER(Vehicle plane, int propeller);
```

Enables individual propeller on a propeller plane. This native is the inverse of [`DISABLE_INDIVIDUAL_PLANE_PROPELLER`](#_0x500873A45724C863).

```
NativeDB Introduced: v3407
```

## Parameters
* **plane**: The propeller plane.
* **propeller**: The propeller index to enable (starts at 0).

## Examples
```lua
CreateThread(function()
    local vehicle = GetVehiclePedIsIn(PlayerPedId(), false) -- The plane used in this example is the cuban800

    DisableIndividualPlanePropeller(vehicle, 0)
    DisableIndividualPlanePropeller(vehicle, 1)
    -- We are disabling both propellers so we can start a specific one (since both are automatically started when entering the plane)
    Wait(5000) -- We are waiting 5 seconds
    EnableIndividualPlanePropeller(vehicle, 1) -- Starting the second propeller (since the index starts at 0)
end)
```
