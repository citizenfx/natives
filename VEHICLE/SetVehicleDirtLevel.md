---
ns: VEHICLE
---
## SET_VEHICLE_DIRT_LEVEL

```c
// 0x79D3B596FE44EE8B 0x2B39128B
void SET_VEHICLE_DIRT_LEVEL(Vehicle vehicle, float dirtLevel);
```

```
You can't use values greater than 15.0  
You can see why here: pastebin.com/Wbn34fGD  
Also, R* does (float)(rand() % 15) to get a random dirt level when generating a vehicle.  
```

## Parameters
* **vehicle**: 
* **dirtLevel**: 

