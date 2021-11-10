---
ns: VEHICLE
---
## GET_VEHICLE_PLATE_TYPE

```c
// 0x9CCC9525BF2408E0 0x65CA9286
int GET_VEHICLE_PLATE_TYPE(Vehicle vehicle);
```

```
Returns the plates a vehicle has:
 0 = normal (two plates, front and back),
 1 = unknown,
 2 = single (only one plate, front or back),
 3 = none (no visible plates),
 
 **Motorcycles with no visible plates will sometimes return a 2 for unknown reasons**
```

## Parameters
* **vehicle**: 

## Return value
