---
ns: VEHICLE
aliases: ["0x755D6D5267CBBD7E","_ARE_PROPELLERS_UNDAMAGED"]
---
## ARE_PLANE_PROPELLERS_INTACT

```c
// 0x755D6D5267CBBD7E 0xABBDD5C6
BOOL ARE_PLANE_PROPELLERS_INTACT(Vehicle plane);
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
* **plane**: 

## Return value
