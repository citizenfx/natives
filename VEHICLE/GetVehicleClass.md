---
ns: VEHICLE
---
## GET_VEHICLE_CLASS

```c
// 0x29439776AAA00A62 0xC025338E
int GET_VEHICLE_CLASS(Vehicle vehicle);
```

```
Returns an int  
Vehicle Classes:  
0: Compacts  
1: Sedans  
2: SUVs  
3: Coupes  
4: Muscle  
5: Sports Classics  
6: Sports  
7: Super  
8: Motorcycles  
9: Off-road  
10: Industrial  
11: Utility  
12: Vans  
13: Cycles  
14: Boats  
15: Helicopters  
16: Planes  
17: Service  
18: Emergency  
19: Military  
20: Commercial  
21: Trains  
22: Open Wheel
char buffer[128];  
std::sprintf(buffer, "VEH_CLASS_%i", VEHICLE::GET_VEHICLE_CLASS(vehicle));  
char* className = UI::_GET_LABEL_TEXT(buffer);  
```

## Parameters
* **vehicle**: 

## Return value
