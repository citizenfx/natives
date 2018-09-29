---
ns: VEHICLE
---
## SET_VEHICLE_MOD_KIT

```c
// 0x1F2AA07F00B3217A 0xB8132158
void SET_VEHICLE_MOD_KIT(Vehicle vehicle, int modKit);
```

```
Set modKit to 0 if you plan to call SET_VEHICLE_MOD. That's what the game does. Most body modifications through SET_VEHICLE_MOD will not take effect until this is set to 0.  
---------  
Setting the modKit to 0 also seems to load some livery related vehicle information. For example, using GET_LIVERY_NAME() will return NULL if you haven't set the modKit to 0 in advance. As soon as you set it to 0, GET_LIVERY_NAME() will work properly.  
```

## Parameters
* **vehicle**: 
* **modKit**: 

