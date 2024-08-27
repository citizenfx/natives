---
ns: VEHICLE
---
## SET_VEHICLE_FIXED

```c
// 0x115722B1B9C14C1C 0x17469AA1
void SET_VEHICLE_FIXED(Vehicle vehicle);
```
Fix a given vehicle.
If the vehicle's engine's broken then you cannot fix it with this native.

## Parameters
* **vehicle**: The vehicle that will be fixed

## Examples
```lua
-- Get the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- If the player is not in a vehicle, return
if (vehicle == 0) then return end 

-- Fix the vehicle
SetVehicleFixed(vehicle)
```

```js
// Get the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const vehicle = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a vehicle, return
if (vehicle === 0) return;

// Fix the vehicle
SetVehicleFixed(vehicle);
```

```cs
using static CitizenFX.Core.Native.API;
// ...

// Get the player ped
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
int vehicle = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a vehicle, return
if (vehicle == 0) return; 

// Fix the vehicle
SetVehicleFixed(vehicle);
```
