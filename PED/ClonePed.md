---
ns: PED
---
## CLONE_PED

```c
// 0xEF29A16337FACADB 0x8C8A8D6E
Ped CLONE_PED(Ped ped, float heading, BOOL isNetwork, BOOL thisScriptCheck);
```

```
thisScriptCheck - can be destroyed if it belongs to the calling script.  
Example of Cloning Your Player:  
CLONE_PED(PLAYER_PED_ID(), GET_ENTITY_HEADING(PLAYER_PED_ID()), 0, 1);  
```

## Parameters
* **ped**: 
* **heading**: 
* **isNetwork**: 
* **thisScriptCheck**: 

## Return value
