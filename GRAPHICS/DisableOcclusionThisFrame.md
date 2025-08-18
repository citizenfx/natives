---
ns: GRAPHICS
aliases: ["0x3669F1B198DCAA4F"]
---
## DISABLE_OCCLUSION_THIS_FRAME

```c
// 0x3669F1B198DCAA4F 0x0DCC0B8B
void DISABLE_OCCLUSION_THIS_FRAME();
```

This disables all occluders that cause the 'flickering' rendering under the map and inside buildings with no interiors, note that this may impact performance on lower end systems.

## Examples
```lua
-- Example thread that has to run every frame
Citizen.CreateThread(function()
  while true do
    DisableOcclusionThisFrame()
    Citizen.Wait(0)
  end
end)
```
