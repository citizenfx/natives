---
ns: VEHICLE
---
## SET_VEHICLE_TYRE_FIXED

```c
// 0x6E13FC662B882D1D 0xA42EFA6B
void SET_VEHICLE_TYRE_FIXED(Vehicle vehicle, int tyreIndex);
```

```
tyreIndex = 0 to 4 on normal vehicles  
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
* **tyreIndex**: 

