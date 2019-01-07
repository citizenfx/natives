---
ns: VEHICLE
aliases: ["0xA6D3A8750DC73270"]
---
## _SET_VEHICLE_ROOF_LIVERY

```c
// 0xA6D3A8750DC73270
void _SET_VEHICLE_ROOF_LIVERY(Vehicle vehicle, int livery);
```

Used to set the tornado custom (convertible) rooftop livery.

Livery value that works for tornado custom is between 0 and 9 from what i can tell. Maybe 0-8 even.

Might work on other custom vehicles but im not sure what those might be, only confirmed it working with the tornado custom.


## Parameters
* **vehicle**: The vehicle handle.
* **livery**: Livery index.

