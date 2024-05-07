---
ns: INTERIOR
aliases: ["0xA97F257D0151A6AB","_HIDE_MAP_OBJECT_THIS_FRAME"]
---
## ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME

```c
// 0xA97F257D0151A6AB 0x1F375B4C
void ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME(Hash mapObjectHash);
```

Culls exterior objects from rendering (G-buffer only) based on the model name hash. Primarily used in multiplayer apartments to hide the exterior shell of buildings. This native needs to be called every frame.

```
NativeDB Introduced: v323
```

## Parameters
* **mapObjectHash**: The hash of the model name to cull

## Examples
```lua
CreateThread(function()
    local buildingTopHash = GetHashKey("hei_kt1_08_buildingtop_a")
    local emissiveHash = GetHashKey("hei_kt1_08_kt1_emissive_ema")
    while (true) do
        EnableExteriorCullModelThisFrame(buildingTopHash)
        EnableExteriorCullModelThisFrame(emissiveHash)
        Wait(0)
    end
end)
```
```javascript
const buildingTopHash = GetHashKey("hei_kt1_08_buildingtop_a");
const emissiveHash = GetHashKey("hei_kt1_08_kt1_emissive_ema");

setTick(() => {
    EnableExteriorCullModelThisFrame(buildingTopHash);
    EnableExteriorCullModelThisFrame(emissiveHash);
});
```