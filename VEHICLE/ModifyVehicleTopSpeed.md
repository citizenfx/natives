---
ns: VEHICLE
aliases: ["_SET_VEHICLE_ENGINE_POWER_MULTIPLIER"]
---
## MODIFY_VEHICLE_TOP_SPEED

```c
// 0x93A3996368C94158 0xE943B09C
void MODIFY_VEHICLE_TOP_SPEED(Vehicle vehicle, float value);
```

```
Vehicle power multiplier.  
Does not have to be looped each frame. Can be set once.  
Values lower than 1f don't work.  
Note: If the value is set with GET_RANDOM_FLOAT_IN_RANGE, the vehicle will have an absurdly high ammount of power, and will become almost undrivable for the player or NPCs. The range doesn't seem to matter.  
An high value like 10000000000f will visually remove the wheels that apply the power (front wheels for FWD, rear wheels for RWD), but the power multiplier will still apply, and the wheels still work.  
------  
value is a percentage bump which affects directly the parameter known as fInitialDriveForce in handling.meta. For example:  
VEHICLE::_SET_VEHICLE_ENGINE_POWER_MULTIPLIER(myVehicle, 30.0)  
will have this effect: DriveForce *= 1.3  
```

## Parameters
* **vehicle**: 
* **value**: 

