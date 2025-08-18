---
ns: VEHICLE
---
## GET_LIVERY_NAME

```c
// 0xB4C7A93837C91A1F 0xED80B5BE
char* GET_LIVERY_NAME(Vehicle vehicle, int liveryIndex);
```

```
Second Param = LiveryIndex  
example   
int count = VEHICLE::GET_VEHICLE_LIVERY_COUNT(veh);  
for (int i = 0; i < count; i++)    
	{  
char* LiveryName = VEHICLE::GET_LIVERY_NAME(veh, i);  
	}  
this example will work fine to fetch all names   
for example for Sanchez we get   
SANC_LV1  
SANC_LV2  
SANC_LV3  
SANC_LV4  
SANC_LV5  
Use _GET_LABEL_TEXT, to get the localized livery name.  
```

NOTE: You may need to set the vehicle's modKit to 0 by using this function [SET_VEHICLE_MOD_KIT](#_0x1F2AA07F00B3217A) before getting the name, otherwise this native may return NULL.

## Parameters
* **vehicle**: 
* **liveryIndex**: 

## Return value
