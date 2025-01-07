---
ns: VEHICLE
---
## SET_HELI_BLADES_SPEED

```c
// 0xFD280B4D7F3ABC4D 0x5C7D4EA9
void SET_HELI_BLADES_SPEED(Vehicle vehicle, float speed);
```

Despite its name, this works on Helicopters and Planes.

Sets the speed of the helicopter blades in percentage of the full speed.


## Parameters
* **vehicle**: The helicopter or the plane
* **speed**: Desired blade rotation speed from 0.0 to 1.0
