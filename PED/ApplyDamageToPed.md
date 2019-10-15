---
ns: PED
---
## APPLY_DAMAGE_TO_PED

```c
// 0x697157CED63F18D4 0x4DC27FCF
void APPLY_DAMAGE_TO_PED(Ped ped, int damageAmount, BOOL armorFirst);
```

```
damages a ped with the given amount  
----  
armorFirst means it will damage/lower the armor first before damaging the player.  
setting damageAmount to a negative amount will cause the player or the armor (depending on armorFirst) to be healed by damageAmount instead.  
```

```
NativeDB Added Parameter 4: Any p3
```

## Parameters
* **ped**: 
* **damageAmount**: 
* **armorFirst**: 

