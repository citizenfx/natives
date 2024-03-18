---
ns: AUDIO
aliases: ["0x8BF907833BE275DE"]
---
## SET_PED_INTERIOR_WALLA_DENSITY

```c
// 0x8BF907833BE275DE 0x2CD26D69
void SET_PED_INTERIOR_WALLA_DENSITY(float density, float applyValue);
```

Overrides the calculated ped density that is used to modulate the ambient ped walla sounds (in interiors only)

If you want use this for exteriors use [SET_PED_WALLA_DENSITY](#_0x149AEE66F0CB3A99)

## Parameters
* **density**: desired walla density
* **applyValue**: how much the desired density affects the actual one

