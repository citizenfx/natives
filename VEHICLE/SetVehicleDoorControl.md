---
ns: VEHICLE
---
## SET_VEHICLE_DOOR_CONTROL

```c
// 0xF2BFA0430F0A0FCB 0x572DD360
void SET_VEHICLE_DOOR_CONTROL(Vehicle vehicle, int doorIndex, int speed, float angle);
```

```
doorIndex:  
0 = Front Left Door (driver door)  
1 = Front Right Door  
2 = Back Left Door  
3 = Back Right Door  
4 = Hood  
5 = Trunk  
6 = Trunk2  
p2:  
mostly use 0 and 1, very rare using 3 and 5  
p3:  
It seems it is an angle  
Example in VB:   
    Public Shared Sub Set_Vehicle_Door_Angle(Vehicle As Vehicle, Door As VehicleDoor, Angle As Single)  
        Native.Function.Call(Hash.SET_VEHICLE_DOOR_CONTROL, Vehicle.Handle, Door, 1, Angle)  
    End Sub  
I'm Not MentaL  
sfink: p2 is speed, 5 is fast, 1 is slow 3 is medium  
```

## Parameters
* **vehicle**: 
* **doorIndex**: 
* **speed**: 
* **angle**: 

