---
ns: VEHICLE
---
## SET_VEHICLE_DOORS_LOCKED

```c
// 0xB664292EAECF7FA6 0x4CDD35D0
void SET_VEHICLE_DOORS_LOCKED(Vehicle vehicle, int doorLockStatus);
```

Locks the doors of a specified vehicle to a defined lock state, affecting how players and NPCs can interact with the vehicle.

```
NativeDB Introduced: v323
```

```c
enum eVehicleLockState {
    // No specific lock state, vehicle behaves according to the game's default settings.
    VEHICLELOCK_NONE = 0,
    // Vehicle is fully unlocked, allowing free entry by players and NPCs.
    VEHICLELOCK_UNLOCKED = 1,
    // Vehicle is locked, preventing entry by players and NPCs.
    VEHICLELOCK_LOCKED = 2,
    // Vehicle locks out only players, allowing NPCs to enter.
    VEHICLELOCK_LOCKOUT_PLAYER_ONLY = 3,
    // Vehicle is locked once a player enters, preventing others from entering.
    VEHICLELOCK_LOCKED_PLAYER_INSIDE = 4,
    // Vehicle starts in a locked state, but may be unlocked through game events.
    VEHICLELOCK_LOCKED_INITIALLY = 5,
    // Forces the vehicle's doors to shut and lock.
    VEHICLELOCK_FORCE_SHUT_DOORS = 6,
    // Vehicle is locked but can still be damaged.
    VEHICLELOCK_LOCKED_BUT_CAN_BE_DAMAGED = 7,
    // Vehicle is locked, but its trunk/boot remains unlocked.
    VEHICLELOCK_LOCKED_BUT_BOOT_UNLOCKED = 8,
    // Vehicle is locked and does not allow passengers, except for the driver.
    VEHICLELOCK_LOCKED_NO_PASSENGERS = 9,
    // Vehicle is completely locked, preventing entry entirely, even if previously inside.
    VEHICLELOCK_CANNOT_ENTER = 10 
};

```

## Parameters
* **vehicle**: The vehicle whose doors are to be locked.
* **doorLockStatus**: The lock state to apply to the vehicle's doors, see `eVehicleLockState`.

## Examples
```lua
-- Command to lock the car of the player for everyone.
RegisterCommand("lockcar", function()
    local playerPed = PlayerPedId() -- Get the player ped
    local vehicle = GetVehiclePedIsIn(playerPed, false) -- Get the vehicle the player is in
    if (vehicle == 0) then return end -- If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 2) -- Lock the doors of the vehicle
end, false)

-- Command to unlock the car of the player for everyone.
RegisterCommand("unlockcar", function()
    local playerPed = PlayerPedId() -- Get the player ped
    local vehicle = GetVehiclePedIsIn(playerPed, false) -- Get the vehicle the player is in
    if (vehicle == 0) then return end -- If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 1) -- Unlock the doors of the vehicle
end, false)
```

```js
// Command to lock the car of the player for everyone.
RegisterCommand("lockcar", () => {
    const playerPed = PlayerPedId(); // Get the player ped
    const vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle the player is in
    if (vehicle === 0) return; // If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 2); // Lock the doors of the vehicle
}, false);

// Command to unlock the car of the player for everyone.
RegisterCommand("unlockcar", () => {
    const playerPed = PlayerPedId(); // Get the player ped
    const vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle the player is in
    if (vehicle === 0) return; // If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 1); // Unlock the doors of the vehicle
}, false);
```

```cs
using static CitizenFX.Core.Native.API;

// Command to lock the car of the player for everyone.
RegisterCommand("lockcar", () => {
    int playerPed = PlayerPedId(); // Get the player ped
    int vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle the player is in
    if (vehicle == 0) return; // If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 2); // Lock the doors of the vehicle
}, false);

// Command to unlock the car of the player for everyone.
RegisterCommand("unlockcar", () => {
    int playerPed = PlayerPedId(); // Get the player ped
    int vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle the player is in
    if (vehicle == 0) return; // If the player is not in a vehicle, return
    SetVehicleDoorsLocked(vehicle, 1); // Unlock the doors of the vehicle
}, false);
```
