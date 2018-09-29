---
ns: WEAPON
---
## GET_CURRENT_PED_WEAPON

```c
// 0x3A87E44BB9A01D54 0xB0237302
BOOL GET_CURRENT_PED_WEAPON(Ped ped, Hash* weaponHash, BOOL p2);
```

```
The return value seems to indicate returns true if the hash of the weapon object weapon equals the weapon hash.  
p2 seems to be 1 most of the time.  
p2 is not implemented  
disassembly said that?  
------  
yes on disassembly p2 it seems not implemented i just have:  
bool __fastcall sub_7FF6C56CE684(__int64 a1, _DWORD *a2)  
Found At: 7ff6c56ce684  
```

## Parameters
* **ped**: 
* **weaponHash**: 
* **p2**: 

## Return value
