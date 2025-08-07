---
ns: CAM
---
## GET_CAM_SPLINE_PHASE

```c
// 0xB5349E36C546509A 0x39784DD9
float GET_CAM_SPLINE_PHASE(Cam cam);
```

```
Can use this with SET_CAM_SPLINE_PHASE to set the float it this native returns. Retunrs 1.0 if no nodes have been added
```

## Parameters
* **cam**: 

## Return value
Returns the phase of spline cam progress. Return phase will be between be 0.0 and 1.0