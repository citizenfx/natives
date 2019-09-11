---
ns: GRAPHICS
aliases: ["0x6DD8F5AA635EB4B2"]
---
## _GET_SCRIPT_GFX_POSITION

```c
// 0x6DD8F5AA635EB4B2
void _GET_SCRIPT_GFX_POSITION(float p0, float p1, float* p2, float* p3);
```

Calculates the effective X/Y fractions when applying the values set by `SET_SCRIPT_GFX_ALIGN` and
`SET_SCRIPT_GFX_ALIGN_PARAMS`.

## Parameters
* **p0**:
* **p1**:
* **p2**:
* **p3**:

## Examples
```lua
local calcX, calcX = GetScriptGfxPosition(0.2, 0.2)
```
