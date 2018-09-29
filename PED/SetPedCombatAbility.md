---
ns: PED
---
## SET_PED_COMBAT_ABILITY

```c
// 0xC7622C0D36B2FDA8 0x6C23D329
void SET_PED_COMBAT_ABILITY(Ped ped, int p1);
```

```
100 would equal attack  
less then 50ish would mean run away  
Only the values 0, 1 and 2 occur in the decompiled scripts. Most likely refers directly to the values also described in combatbehaviour.meta:  
0: CA_Poor  
1: CA_Average  
2: CA_Professional  
Tested this and got the same results as the first explanation here. Could not find any difference between 0, 1 and 2.  
```

## Parameters
* **ped**: 
* **p1**: 

