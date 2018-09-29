---
ns: WEAPON
---
## HAS_PED_BEEN_DAMAGED_BY_WEAPON

```c
// 0x2D343D2219CD027A 0xCDFBBCC6
BOOL HAS_PED_BEEN_DAMAGED_BY_WEAPON(Ped ped, Hash weaponHash, int weaponType);
```

```
It determines what weapons caused damage:  
If you want to define only a specific weapon, second parameter=weapon hash code, third parameter=0  
If you want to define any melee weapon, second parameter=0, third parameter=1.  
If you want to identify any weapon (firearms, melee, rockets, etc.), second parameter=0, third parameter=2.  
```

## Parameters
* **ped**: 
* **weaponHash**: 
* **weaponType**: 

## Return value
