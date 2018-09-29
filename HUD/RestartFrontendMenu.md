---
ns: HUD
---
## RESTART_FRONTEND_MENU

```c
// 0x10706DC6AD2D49C0 0xB07DAF98
void RESTART_FRONTEND_MENU(Hash menuHash, int p1);
```

```
Before using this native click the native above and look at the decription.  
Example:  
int GetHash = Function.Call<int>(Hash.GET_HASH_KEY, "fe_menu_version_corona_lobby");  
Function.Call(Hash.ACTIVATE_FRONTEND_MENU, GetHash, 0, -1);  
Function.Call(Hash.RESTART_FRONTEND_MENU(GetHash, -1);  
This native refreshes the frontend menu.  
p1 = Hash of Menu  
p2 = Unknown but always works with -1.  
```

## Parameters
* **menuHash**: 
* **p1**: 

