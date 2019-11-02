---
ns: GRAPHICS
aliases: ["0x6DD8F5AA635EB4B2"]
---
## _GET_SCRIPT_GFX_POSITION

```c
// 0x6DD8F5AA635EB4B2
void _GET_SCRIPT_GFX_POSITION(float x, float y, float* calculatedX, float* calculatedY);
```

Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
`SET_SCRIPT_GFX_ALIGN_PARAMS`.

## Parameters
* **x**: The input X coordinate.
* **y**: The input Y coordinate.
* **calculatedX**: A pointer to the calculated X value.
* **calculatedY**: A pointer to the calculated Y value.

## Examples
```lua
local calcX, calcX = GetScriptGfxPosition(0.2, 0.2)
```

