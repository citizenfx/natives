---
ns: HUD
aliases: ["0xC78E239AC5B2DDB9"]
---
## PAUSE_MENU_SET_BUSY_SPINNER

```c
// 0xC78E239AC5B2DDB9 0x6C67131A
void PAUSE_MENU_SET_BUSY_SPINNER(BOOL bVisible, int iColumnID, int iSpinnerIndex);
```

Sets a loading icon in the pause menu.

## Parameters
* **bVisible**: Sets or removes this spinner.
* **iColumnID**: Location of this spinner (0 - 17). Indexes can be found in `common:\data\ui\frontend.xml`, `PauseMenu\PersistentData\Spinner\Offsets`. If `bVisible` is `false`, this will be ignored.
* **iSpinnerIndex**: Index of this spinner. Can have a maximum of three spinners at a time.

