---
ns: VEHICLE
---
## SET_HELI_BLADES_FULL_SPEED

```c
// 0xA178472EBB8AE60D 0x033A9408
void SET_HELI_BLADES_FULL_SPEED(Vehicle vehicle);
```

Sets the speed of the helicopter blades to full speed.
Equivalent of `SET_HELI_BLADES_SPEED(vehicleHandle, 1.0f);`.
  
Works with planes too.

## Parameters
* **vehicle**: The helicopter or the plane
