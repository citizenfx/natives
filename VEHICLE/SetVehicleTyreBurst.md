---
ns: VEHICLE
---
## SET_VEHICLE_TYRE_BURST

```c
// 0xEC6A202EE4960385 0x89D28068
void SET_VEHICLE_TYRE_BURST(Vehicle vehicle, int index, BOOL onRim, float p3);
```

```
"To burst tyres VEHICLE::SET_VEHICLE_TYRE_BURST(vehicle, 0, true, 1000.0)  
to burst all tyres type it 8 times where p1 = 0 to 7.  
p3 seems to be how much damage it has taken. 0 doesn't deflate them, 1000 completely deflates them.  
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
* **index**: 
* **onRim**: 
* **p3**: 

