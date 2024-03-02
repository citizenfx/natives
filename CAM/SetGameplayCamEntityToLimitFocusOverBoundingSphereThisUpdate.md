---
ns: CAM
aliases: ["0xFD3151CD37EA2245"]
---
## SET_GAMEPLAY_CAM_ENTITY_TO_LIMIT_FOCUS_OVER_BOUNDING_SPHERE_THIS_UPDATE

```c
// 0xFD3151CD37EA2245
void SET_GAMEPLAY_CAM_ENTITY_TO_LIMIT_FOCUS_OVER_BOUNDING_SPHERE_THIS_UPDATE(Entity entity);
```

Limits the gameplay camera's adaptive depth of field focus distance to not exceed the bounding sphere of a specified entity, effective for the current game update only. This constraint applies when the camera is aimed at the entity.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity whose bounding sphere is used to limit the gameplay camera's focus distance.

## Examples
```lua
-- Limit the gameplay camera's focus distance to the bounding sphere of the player's vehicle for this frame.
Citizen.CreateThread(function()
    local playerPed, vehicle
    while true do
        Wait(0)
        playerPed = PlayerPedId() -- Get the player's ped.
        vehicle = GetVehiclePedIsIn(playerPed, false) -- Get the vehicle the player is in.
        if (vehicle ~= 0) then
            SetGameplayCamEntityToLimitFocusOverBoundingSphereThisUpdate(vehicle)
        end
    end
end)
```

```js
let playerPed, vehicle;
setInterval(() => {
    // Limit the gameplay camera's focus distance to the bounding sphere of the player's vehicle for this frame.
    playerPed = PlayerPedId(); // Get the player's ped.
    vehicle = GetVehiclePedIsIn(playerPed, false); // Get the vehicle the player is in.
    if (vehicle !== 0) {
        SetGameplayCamEntityToLimitFocusOverBoundingSphereThisUpdate(vehicle);
    }
});
```