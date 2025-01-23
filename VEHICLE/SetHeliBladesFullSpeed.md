---
ns: VEHICLE
---
## SET_HELI_BLADES_FULL_SPEED

```c
// 0xA178472EBB8AE60D 0x033A9408
void SET_HELI_BLADES_FULL_SPEED(Vehicle vehicle);
```

Despite its name, this works on Helicopters and Planes.

Sets the speed of the helicopter blades to full speed.

This is equivalent to calling `SetHeliBladesSpeed(vehicleHandle, 1.0);`

## Parameters
* **vehicle**: The helicopter or the plane
