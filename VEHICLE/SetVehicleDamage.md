---
ns: VEHICLE
---
## SET_VEHICLE_DAMAGE

```c
// 0xA1DD317EA8FD4F29 0x21B458B2
void SET_VEHICLE_DAMAGE(Vehicle vehicle, float xOffset, float yOffset, float zOffset, float damage, float radius, BOOL focusOnModel);
```

This native applies damage to a specific point on a vehicle.

## Parameters
* **vehicle**: 
* **xOffset**: 
* **yOffset**: 
* **zOffset**: 
* **damage**: 
* **radius**: the size of the damage sphere to apply
* **focusOnModel**: when set to `true`, the damage sphere will travel towards the vehicle from the given point, thus guaranteeing an impact

## Examples

```lua
-- Both of these are for an average sized car

-- nothing will be hit
SetVehicleDamage(vehicle, 0.0, 0.0, 0.33, 200.0, 100.0, false)

-- will hit the first hitbox on your Z index line
SetVehicleDamage(vehicle, 0.0, 0.0, 0.33, 200.0, 100.0, true)
```

