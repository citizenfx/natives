---
ns: VEHICLE
---
## GET_PED_IN_VEHICLE_SEAT

```c
// 0xBB40DD2270B65366 0x388FDE9A
Ped GET_PED_IN_VEHICLE_SEAT(Vehicle vehicle, int index);
```

```
indexes:
-1 = Driver
0 = Front Right Passenger
1 = Back Left Passenger
2 = Back Right Passenger
3 = Further Back Left Passenger (vehicles > 4 seats)
4 = Further Back Right Passenger (vehicles > 4 seats)

Can use GET_VEHICLE_MAX_NUMBER_OF_PASSENGERS(vehicle) to help get max index
```

```
NativeDB Added Parameter 3: Any p2
```

## Parameters
* **vehicle**: 
* **index**: 

## Return value
