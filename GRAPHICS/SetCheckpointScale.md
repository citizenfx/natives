---
ns: GRAPHICS
aliases: ["0x4B5B4DA5D79F1943"]
---
## _SET_CHECKPOINT_SCALE

```c
// 0x4B5B4DA5D79F1943 0x80151CCF
void _SET_CHECKPOINT_SCALE(int checkpoint, float p0);
```

```
p0 - Scale? Looks to be a normalized value (0.0 - 1.0)  
offroad_races.c4, line ~67407:  
a_3._f7 = GRAPHICS::CREATE_CHECKPOINT(v_D, v_A, a_4, a_7, v_E, v_F, v_10, sub_62b2(v_A, 220, 255), 0);  
UI::GET_HUD_COLOUR(134, &v_E, &v_F, &v_10, &v_11);  
GRAPHICS::_SET_CHECKPOINT_ICON_RGBA(a_3._f7, v_E, v_F, v_10, sub_62b2(v_A, 70, 210));  
GRAPHICS::_4B5B4DA5D79F1943(a_3._f7, 0.95);  
GRAPHICS::SET_CHECKPOINT_CYLINDER_HEIGHT(a_3._f7, 4.0, 4.0, 100.0);  
```

## Parameters
* **checkpoint**: 
* **p0**: 

