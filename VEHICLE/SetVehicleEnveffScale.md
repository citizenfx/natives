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

- Fade value `0.0`:![](https://i.imgur.com/dlWnhgZ.png)
- Fade value `0.5`:![](https://i.imgur.com/rbzMfh6.png)
- Fade value `1.0`:![](https://i.imgur.com/pRqLnSP.png)

The parameter fade is a value from 0-1, where 0 is fresh paint.

## Parameters
* **vehicle**: Target vehicle
* **fade**: The paint fade effect strength
