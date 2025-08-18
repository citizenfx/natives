---
ns: VEHICLE
aliases: ["0x1B212B26DD3C04DF"]
---
## SET_OPEN_REAR_DOORS_ON_EXPLOSION

```c
// 0x1B212B26DD3C04DF
void SET_OPEN_REAR_DOORS_ON_EXPLOSION(Vehicle vehicle, BOOL toggle);
```

Enables or disables the opening of a vehicle's rear doors in the event of a sticky bomb explosion. This native is effective for armored vehicles, such as the Stockade (Brinks vehicle), allowing the rear doors to be opened through controlled explosions, which might otherwise remain locked due to the vehicle nature.


## Parameters
* **vehicle**: The vehicle to apply this setting to.
* **toggle**: A boolean value where `true` allows the rear doors to open upon explosion, and `false` prevents them from opening.

## Return value
This native does not return any value.

## Examples
```lua
-- This example disables the rear doors of the vehicle from opening upon explosion.

-- Retrieve the LocalPlayer.
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is currently in. 
local vehicle = GetVehiclePedIsIn(playerPed, false)

-- Check if the vehicle exists in the game world.
if not DoesEntityExist(vehicle) then 
    -- If the vehicle does not exist, end the execution of the code here.
    return 
end

-- Retrieve the model of the vehicle
local modelVehicle = GetEntityModel(vehicle)

-- Retrieve the hash of the Stockade.
local hashStockade = GetHashKey("stockade")

-- Check if the vehicle is a Stockade.
if (modelVehicle == hashStockade) then
    -- Disable the rear doors from opening upon explosion.
    SetOpenRearDoorsOnExplosion(vehicle, true)
end
```

```js
// This example disables the rear doors of the vehicle from opening upon explosion.

// Retrieve the LocalPlayer.
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
const vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle)) {
  // If the vehicle does not exist, end the execution of the code here.
  return;
}

// Retrieve the model of the vehicle.
const modelVehicle = GetEntityModel(vehicle);

// Retrieve the hash of the Stockade.
const hashStockade = GetHashKey("stockade");

// Check if the vehicle is a Stockade.
if (modelVehicle === hashStockade) {
    // Disable the rear doors from opening upon explosion.
    SetOpenRearDoorsOnExplosion(vehicle, true);
}
```

```cs
using static CitizenFX.Core.Native.API;
// This example disables the rear doors of the vehicle from opening upon explosion.

// Retrieve the local ped.
int playerPed = PlayerPedId();

// Retrieve the vehicle the player is currently in.
int vehicle = GetVehiclePedIsIn(playerPed, false);

// Check if the vehicle exists in the game world.
if (!DoesEntityExist(vehicle))
{
    // If the vehicle does not exist, end the execution of the code here.
    return;
}

// Retrieve the model of the vehicle.
uint modelVehicle = (uint)GetEntityModel(vehicle);

// Retrieve the hash of the Stockade.
uint hashStockade = (uint)GetHashKey("stockade");

// Check if the vehicle is a Stockade.
if (modelVehicle == hashStockade) {
    // Disable the rear doors from opening upon explosion.
    SetOpenRearDoorsOnExplosion(vehicle, true);
}
```
