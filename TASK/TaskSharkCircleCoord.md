---
ns: TASK
---
## TASK_SHARK_CIRCLE_COORD

```c
// 0x60A19CF85FF4CEFA
void TASK_SHARK_CIRCLE_COORD(Ped ped, float x, float y, float z, float moveBlendRatio, float radius);
```

Makes a shark ped circle around specified coordinates.

```
NativeDB Introduced: v3407
```

## Parameters
* **ped**: The shark ped.
* **x**: X coordinate to circle around
* **y**: Y coordinate to circle around
* **z**: Z coordinate to circle around
* **moveBlendRatio**: Animation blend ratio from 0.0 to 1.0
* **radius**: Radius of the circular path in meters

## Examples
```lua
CreateThread(function()
    local sharkModel = GetHashKey("a_c_sharktiger")
    RequestModel(sharkModel)
    
    while not HasModelLoaded(sharkModel) do
        Wait(0)
    end

    local coords = GetEntityCoords(PlayerPedId(), false)
    local shark = CreatePed(28, sharkModel, coords.x, coords.y, coords.z, 0.0, true, true)
    
    SetModelAsNoLongerNeeded(sharkModel)
    
    if shark == 0 then return end
    
    TaskSharkCircleCoord(shark, coords.x, coords.y, coords.z - 5.0, 1.0, 10.0)
    
    Wait(10000) -- We're letting the shark do circle movement for 10 seconds
    ClearPedTasks(shark) -- Going to stop the task
end)
```