---
ns: VEHICLE
aliases: ["0xDF7E3EEB29642C38"]
---
## _GET_VEHICLE_SUSPENSION_BOUNDS

```c
// 0xDF7E3EEB29642C38
void _GET_VEHICLE_SUSPENSION_BOUNDS(Vehicle vehicle, Vector3* out1, Vector3* out2);
```

```
Outputs 2 Vector3's.
Scripts check if out2.x - out1.x > something.x
Could be suspension related, as in max suspension height and min suspension height, considering the natives location.
```

## Parameters
* **vehicle**: 
* **out1**: 
* **out2**: 

