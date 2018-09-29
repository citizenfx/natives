---
ns: WEAPON
---
## IS_PED_ARMED

```c
// 0x475768A975D5AD17 0x0BFC892C
BOOL IS_PED_ARMED(Ped ped, int p1);
```

```
p1 is anywhere from 4 to 7 in the scripts. Might be a weapon wheel group?  
^It's kinda like that.   
7 returns true if you are equipped with any weapon except your fists.  
6 returns true if you are equipped with any weapon except melee weapons.  
5 returns true if you are equipped with any weapon except the Explosives weapon group.  
4 returns true if you are equipped with any weapon except Explosives weapon group AND melee weapons.  
3 returns true if you are equipped with either Explosives or Melee weapons (the exact opposite of 4).  
2 returns true only if you are equipped with any weapon from the Explosives weapon group.  
1 returns true only if you are equipped with any Melee weapon.  
0 never returns true.  
Note: When I say "Explosives weapon group", it does not include the Jerry can and Fire Extinguisher.  
```

## Parameters
* **ped**: 
* **p1**: 

## Return value
