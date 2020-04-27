---
ns: VEHICLE
---
## SET_VEHICLE_DAMAGE

```c
// 0xA1DD317EA8FD4F29 0x21B458B2
void SET_VEHICLE_DAMAGE(Vehicle vehicle, float xOffset, float yOffset, float zOffset, float damage, float radius, BOOL focusOnModel);
```

```
Apply damage to vehicle at a location. Location is relative to vehicle model (not world).  
Radius of effect damage applied in a sphere at impact location.
The last parameter, FocusOnModel is a boolean. At true your damage vector will travel until it hits the body of the car,
at false, it can hit nothing. 
For exemple :
  // for an average sized car 
  SetVehicleDamage(vehicle, 0.0, -.0, 0.33, 200.0, 100.0, false) // nothing will be hit
  SetVehicleDamage(vehicle, 0.0, -.0, 0.33, 200.0, 100.0, true) // will hit the first hitbox on your Z index line

It's recommended to set the boolean to true if you absolutely want to hit your car   
```

## Parameters
* **vehicle**: 
* **xOffset**: 
* **yOffset**: 
* **zOffset**: 
* **damage**: 
* **radius**: 
* **focusOnModel**: 

