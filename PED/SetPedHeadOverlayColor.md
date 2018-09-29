---
ns: PED
---
## _SET_PED_HEAD_OVERLAY_COLOR

```c
// 0x497BF74A7B9CB952
void _SET_PED_HEAD_OVERLAY_COLOR(Ped ped, int overlayID, int colorType, int colorID, int secondColorID);
```

```
Used for freemode (online) characters.  
ColorType is 1 for eyebrows, beards, and chest hair; 2 for blush and lipstick; and 0 otherwise, though not called in those cases.  
Called after SET_PED_HEAD_OVERLAY().  
```

## Parameters
* **ped**: 
* **overlayID**: 
* **colorType**: 
* **colorID**: 
* **secondColorID**: 

