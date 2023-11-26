---
ns: TASK
---
## TASK_WARP_PED_INTO_VEHICLE

```c
// 0x9A7D091411C5F684 0x65D4A35D
void TASK_WARP_PED_INTO_VEHICLE(Ped ped, Vehicle vehicle, int seatIndex);
```

```
NativeDB Introduced: v323
```

Warp a ped into a vehicle.

**Note**: It's better to use [`TASK_ENTER_VEHICLE`](#_0xC20E50AA46D09CA8) with the flag "warp" flag instead of this native.

## Parameters
* **ped**: The Ped to be warped into the vehicle.
* **vehicle**: The target vehicle into which the ped will be warped.
* **seatIndex**: See eSeatPosition declared in [`IS_VEHICLE_SEAT_FREE`](#_0x22AC59A870E6A669).


## Examples

```lua
-- This example creates a vehicle and warps the player into the driver's seat

-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Define the vehicle model and check if it exists in the game files
local modelHash = `adder`  -- Use Compile-time hashes to get the model hash
if not IsModelInCdimage(modelHash) then
    return
end

-- Request the model and wait for it to load
RequestModel(modelHash)  
repeat
    Wait(0)
until HasModelLoaded(modelHash)

-- Create the vehicle at the player's coordinates with a heading of 0.0
local coordsPlayer, heading = GetEntityCoords(playerPed), 0.0
local vehicle = CreateVehicle(modelHash, coordsPlayer, heading, true, false)

-- Define the seat index for the Ped (e.g., -1 for the driver's seat)
local seatIndex = -1  

-- Check if the vehicle exists and the player is alive
if not DoesEntityExist(vehicle) or IsEntityDead(playerPed) then
    return
end

-- Warp the Ped into the specified vehicle seat
TaskWarpPedIntoVehicle(playerPed, vehicle, seatIndex)
```

```js
// This example creates a vehicle and warps the player into the driver's seat

// Retrieve the player ped
const playerPed = PlayerPedId();

// Define the vehicle model and check if it exists in the game files
const modelHash = GetHashKey("adder");
if (!IsModelInCdimage(modelHash)) {
    return;
}

// Request the model and wait for it to load
RequestModel(modelHash);
while (!HasModelLoaded(modelHash)) {
    Wait(0);
}

// Create the vehicle at the player's coordinates with a heading of 0.0
const coordsPlayer = GetEntityCoords(playerPed);
const heading = 0.0;
const vehicle = CreateVehicle(modelHash, coordsPlayer, heading, true, false);

// Define the seat index for the Ped (e.g., -1 for the driver's seat)
const seatIndex = -1;

// Check if the vehicle exists and the player is alive
if (!DoesEntityExist(vehicle) || IsEntityDead(playerPed)) {
    return;
}

// Warp the Ped into the specified vehicle seat
TaskWarpPedIntoVehicle(playerPed, vehicle, seatIndex);
```

```cs
// This example creates a vehicle and warps the player into the driver's seat
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Define the vehicle model and check if it exists in the game files
uint modelHash = (uint)GetHashKey("adder");

if (!IsModelInCdimage(modelHash))
{
    return;
}

// Request the model and wait for it to load
RequestModel(modelHash);
while (!HasModelLoaded(modelHash))
{
    Delay(0);
}

// Create the vehicle at the player's coordinates with a heading of 0.0
Vector3 coordsPlayer = GetEntityCoords(playerPed);
float heading = 0.0f;
Vehicle vehicle = CreateVehicle(modelHash, coordsPlayer, heading, true, false);

// Define the seat index for the Ped (e.g., -1 for the driver's seat)
int seatIndex = -1;

// Check if the vehicle exists and the player is alive
if (!DoesEntityExist(vehicle) || IsEntityDead(playerPed))
{
    return;
}

// Warp the Ped into the specified vehicle seat
TaskWarpPedIntoVehicle(playerPed, vehicle, seatIndex);
```