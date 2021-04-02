---
ns: VEHICLE
aliases: ["0xC24075310A8B9CD1"]
---
## _SET_HYDRAULIC_WHEEL_STATE_TRANSITION

```c
// 0xC24075310A8B9CD1
void _SET_HYDRAULIC_WHEEL_STATE_TRANSITION(Vehicle vehicle, int wheelId, int state, float value, float p4);
```

```
Sets vehicle wheel hydraulic states transition. Known states:
0 - reset
1 - raise wheel (uses value arg, works just like _SET_VEHICLE_HYDRAULIC_WHEEL_VALUE)
2 - jump using wheel
```

## Parameters
* **vehicle**: 
* **wheelId**: 
* **state**: 
* **value**: 
* **p4**: 

