---
ns: PED
aliases: ["_SET_PED_HAIR_COLOR"]
---
## SET_PED_HAIR_TINT

```c
// 0x4CFFC65454C93A49
void SET_PED_HAIR_TINT(Ped ped, int colorID, int highlightColorID);
```

Sets the tint index for the hair on the specified ped.

```
NativeDB Introduced: v323
```

## Parameters
* **ped**: The Ped whose hair tint is to be set.
* **colorID**: The tint index for the primary hair color.
* **highlightColorID**: The tint index for the hair highlight color.

