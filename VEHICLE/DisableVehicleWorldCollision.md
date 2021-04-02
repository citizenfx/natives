---
ns: VEHICLE
aliases: ["0x75627043C6AA90AD"]
---
## _DISABLE_VEHICLE_WORLD_COLLISION

```c
// 0x75627043C6AA90AD
void _DISABLE_VEHICLE_WORLD_COLLISION(Vehicle vehicle);
```

Disables collision for this vehicle (maybe it also supports other entities, not sure).
Only world/building/fixed world objects will have their collisions disabled, props, peds, or any other entity still collides with the vehicle.

[Example video](https://streamable.com/6n45d5)

Not sure if there is a native (and if so, which one) that resets the collisions.

## Parameters
* **vehicle**: the vehicle to disable world collisions for
