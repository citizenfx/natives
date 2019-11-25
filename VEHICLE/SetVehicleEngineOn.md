---
ns: VEHICLE
---
## SET_VEHICLE_ENGINE_ON

```c
// 0x2497C4717C8B881E 0x7FBC86F1
void SET_VEHICLE_ENGINE_ON(Vehicle vehicle, BOOL value, BOOL instantly, BOOL noAutoTurnOn);
```

```
Starts or stops the engine on the specified vehicle.  
vehicle: The vehicle to start or stop the engine on.  
value: true to turn the vehicle on; false to turn it off.  
instantly: if true, the vehicle will be set to the state immediately; otherwise, the current driver will physically turn on or off the engine.  
--------------------------------------  
from what I've tested when I do this to a helicopter the propellers turn off after the engine has started. so is there any way to keep the heli propellers on?  
--------------------------------------  
And what's with BOOL otherwise, what does it do???  
```

## Parameters
* **vehicle**: 
* **value**: 
* **instantly**: 
* **noAutoTurnOn**: 

