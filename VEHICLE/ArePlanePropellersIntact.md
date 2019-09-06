---
ns: VEHICLE
aliases: ["0x755D6D5267CBBD7E"]
---
## _ARE_PROPELLERS_UNDAMAGED

```c
// 0x755D6D5267CBBD7E 0xABBDD5C6
BOOL _ARE_PROPELLERS_UNDAMAGED(Vehicle vehicle);
```

```
Found this in the decompiled scripts, I'd do more research before changing the name --  
if (!ENTITY::IS_ENTITY_DEAD(l_1911)) {  
    if (!VEHICLE::_755D6D5267CBBD7E(l_1911)) {  
        sub_1ba80("TRAFFICKING AIR: FAILING - PROPELLERS ARE DAMAGED");  
        l_12CE = 9;  
    }  
}  
```

## Parameters
* **vehicle**: 

## Return value
