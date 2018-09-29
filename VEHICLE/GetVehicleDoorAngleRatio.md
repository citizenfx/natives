---
ns: VEHICLE
---
## GET_VEHICLE_DOOR_ANGLE_RATIO

```c
// 0xFE3F9C29F7B32BD5 0x0E399C26
float GET_VEHICLE_DOOR_ANGLE_RATIO(Vehicle vehicle, int door);
```

```
example in vb:  
Public Shared Function Get_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor) As Single  
    Return Native.Function.Call(Of Single)(Hash.GET_VEHICLE_DOOR_ANGLE_RATIO, Vehicle.Handle, Door)  
End Function  
		I'm Not MentaL  
```

## Parameters
* **vehicle**: 
* **door**: 

## Return value
