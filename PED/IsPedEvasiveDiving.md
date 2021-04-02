---
ns: PED
---
## IS_PED_EVASIVE_DIVING

```c
// 0x414641C26E105898 0xD82829DC
BOOL IS_PED_EVASIVE_DIVING(Ped ped, Entity* evadingEntity);
```

```
Presumably returns the Entity that the Ped is currently diving out of the way of.
var num3;
    if (PED::IS_PED_EVASIVE_DIVING(A_0, &num3) != 0)
        if (ENTITY::IS_ENTITY_A_VEHICLE(num3) != 0)
```

## Parameters
* **ped**: 
* **evadingEntity**: 

## Return value
