---
ns: VEHICLE
---
## GET_CONVERTIBLE_ROOF_STATE

```c
// 0xF8C397922FC03F41 0x1B09714D
int GET_CONVERTIBLE_ROOF_STATE(Vehicle vehicle);
```

```
0 -> up  
1 -> lowering down  
2 -> down  
3 -> raising up  
enum RoofState  
{  
     ROOFSTATE_UP = 0;  
     ROOFSTATE_LOWERING,  
     ROOFSTATE_DOWN,  
     ROOFSTATE_RAISING  
};  
```

## Parameters
* **vehicle**: 

## Return value
