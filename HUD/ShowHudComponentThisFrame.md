---
ns: HUD
---
## SHOW_HUD_COMPONENT_THIS_FRAME

```c
// 0x0B4DF1FA60C0E664 0x95E1546E
void SHOW_HUD_COMPONENT_THIS_FRAME(int id);
```

```
This function shows various HUD (Heads-up Display) components. 

Listed below are the integers and the corresponding HUD component.
- 1 : Wanted Level Stars
- 2 : Weapon Ammunition Amount
- 3 : Cash Amount
- 4 : Bank Amount
- 6 : Vehicle Name
- 7 : Location Name
- 8 : Vehicle Class
- 9 : Street Name
- 13 : Cash Change 
- 17 : Save Game
- 20 : Weapon Statistics 

These integers also work for the HIDE_HUD_COMPONENT_THIS_FRAME(); native, but instead hide the HUD component.
```

## Parameters
* **id**: 

