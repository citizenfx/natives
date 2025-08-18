---
ns: VEHICLE
aliases: ["0xF78F94D60248C737"]
---
## ARE_PLANE_CONTROL_PANELS_INTACT

```c
// 0xF78F94D60248C737 0x3B51B348
BOOL ARE_PLANE_CONTROL_PANELS_INTACT(Vehicle vehicle, BOOL checkForZeroHealth);
```

Queries whether the control panels of a plane are intact. This native is used to determine the operational status of a plane's cockpit controls, which can affect the plane's flyability.

## Parameters
* **vehicle**: The vehicle to check. This should be a plane.
* **checkForZeroHealth**: If set to `true`, the native also checks if the plane's health is zero, indicating it is completely destroyed. If `false`, only the state of the control panels is considered.

## Return value
Returns `true` if the plane's control panels are intact, and, depending on the `checkForZeroHealth` parameter, the plane is not completely destroyed. Returns `false` if the control panels are damaged or the plane is destroyed (when `checkForZeroHealth` is `true`).

## Examples
```lua
-- Retrieve the player ped
local playerPed = PlayerPedId()

-- Retrieve the plane the player is currently in.
local plane = GetVehiclePedIsIn(playerPed, false)

-- If the player is not in a plane, return
if (plane == 0) or (not IsThisModelAPlane(GetEntityModel(plane))) then return end

-- Check if the plane's control panels are intact
local controlPanelsIntact = ArePlaneControlPanelsIntact(plane, true)

if (controlPanelsIntact) then
    print("The plane's control panels are intact")
else
    print("The plane's control panels are damaged or the plane is destroyed")
end
```

```js
// Retrieve the player ped
const playerPed = PlayerPedId();

// Retrieve the plane the player is currently in.
const plane = GetVehiclePedIsIn(playerPed, false);

// If the player is not in a plane, return
if (plane === 0 || !IsThisModelAPlane(GetEntityModel(plane))) return;

// Check if the plane's control panels are intact
const controlPanelsIntact = ArePlaneControlPanelsIntact(plane, true);

if (controlPanelsIntact) {
    console.log("The plane's control panels are intact");
} else {
    console.log("The plane's control panels are damaged or the plane is destroyed");
}
```

```cs
using static CitizenFX.Core.Native.API;

// Retrieve the player ped
int playerPed = PlayerPedId();

// Retrieve the plane the player is currently flying
int plane = GetVehiclePedIsIn(playerPed, false);

// If the player is not flying a plane, return
if (plane == 0 || !IsThisModelAPlane(GetEntityModel(plane))) return;

// Check if the plane's control panels are intact
bool controlPanelsIntact = ArePlaneControlPanelsIntact(plane, true);

if (controlPanelsIntact) {
    Debug.WriteLine("The plane's control panels are intact");
} else {
    Debug.WriteLine("The plane's control panels are damaged or the plane is destroyed");
}
```
