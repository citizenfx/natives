---
ns: HUD
---
## ACTIVATE_FRONTEND_MENU

```c
// 0xEF01D36B9C9D0C7B 0x01D83872
void ACTIVATE_FRONTEND_MENU(Hash menuhash, BOOL togglePause, int component);
```

```
Does stuff like this:  
gyazo.com/7fcb78ea3520e3dbc5b2c0c0f3712617  
Example:  
int GetHash = GET_HASH_KEY("fe_menu_version_corona_lobby");  
ACTIVATE_FRONTEND_MENU(GetHash, 0, -1);  
BOOL p1 is a toggle to define the game in pause.  
int p2 is unknown but -1 always works, not sure why though.  
[30/03/2017] ins1de :  
the int p2 is actually a component variable. When the pause menu is visible, it opens the tab related to it.  
Example : Function.Call(Hash.ACTIVATE_FRONTEND_MENU,-1171018317, 0, 42);  
Result : Opens the "Online" tab without pausing the menu, with -1 it opens the map.  
```

## Parameters
* **menuhash**: 
* **togglePause**: 
* **component**: 

