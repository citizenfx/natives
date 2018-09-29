---
ns: VEHICLE
---
## SET_VEHICLE_DOOR_BROKEN

```c
// 0xD4D4F6A4AB575A33 0x8147FEA7
void SET_VEHICLE_DOOR_BROKEN(Vehicle vehicle, int doorIndex, BOOL deleteDoor);
```

```
doorIndex:  
0 = Front Right Door  
1 = Front Left Door  
2 = Back Right Door  
3 = Back Left Door  
4 = Hood  
5 = Trunk  
Changed last paramater from CreateDoorObject To NoDoorOnTheFloor because when on false, the door object is created,and not created when on true...the former parameter name was counter intuitive...(by Calderon)  
```

## Parameters
* **vehicle**: 
* **doorIndex**: 
* **deleteDoor**: 

