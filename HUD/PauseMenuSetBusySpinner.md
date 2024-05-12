---
ns: HUD
aliases: ["0xC78E239AC5B2DDB9"]
---
## PAUSE_MENU_SET_BUSY_SPINNER

```c
// 0xC78E239AC5B2DDB9 0x6C67131A
void PAUSE_MENU_SET_BUSY_SPINNER(BOOL set, int column, int index);
```

Sets a loading icon in the pause menu.

## Parameters
* **set**: Sets or removes this spinner.
* **column**: Location of this spinner (0 - 17).
* **index**: Index of this spinner. Can have max 3 spinners at time.

