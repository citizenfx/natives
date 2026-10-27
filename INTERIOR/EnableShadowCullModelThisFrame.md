---
ns: INTERIOR
aliases: ["0x50C375537449F369", "_ENABLE_SCRIPT_CULL_MODEL_THIS_FRAME"]
---
## ENABLE_SHADOW_CULL_MODEL_THIS_FRAME

```c
// 0x50C375537449F369
void ENABLE_SHADOW_CULL_MODEL_THIS_FRAME(cs_type(Any) Hash mapObjectHash);
```

Culls exterior objects from rendering (cascade shadows only) based on the model name hash. Primarily used in multiplayer apartments to hide the exterior structure of buildings. This native needs to be called every frame and is generally used with [`ENABLE_EXTERIOR_CULL_MODEL_THIS_FRAME`](#_0xA97F257D0151A6AB).

```
NativeDB Introduced: v323
```

## Parameters
* **mapObjectHash**: The hash of the model name to cull from shadow rendering.

## Examples
```lua
CreateThread(function()
    local buildingTopHash = GetHashKey("hei_kt1_08_buildingtop_a")
    local emissiveHash = GetHashKey("hei_kt1_08_kt1_emissive_ema")
    while (true) do
        -- hei_kt1_08_buildingtop_a
        EnableExteriorCullModelThisFrame(buildingTopHash)
        EnableShadowCullModelThisFrame(buildingTopHash)
        -- hei_kt1_08_kt1_emissive_ema
        EnableExteriorCullModelThisFrame(emissiveHash)
        EnableShadowCullModelThisFrame(emissiveHash)
        
        Wait(0)
    end
end)
```
```javascript
const buildingTopHash = GetHashKey("hei_kt1_08_buildingtop_a");
const emissiveHash = GetHashKey("hei_kt1_08_kt1_emissive_ema");

setTick(() => {
    // hei_kt1_08_buildingtop_a
    EnableExteriorCullModelThisFrame(buildingTopHash);
    EnableShadowCullModelThisFrame(buildingTopHash);
    // hei_kt1_08_kt1_emissive_ema
    EnableExteriorCullModelThisFrame(emissiveHash);
    EnableShadowCullModelThisFrame(emissiveHash);
});
```