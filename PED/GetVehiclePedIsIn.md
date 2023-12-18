---
ns: PED
---
## GET_VEHICLE_PED_IS_IN

```c
// 0x9A9112A0FE9A4713 0xAFE92319
Vehicle GET_VEHICLE_PED_IS_IN(Ped ped, BOOL lastVehicle);
```

Retrieves the vehicle the specified ped is currently in, or the last vehicle they were in.

## Parameters
* **ped**: The target ped
* **lastVehicle**: A boolean value where `false` represents the current vehicle the Ped is in, and `true` represents the last vehicle the Ped was in.

## Return value
The vehicle id. Returns 0 if the ped is/was not in a vehicle.

## Examples
```lua
-- This example gets the vehicle the player is currently in

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists. If not, terminate the script.
if not DoesEntityExist(vehicle) then return end

-- Do whatever you want with the vehicle, for example here we are setting the vehicle's engine health to 1000
SetVehicleEngineHealth(vehicle, 1000.0)
```

```js
// This example gets the vehicle the player is currently in

// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Do whatever you want with the vehicle, for example here we are setting the vehicle's engine health to 1000
SetVehicleEngineHealth(vehicle, 1000.0);
```

```cs
// This example gets the vehicle the player is currently in
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in
Vehicle vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists. If not, terminate the script.
if (!DoesEntityExist(vehicle)) return;

// Do whatever you want with the vehicle, for example here we are setting the vehicle's engine health to 1000
SetVehicleEngineHealth(vehicle, 1000.0);
```
