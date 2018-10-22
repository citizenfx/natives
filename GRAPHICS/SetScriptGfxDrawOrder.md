---
ns: GRAPHICS
aliases: ["0x61BB1D9B3A95D802","_SET_2D_LAYER","_SET_UI_LAYER"]
---
## SET_SCRIPT_GFX_DRAW_ORDER

```c
// 0x61BB1D9B3A95D802 0xADF81D24
void SET_SCRIPT_GFX_DRAW_ORDER(int order);
```

Sets the draw order for script draw commands.

Examples from decompiled scripts:  

```c
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(7);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 3.0, 3.0, v_4, v_5, v_6, a_0._f172, 0);  
GRAPHICS::SET_SCRIPT_GFX_DRAW_ORDER(1);  
GRAPHICS::DRAW_RECT(0.5, 0.5, 1.5, 1.5, 0, 0, 0, 255, 0);  
```

## Parameters
* **order**: The intended draw order/layer.

