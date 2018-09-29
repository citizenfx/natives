---
ns: VEHICLE
---
## GET_VEHICLE_ENGINE_HEALTH

```c
// 0xC45D23BAF168AAB8 0x8880038A
float GET_VEHICLE_ENGINE_HEALTH(Vehicle vehicle);
```

```
Returns 1000.0 if the function is unable to get the address of the specified vehicle or if it's not a vehicle.  
Minimum: -4000  
Maximum: 1000  
-4000: Engine is destroyed  
0 and below: Engine catches fire and health rapidly declines  
300: Engine is smoking and losing functionality  
1000: Engine is perfect  
```

## Parameters
* **vehicle**: 

## Return value
