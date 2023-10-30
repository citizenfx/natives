---
ns: HUD
---
## GIVE_PED_TO_PAUSE_MENU

```c
// 0xAC0BFBDC3BE00E14 0x2AD2C9CE
void GIVE_PED_TO_PAUSE_MENU(Ped ped, int p1);
```

```
p1 is either 1 or 2 in the PC scripts.  
```


This native is used to "give"/duplicate a player ped to a frontend menu as configured via the `ACTIVATE_FRONTEND_MENU` native, you first must utilize the [CLONE_PED](#_0xEF29A16337FACADB) to clone said ped.


## Parameters
* **ped**: 
* **p1**: 

