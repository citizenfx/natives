---
ns: VEHICLE
---
## GET_VEHICLE_NUMBER_OF_PASSENGERS

```c
// 0x24CB2137731FFE89 0x1EF20849
int GET_VEHICLE_NUMBER_OF_PASSENGERS(Vehicle vehicle, BOOL includeDriversSeat, BOOL includeDeadPeds);
```

```
Gets the number of passengers, NOT including the driver. Use IS_VEHICLE_SEAT_FREE(Vehicle, -1) to also check for the driver  
```

## Parameters
* **vehicle**: 
* **includeDriversSeat**: default: false
* **includeDeadPeds**: default: true

## Return value
