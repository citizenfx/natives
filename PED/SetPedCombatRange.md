---
ns: PED
---
## SET_PED_COMBAT_RANGE

```c
// 0x3C606747B23E497B 0x8818A959
void SET_PED_COMBAT_RANGE(Ped ped, int range);
```

```
Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described as AttackRange in combatbehaviour.meta:  
0: CR_Near  
1: CR_Medium  
2: CR_Far  
```
Define the scope within which the ped will engage in combat with the target.

## Parameters
* **ped**: Ped index
* **range**: 0, 1 or 2