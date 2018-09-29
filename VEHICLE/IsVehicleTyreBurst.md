---
ns: VEHICLE
---
## IS_VEHICLE_TYRE_BURST

```c
// 0xBA291848A0815CA9 0x48C80210
BOOL IS_VEHICLE_TYRE_BURST(Vehicle vehicle, int wheelID, BOOL completely);
```

```
wheelID used for 4 wheelers seem to be (0, 1, 4, 5)  
completely - is to check if tire completely gone from rim.  
'0 = wheel_lf / bike, plane or jet front  
'1 = wheel_rf  
'2 = wheel_lm / in 6 wheels trailer, plane or jet is first one on left  
'3 = wheel_rm / in 6 wheels trailer, plane or jet is first one on right  
'4 = wheel_lr / bike rear / in 6 wheels trailer, plane or jet is last one on left  
'5 = wheel_rr / in 6 wheels trailer, plane or jet is last one on right  
'45 = 6 wheels trailer mid wheel left  
'47 = 6 wheels trailer mid wheel right  
```

## Parameters
* **vehicle**: 
* **wheelID**: 
* **completely**: 

## Return value
