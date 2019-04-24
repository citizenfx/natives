---
ns: HUD
aliases: ["0xF9904D11F1ACBEC3"]
---
## _GET_2D_COORD_FROM_3D_COORD

```c
// 0xF9904D11F1ACBEC3 0xFE9A39F8
BOOL _GET_2D_COORD_FROM_3D_COORD(float worldX, float worldY, float worldZ, float* screenX, float* screenY);
```

```
World to relative screen coords  
this world to screen will keep the text on screen. it will keep it in the screen pos. good for a deer hunting mod  

Was named _GET_SCREEN_COORD_FROM_WORLD_COORD, but this conflicts with 0x34E82F05DF2974F5
As that hash actually matches GET_SCREEN_COORD_FROM_WORLD_COORD that one supercedes and this one was renamed
to _GET_2D_COORD_FROM_3D_COORD
```

## Parameters
* **worldX**: 
* **worldY**: 
* **worldZ**: 
* **screenX**: 
* **screenY**: 

## Return value
