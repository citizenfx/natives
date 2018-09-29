---
ns: VEHICLE
aliases: ["0x1FD09E7390A74D54"]
---
## _SET_VEHICLE_LIGHTS_MODE

```c
// 0x1FD09E7390A74D54
void _SET_VEHICLE_LIGHTS_MODE(Vehicle vehicle, int p1);
```

```
p1 can be either 0, 1 or 2.  
Determines how vehicle lights behave when toggled.  
0 = Default (Lights can be toggled between off, normal and high beams)  
1 = Lights Disabled (Lights are fully disabled, cannot be toggled)  
2 = Always On (Lights can be toggled between normal and high beams)  
```

## Parameters
* **vehicle**: 
* **p1**: 

