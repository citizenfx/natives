---
ns: ENTITY
---
## SET_ENTITY_ROTATION

```c
// 0x8524A8B0171D5E07 0x0A345EFE
void SET_ENTITY_ROTATION(Entity entity, float pitch, float roll, float yaw, int rotationOrder, BOOL bDeadCheck);
```

Sets the rotation of a specified entity in the game world.

```
NativeDB Introduced: v323
```

## Parameters
* **entity**: The entity to rotate.
* **pitch**: The pitch (X-axis) rotation in degrees.
* **roll**: The roll (Y-axis) rotation in degrees.
* **yaw**: The yaw (Z-axis) rotation in degrees.
* **rotationOrder**: Specifies the order in which yaw, pitch, and roll are applied, see [`GET_ENTITY_ROTATION`](#_0xAFBD61CC738D9EB9) for the available rotation orders.
* **bDeadCheck**: Usually set to `true`. Determines whether to check if the entity is dead before applying the rotation.

## Examples
```lua
-- Example of rotating a vehicle 360 degrees
RegisterCommand('360', function()
    local playerPed = PlayerPedId() -- Get the player's Ped
    local vehicle = GetVehiclePedIsIn(playerPed, false) -- Get the vehicle the player is currently in.
    if not vehicle or not DoesEntityExist(vehicle) then
        print("You are not in a vehicle")
        return
    end
    
    local rot = GetEntityRotation(vehicle, 2)
    local roll, pitch, yaw = rot.x, rot.y, rot.z
    local finalYaw = yaw + 360
    local steps = 20 -- Reduced the number of steps so each rotation is larger
    -- Function to perform the rotation gradually
    local function doRotation()
        local currentYaw = yaw
        -- Loop to adjust the rotation in steps
        for i = 1, steps do
            Citizen.Wait(20) -- Increases the delay between each adjustment to make the animation slower
            currentYaw = currentYaw + (360 / steps) -- Increments the rotation
            if currentYaw >= finalYaw then
                currentYaw = finalYaw
            end
            -- Apply the current rotation
            SetEntityRotation(vehicle, roll, pitch, currentYaw % 360, 2, true)
            if currentYaw == finalYaw then
                break -- Stops the loop once the rotation is complete
            end
        end
    end
    -- Execute the rotation in a coroutine to not block the main thread
    Citizen.CreateThread(doRotation)
end, false)
```
