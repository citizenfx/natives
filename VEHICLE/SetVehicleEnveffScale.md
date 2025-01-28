---
ns: VEHICLE
aliases: ["_SET_VEHICLE_PAINT_FADE"]
---
## SET_VEHICLE_ENVEFF_SCALE

```c
// 0x3AFDC536C3D01674 0x8332730C
void SET_VEHICLE_ENVEFF_SCALE(Vehicle vehicle, float fade);
```

Examples with a besra:

- fade value `0.0`:
![image with fade value set to 0.0](./SetVehicleEnveffScale/CiGTTOw.webp)

- fade value `0.5`:
![image with fade value set to 0.5](./SetVehicleEnveffScale/omJKyzR.webp)

- fade value `1.0`:
![image with fade value set to 1.0](./SetVehicleEnveffScale/fqAq73t.webp)


The parameter fade is a value from 0-1, where 0 is fresh paint.

## Parameters
* **vehicle**: Target vehicle
* **fade**: The paint fade effect strength
