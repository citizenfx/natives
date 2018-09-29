---
ns: VEHICLE
---
## IS_COP_VEHICLE_IN_AREA_3D

```c
// 0x7EEF65D5F153E26A 0xFB16C6D1
BOOL IS_COP_VEHICLE_IN_AREA_3D(float x1, float x2, float y1, float y2, float z1, float z2);
```

```
Usage:  
public bool isCopInRange(Vector3 Location, float Range)  
        {  
            return Function.Call<bool>(Hash.IS_COP_PED_IN_AREA_3D, Location.X - Range, Location.Y - Range, Location.Z - Range, Location.X + Range, Location.Y + Range, Location.Z + Range);  
        }  
```

## Parameters
* **x1**: 
* **x2**: 
* **y1**: 
* **y2**: 
* **z1**: 
* **z2**: 

## Return value
