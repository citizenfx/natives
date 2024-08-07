---
ns: GRAPHICS
aliases: ["0xD9454B5752C857DC"]
---
## SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME

```c
// 0xD9454B5752C857DC 0xEAB6417C
void SET_DISABLE_PETROL_DECALS_IGNITING_THIS_FRAME();
```

Prevents gas / petrol decals (aka gas / petrol trails and puddles) to be ignited on fire during the frame in which the native is called.

**Note**: This native needs to be called every frame to prevent ignition.

## Examples
```lua
Citizen.CreateThread(function()
    while true do
        SetDisablePetrolDecalsIgnitingThisFrame()
        Citizen.Wait(0)
    end
end)
```
