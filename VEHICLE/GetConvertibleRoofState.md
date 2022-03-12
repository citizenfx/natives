---
ns: VEHICLE
---
## GET_CONVERTIBLE_ROOF_STATE

```c
// 0xF8C397922FC03F41 0x1B09714D
int GET_CONVERTIBLE_ROOF_STATE(Vehicle vehicle);
```

```
enum RoofState
{
     ROOFSTATE_UP = 0;
     ROOFSTATE_LOWERING,
     ROOFSTATE_DOWN,
     ROOFSTATE_RAISING
};
```

Got a "6" return value but not sure about what the value means
6 -> unknown (Stopped but not fully open ?)

## Parameters
* **vehicle**: 

## Return value
