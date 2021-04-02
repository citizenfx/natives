---
ns: HUD
aliases: ["0x7E17BE53E1AAABAF"]
---
## _GET_PAUSE_MENU_SELECTION_DATA

```c
// 0x7E17BE53E1AAABAF 0x6025AA2F
void _GET_PAUSE_MENU_SELECTION_DATA(int* lastItemMenuId, int* selectedItemMenuId, int* selectedItemUniqueId);
```

```
lastItemMenuId: this is the menuID of the last selected item minus 1000 (lastItem.menuID - 1000)
selectedItemMenuId: same as lastItemMenuId except for the currently selected menu item
selectedItemUniqueId: this is uniqueID of the currently selected menu item
when the pausemenu is closed:
lastItemMenuId = -1
selectedItemMenuId = -1
selectedItemUniqueId = 0
when the header gains focus:
lastItemMenuId updates as normal or 0 if the pausemenu was just opened
selectedItemMenuId becomes a unique id for the pausemenu page that focus was taken from (?) or 0 if the pausemenu was just opened
selectedItemUniqueId = -1
when focus is moved from the header to a pausemenu page:
lastItemMenuId becomes a unique id for the pausemenu page that focus was moved to (?)
selectedItemMenuId = -1
selectedItemUniqueId updates as normal
```

## Parameters
* **lastItemMenuId**: 
* **selectedItemMenuId**: 
* **selectedItemUniqueId**: 

