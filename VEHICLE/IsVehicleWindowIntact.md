---
ns: VEHICLE
---
## IS_VEHICLE_WINDOW_INTACT

```c
// 0x46E571A0E20D01F1 0xAC4EF23D
BOOL IS_VEHICLE_WINDOW_INTACT(Vehicle vehicle, int windowIndex);
```

This will return false if the window is broken, or rolled down.

windowIndex:  
0 = Front Right Window  
1 = Front Left Window  
2 = Back Right Window  
3 = Back Left Window  

Those numbers go on for vehicles that have more than 4 doors with windows.

## Parameters
* **vehicle**: 
* **windowIndex**: 

## Return value
