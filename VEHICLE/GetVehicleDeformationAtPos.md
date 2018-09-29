---
ns: VEHICLE
---
## GET_VEHICLE_DEFORMATION_AT_POS

```c
// 0x4EC6CFBC7B2E9536 0xABF02075
Vector3 GET_VEHICLE_DEFORMATION_AT_POS(Vehicle vehicle, float offsetX, float offsetY, float offsetZ);
```

```
The only example I can find of this function in the scripts, is this:  
struct _s = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(rPtr((A_0) + 4), 1.21f, 6.15f, 0.3f);  
-----------------------------------------------------------------------------------------------------------------------------------------  
PC scripts:  
v_5/*{3}*/ = VEHICLE::GET_VEHICLE_DEFORMATION_AT_POS(a_0._f1, 1.21, 6.15, 0.3);  
```

## Parameters
* **vehicle**: 
* **offsetX**: 
* **offsetY**: 
* **offsetZ**: 

## Return value
