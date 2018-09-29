---
ns: PED
aliases: ["_GET_PED_KILLER"]
---
## GET_PED_SOURCE_OF_DEATH

```c
// 0x93C8B64DEB84728C 0x84ADF9EB
Entity GET_PED_SOURCE_OF_DEATH(Ped ped);
```

```
Returns the Entity (Ped, Vehicle, or ?Object?) that killed the 'ped'  
Is best to check if the Ped is dead before asking for its killer.  
```

## Parameters
* **ped**: 

## Return value
