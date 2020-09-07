---
ns: VEHICLE
---
## SET_VEHICLE_LIVERY

```c
// 0x60BF608F1B8CD1B6 0x7AD87059
void SET_VEHICLE_LIVERY(Vehicle vehicle, int livery);
```

```
This native does for most vehicles nothing, some vehicle that use this are (Sanchez, Windsor,...)
Use GetVehicleLiveryCount(veh) to differentiate between vehicles that use this native.
For other vehicles use GetNumVehicleMods(veh, 48) and SetVehicleMod(veh, 48, index) to differentiate.
```

## Parameters
* **vehicle**: 
* **livery**: 

