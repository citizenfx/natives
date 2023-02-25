---
ns: VEHICLE
aliases: ["0x41B9FB92EDED32A6", "_SET_UNK_BOOL_0x102_FOR_SUBMARINE_VEHICLE_TASK"]
---
## _FORCE_SUBMARINE_VEHICLE_TRANSFORM_MODE

```c
// 0x41B9FB92EDED32A6
void ForceSubmarineVehicleTransformMode(Vehicle vehicle, BOOL toggle);
```

Forces the transformation mode of the submarine vehicle (stromberg) by removing the ability for the player to change the mode (pressing H)  

## Parameters
* **vehicle**: A vehicle handle
* **toggle**: true = cannot change mode, false = can change mode

**Old name**: _SET_UNK_BOOL_0x102_FOR_SUBMARINE_VEHICLE_TASK
