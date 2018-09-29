---
ns: VEHICLE
---
## GET_MOD_SLOT_NAME

```c
// 0x51F0FEB9F6AE98C0 0x5E113483
char* GET_MOD_SLOT_NAME(Vehicle vehicle, int modType);
```

```
Returns the name for the type of vehicle mod(Armour, engine etc)  
-----------  
for some reason this native seems unreliable: sometimes returns NULL, and when retval != NULL the string can be empty  
```

## Parameters
* **vehicle**: 
* **modType**: 

## Return value
