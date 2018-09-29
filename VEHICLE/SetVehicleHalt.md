---
ns: VEHICLE
aliases: ["0x260BE8F09E326A20"]
---
## _SET_VEHICLE_HALT

```c
// 0x260BE8F09E326A20 0xCBC7D3C8
void _SET_VEHICLE_HALT(Vehicle vehicle, float distance, int killEngine, BOOL unknown);
```

```
This native makes the vehicle stop immediately, as happens when we enter a MP garage.  
. distance defines how far it will travel until stopping. Garage doors use 3.0.  
. If killEngine is set to 1, you cannot resume driving the vehicle once it stops. This looks like is a bitmapped integer.  
```

## Parameters
* **vehicle**: 
* **distance**: 
* **killEngine**: 
* **unknown**: 

