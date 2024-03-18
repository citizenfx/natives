---
ns: VEHICLE
aliases: ["0xE6B0E8CFC3633BF0"]
---
## GET_VEHICLE_HOMING_LOCKON_STATE

```c
// 0xE6B0E8CFC3633BF0 0xFBDE9FD8
int GET_VEHICLE_HOMING_LOCKON_STATE(Vehicle vehicle);
```

Checks the lock-on state of homing weapons for the provided vehicle.

```c
enum eHomingLockonState {
    HLOS_NONE = 0, // Homing missiles are not locked on any target.
    HLOS_ACQUIRING = 1, // Homing missiles are currently acquiring a lock on a target.
    HLOS_ACQUIRED = 2 // Homing missiles have successfully locked on a target.
}
```

```
NativeDB Introduced: v323
```

## Parameters
* **vehicle**: The vehicle to check the lock-on state for.

## Return value
Returns the lock-on state as a value of the `eHomingLockonState` enum

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the vehicle the player is in
local playerVehicle = GetVehiclePedIsIn(playerPed, false)

-- The player is not in a vehicle
if playerVehicle == 0 then return end

-- Check the lock-on state of homing weapons for the player's vehicle
local lockonState = GetVehicleHomingLockonState(playerVehicle)

if lockonState == 0 then
    print("Homing missiles are not locked on any target.")
elseif lockonState == 1 then
    print("Homing missiles are currently acquiring a lock on a target.")
elseif lockonState == 2 then
    print("Homing missiles have successfully locked on a target.")
end
```

```javascript
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
const playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle === 0) return; // The player is not in a vehicle

// Check the lock-on state of homing weapons for the player's vehicle
const lockonState = GetVehicleHomingLockonState(playerVehicle);

if (lockonState === 0) {
    console.log("Homing missiles are not locked on any target.");
} else if (lockonState === 1) {
    console.log("Homing missiles are currently acquiring a lock on a target.");
} else if (lockonState === 2) {
    console.log("Homing missiles have successfully locked on a target.");
}
```

```cs
using static CitizenFX.Core.Native.API;

enum eHomingLockonState
{
    None = 0,
    Acquiring = 1,
    Acquired = 2
}

// Retrieve the player ped
Ped playerPed = PlayerPedId();

// Retrieve the vehicle the player is in
Vehicle playerVehicle = GetVehiclePedIsIn(playerPed, false);

if (playerVehicle == 0) return; // The player is not in a vehicle

// Check the lock-on state of homing weapons for the player's vehicle
eHomingLockonState lockonState = (eHomingLockonState)GetVehicleHomingLockonState(playerVehicle);

switch (lockonState)
{
    case eHomingLockonState.None:
        Debug.WriteLine("Homing missiles are not locked on any target.");
        break;
    case eHomingLockonState.Acquiring:
        Debug.WriteLine("Homing missiles are currently acquiring a lock on a target.");
        break;
    case eHomingLockonState.Acquired:
        Debug.WriteLine("Homing missiles have successfully locked on a target.");
        break;
}
```