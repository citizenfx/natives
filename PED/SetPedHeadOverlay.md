---
ns: PED
---
## SET_PED_HEAD_OVERLAY

```c
// 0x48F44967FA05CC1E 0xD28DBA90
void SET_PED_HEAD_OVERLAY(Ped ped, int overlayID, int index, float opacity);
```

```
OverlayID ranges from 0 to 12, index from 0 to _GET_NUM_OVERLAY_VALUES(overlayID)-1, and opacity from 0.0 to 1.0.   
overlayID       Part                  Index, to disable  
0               Blemishes             0 - 23, 255  
1               Facial Hair           0 - 28, 255  
2               Eyebrows              0 - 33, 255  
3               Ageing                0 - 14, 255  
4               Makeup                0 - 74, 255  
5               Blush                 0 - 6, 255  
6               Complexion            0 - 11, 255  
7               Sun Damage            0 - 10, 255  
8               Lipstick              0 - 9, 255  
9               Moles/Freckles        0 - 17, 255  
10              Chest Hair            0 - 16, 255  
11              Body Blemishes        0 - 11, 255  
12              Add Body Blemishes    0 - 1, 255  
```

**Note:**

You may need to call [`SetPedHeadBlendData`](#_0x9414E18B9434C2FE) prior to calling this native in order for it to work.

## Parameters
* **ped**: The ped entity
* **overlayID**: The overlay id displayed up above.
* **index**: An integer representing the index (from 0 to `_GET_NUM_OVERLAY_VALUES(overlayID)-1`)
* **opacity**: A float ranging from 0.0 to 1.0

