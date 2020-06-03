---
ns: VEHICLE
---
## SET_VEHICLE_DOOR_CONTROL

```c
// 0xF2BFA0430F0A0FCB 0x572DD360
void SET_VEHICLE_DOOR_CONTROL(Vehicle vehicle, int doorIndex, int speed, float angle);
```

```
doorIndex:  
0 = Front Left Door (driver door)  
1 = Front Right Door  
2 = Back Left Door  
3 = Back Right Door  
4 = Hood  
5 = Trunk  
6 = Trunk2
```

## Parameters
* **vehicle**: 
* **doorIndex**: 
* **speed**: 5 is fast, 1 is slow 3 is medium
* **angle**: 

