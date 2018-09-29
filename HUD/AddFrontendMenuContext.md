---
ns: HUD
aliases: ["0xDD564BDD0472C936"]
---
## _ADD_FRONTEND_MENU_CONTEXT

```c
// 0xDD564BDD0472C936 0x9FE8FD5E
void _ADD_FRONTEND_MENU_CONTEXT(Hash hash);
```

```
Seems to add/set the current menu context (to show/hide buttons?)  
Pausemenu.xml:  
<Contexts>*ALL*, DISPLAY_CORONA_BUTTONS, *NONE*, BET_LOCKED, BET_AVAILABLE, SCROLL_OPTION</Contexts>  
Code:  
if (...) {  
    sub_bbd34(a_0, 0, "FM_BET_HELP");  
    UI::_DD564BDD0472C936(${bet_available}); // This native  
    UI::OBJECT_DECAL_TOGGLE(${bet_locked});  
} else {   
    sub_bbd34(a_0, 0, "");  
    UI::OBJECT_DECAL_TOGGLE(${bet_available});  
    UI::_DD564BDD0472C936(${bet_locked}); // This native  
}  
OBJECT_DECAL_TOGGLE seems to remove a context, It also has a hash collision  
// Old  
Scripts do not make this native's purpose clear. However, this native most likely has something to do with decals since in nearly every instance, "OBJECT_DECAL_TOGGLE" is called prior.  
```

## Parameters
* **hash**: 

