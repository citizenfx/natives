---
ns: AUDIO
aliases: ["0x149AEE66F0CB3A99"]
---
## SET_PED_WALLA_DENSITY

```c
// 0x149AEE66F0CB3A99 0xE64F97A0
void SET_PED_WALLA_DENSITY(float density, float applyValue);
```

Overrides the calculated ped density that is used to modulate the ambient ped walla sounds (in exteriors only)

If you want to use this for interiors, use [SET_PED_INTERIOR_WALLA_DENSITY](#_0x8BF907833BE275DE)

## Parameters
* **density**: desired walla density
* **applyValue**: how much the desired density affects the actual one

