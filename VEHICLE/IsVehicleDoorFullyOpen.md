---
ns: VEHICLE
---
## IS_VEHICLE_DOOR_FULLY_OPEN

```c
// 0x3E933CFF7B111C22 0xC2385B6F
BOOL IS_VEHICLE_DOOR_FULLY_OPEN(Vehicle vehicle, int doorIndex);
```

doorIndex:
0 = Front Left Door  
1 = Front Right Door  
2 = Back Left Door  
3 = Back Right Door  
4 = Hood  
5 = Trunk  
6 = Trunk2  


## Parameters
* **vehicle**: The vehicle to check.
* **doorIndex**: The index of the door to check.

## Return value
A bool indiciating if the specified door is fully open on the specified vehicle.