---
ns: PED
---
## SET_CAN_ATTACK_FRIENDLY

```c
// 0xB3B1CB349FF9C75D 0x47C60963
void SET_CAN_ATTACK_FRIENDLY(Ped ped, BOOL toggle, BOOL p2);
```

```
Setting ped to true allows the ped to shoot "friendlies".  
p2 set to true when toggle is also true seams to make peds permanently unable to aim at, even if you set p2 back to false.  
p1 = false & p2 = false for unable to aim at.  
p1 = true & p2 = false for able to aim at.  
```

## Parameters
* **ped**: 
* **toggle**: 
* **p2**: 

