---
ns: HUD
aliases: ["0x7E17BE53E1AAABAF", "_GET_PAUSE_MENU_SELECTION_DATA"]
---
## GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS

```c
// 0x7E17BE53E1AAABAF 0x6025AA2F
void GET_MENU_LAYOUT_CHANGED_EVENT_DETAILS(int* oldMenuState, int* currentMenuState, int* selectedItemUniqueId);
```

Returns details of the current layout changed event which is triggered from the pause menu scaleform.
Also see [`HAS_MENU_LAYOUT_CHANGE_EVENT_OCCURED`](#_0x2E22FEFA0100275E).

Menu state values can be viewed in [PauseMenuLUT.as](https://gist.github.com/freedy69/19c4be9699e07946285f9b51799b67a9) in scaleform files.
when the pausemenu is closed:
oldMenuState = -1
currentMenuState = -1
selectedItemUniqueId = 0
when the header gains focus:
oldMenuState updates as normal or 0 if the pausemenu was just opened
currentMenuState becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
selectedItemUniqueId = -1
when focus is moved from the header to a pausemenu page:
oldMenuState becomes a unique id for the pausemenu page that focus was moved to (?)
currentMenuState = -1
selectedItemUniqueId updates as normal

## Parameters
* **oldMenuState**: This is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
* **currentMenuState**: Same as oldMenuState except for the currently selected menu item
* **selectedItemUniqueId**: This is uniqueID of the currently selected menu item