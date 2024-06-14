---
ns: AUDIO
---
## SET_MICROPHONE_POSITION

```c
// 0xB6AE90EDDE95C762 0xAD7BB191
void SET_MICROPHONE_POSITION(BOOL override, float panningX, float panningY, float panningZ, float x1, float y1, float z1, float x2, float y2, float z2);
```

This native can be utilized to override the primary and secondary listener positions for environment-related audio processing. Changing these positions will have an impact on footstep sounds, vehicle noises, collision sounds, and others.

## Parameters
* **override**: Whether to override microphone positions or not `true`/`false`.
* **panningX**: X-coordinate of the panning position.
* **panningY**: Y-coordinate of the panning position.
* **panningZ**: Z-coordinate of the panning position.
* **x1**: X-coordinate of the position for the primary listener (will increase/decrease volume based on distance).
* **y1**: Y-coordinate of the position for the primary listener (will increase/decrease volume based on distance).
* **z1**: Z-coordinate of the position for the primary listener (will increase/decrease volume based on distance).
* **x2**: X-coordinate of the position for the secondary listener (will increase/decrease volume based on distance).
* **y2**: Y-coordinate of the position for the secondary listener (will increase/decrease volume based on distance).
* **z2**: Z-coordinate of the position for the secondary listener (will increase/decrease volume based on distance).

## Examples
```lua
-- Initialize the offset for adjusting microphone distance
local offsetZ = 0  -- Default offset

-- Command to adjust microphone distance offset
RegisterCommand("micupdist", function(source, args, rawCommand)
    -- Update offset based on the provided argument
    offsetZ = tonumber(args[1])
end)

-- Main thread for updating microphone position
Citizen.CreateThread(function()
    -- Main loop
    while true do
        -- Get the player's ped
        local ped = PlayerPedId()

        -- Get the player's coordinates
        local pedCoords = GetEntityCoords(ped)
        local x2, y2, z2 = pedCoords.x, pedCoords.y, pedCoords.z + offsetZ
        
        -- Update secondary's microphone position (x2, y2, z2)
        SetMicrophonePosition(true, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, x2, y2, z2)
        
        -- Wait for the next frame
        Citizen.Wait(0)
    end
end)
```
