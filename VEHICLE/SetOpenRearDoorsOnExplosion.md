---
ns: VEHICLE
aliases: ["_0x1B212B26DD3C04DF"]
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


## Examples
```lua
-- This example disables the rear doors of the vehicle from opening upon explosion

-- Retrieve the vehicle the player is currently in 
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

-- Check if the vehicle exists
if not DoesEntityExist(vehicle) then return end

-- Retrieve the model of the vehicle
local modelVehicle = GetEntityModel(vehicle)

-- Check if the vehicle is a Stockade
if (modelVehicle == GetHashKey("stockade")) then
    -- Disable the rear doors from opening upon explosion
    SetOpenRearDoorsOnExplosion(vehicle, true)
end
```

```js
// This example disables the rear doors of the vehicle from opening upon explosion

// Retrieve the vehicle the player is currently in
const vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists
if (!DoesEntityExist(vehicle)) return;

// Retrieve the model of the vehicle
const modelVehicle = GetEntityModel(vehicle);

// Check if the vehicle is a Stockade
if (modelVehicle === GetHashKey("stockade")) {
    // Disable the rear doors from opening upon explosion
    SetOpenRearDoorsOnExplosion(vehicle, true);
}
```

```cs
using static CitizenFX.Core.Native.API;
// This example disables the rear doors of the vehicle from opening upon explosion

// Retrieve the vehicle the player is currently in
Vehicle vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

// Check if the vehicle exists
if (!DoesEntityExist(vehicle)) return;

// Retrieve the model of the vehicle
uint modelVehicle = (uint)GetEntityModel(vehicle);

// Check if the vehicle is a Stockade
if (modelVehicle == (uint)GetHashKey("stockade")) {
    // Disable the rear doors from opening upon explosion
    SetOpenRearDoorsOnExplosion(vehicle, true);
}
```