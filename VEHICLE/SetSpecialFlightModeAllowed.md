---
ns: VEHICLE
aliases: ["0xF1211889DF15A763", "_SET_VEHICLE_HOVER_TRANSFORM_ENABLED"]
---
## SET_SPECIAL_FLIGHT_MODE_ALLOWED

```c
// 0xF1211889DF15A763
void SET_SPECIAL_FLIGHT_MODE_ALLOWED(Vehicle vehicle, BOOL toggle);
```

Allows locking the hover/non-hover mode of a vehicle, such as the flying mode of the `Deluxo`. In the decompiled scripts, this native is used on `oppressor2` but couldn't get it to work on it.

## Parameters
* **vehicle**: The vehicle to which the locking state will be applied.
* **toggle**: Boolean parameter where setting `false` locks the current state of the vehicle, preventing transitions such as the `Deluxo` or Oppressor switching between their flying and driving modes. Setting it to `true` allows changing the vehicle state as usual.

## Examples
```lua
-- Checks the altitude of the Deluxo and locks its current mode when above 150 meters.
-- If the Deluxo is in flying mode at this altitude, it will be unable to switch to driving mode, and vice versa.
Citizen.CreateThread(function()
    local coords -- Variable to store the vehicle's coordinates.
    local vehicle -- Variable to store the vehicle entity.
    
    repeat
        vehicle = GetVehiclePedIsIn(PlayerPedId(), false) -- Get the vehicle the player is currently in.
        
        if (GetEntityModel(vehicle) == joaat("deluxo")) then -- Check if the vehicle is a Deluxo.
            coords = GetEntityCoords(vehicle) -- Get the current coordinates of the vehicle.
        end
        
        Citizen.Wait(0) -- Wait for the next frame.
        
    until coords.z >= 150.0 -- Keep looping until the Deluxo is above 150 meters.
    
    SetSpecialFlightModeAllowed(vehicle, false) -- Lock the Deluxo's current mode (flying or driving).
end)
```