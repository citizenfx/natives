---
ns: TASK
---
## TASK_VEHICLE_HELI_PROTECT

```c
// 0x1E09C32048FEFD1C 0x0CB415EE
void TASK_VEHICLE_HELI_PROTECT(Ped pilot, Vehicle vehicle, Entity entityToFollow, float targetSpeed, int p4, float radius, int altitude, int p7);
```

```
pilot, vehicle and altitude are rather self-explanatory.  
p4: is unused variable in the function.  
entityToFollow: you can provide a Vehicle entity or a Ped entity, the heli will protect them.  
'targetSpeed':  The pilot will dip the nose AS MUCH AS POSSIBLE so as to reach this value AS FAST AS POSSIBLE.  As such, you'll want to modulate it as opposed to calling it via a hard-wired, constant #.  
'radius' isn't just "stop within radius of X of target" like with ground vehicles.  In this case, the pilot will fly an entire circle around 'radius' and continue to do so.  
NOT CONFIRMED:  p7 appears to be a FlyingStyle enum.  Still investigating it as of this writing, but playing around with values here appears to result in different -behavior- as opposed to offsetting coordinates, altitude, target speed, etc.  
NOTE: If the pilot finds enemies, it will engage them until it kills them, but will return to protect the ped/vehicle given shortly thereafter.  
```

## Parameters
* **pilot**: 
* **vehicle**: 
* **entityToFollow**: 
* **targetSpeed**: 
* **p4**: 
* **radius**: 
* **altitude**: 
* **p7**: 

