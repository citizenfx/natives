---
ns: VEHICLE
---
## SET_VEHICLE_DOOR_SHUT

```c
// 0x93D9BD300D7789E5 0x142606BD
void SET_VEHICLE_DOOR_SHUT(Vehicle vehicle, int doorIndex, BOOL closeInstantly);
```

Sets the specified door index shut on the passed vehicle.

doorIndex:  
0 = Front Left Door  
1 = Front Right Door  
2 = Back Left Door  
3 = Back Right Door  
4 = Hood  
5 = Trunk  
6 = Trunk2  


## Parameters
* **vehicle**: Vehicle.
* **doorIndex**: Index of the door you want to close (0-7).
* **closeInstantly**: Whether the doors close instantly.

## Examples
```lua
local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
for i = 0, 5 do
  SetVehicleDoorShut(Vehicle, i, false) -- will close all doors from 0-5
end
```
