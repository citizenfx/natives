---
ns: VEHICLE
---
## CLEAR_NITROUS

```c
// 0xC889AE921400E1ED
void CLEAR_NITROUS(Vehicle vehicle);
```

```
NativeDB Introduced: 3095
```

Resets or clears the nitrous system for a specified vehicle. You can check if a vehicle has nitrous with [`IS_NITROUS_ACTIVE`](#_0x491E822B2C464FE4)

## Parameters
* **vehicle**: The vehicle whose nitrous system needs to be cleared.

## Examples

```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if vehicle == 0 then return end

-- Check if nitrous is active on the vehicle.
if IsNitrousActive(vehicle) then
    -- If nitrous is active, clear the nitrous boost from the vehicle.
    ClearNitrous(vehicle)
end
```

```js
// Retrieve the player ped.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Check if nitrous is active on the vehicle.
if (IsNitrousActive(vehicle)) {
    // If nitrous is active, clear the nitrous boost from the vehicle.
    ClearNitrous(vehicle);
}
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (vehicle == 0) return;

// Check if nitrous is active on the vehicle.
if (IsNitrousActive(vehicle)) {
    // If nitrous is active, clear the nitrous boost from the vehicle.
    ClearNitrous(vehicle);
}
```
