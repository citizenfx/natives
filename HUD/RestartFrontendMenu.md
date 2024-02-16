---
ns: HUD
---
## RESTART_FRONTEND_MENU

```c
// 0x10706DC6AD2D49C0 0xB07DAF98
void RESTART_FRONTEND_MENU(Hash menuHash, int highlightedTab);
```

Changes the current frontend menu to the desired frontend menu version.

## Parameters
* **menuHash**: Hash of the frontend menu. See [`ACTIVATE_FRONTEND_MENU`](#_0xEF01D36B9C9D0C7B) for the list of available menus.
* **highlightedTab**: Menu ID (from PauseMenuLUT (in pause_menu_sp_content.gfx files), but the value - 1000) of which tab to have highlighted on the header, or -1.

