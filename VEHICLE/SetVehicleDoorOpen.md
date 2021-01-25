---
ns: VEHICLE
---
## SET_VEHICLE_DOOR_OPEN

```c
// 0x7C65DAC73C35C862 0xBB75D38B
void SET_VEHICLE_DOOR_OPEN(Vehicle vehicle, int doorIndex, BOOL loose, BOOL openInstantly);
```

Sets the specified door index open on the passed vehicle.

A setter for [`IS_VEHICLE_DOOR_FULLY_OPEN`](#_0x3E933CFF7B111C22).

doorIndex:  
0 = Front Left Door  
1 = Front Right Door  
2 = Back Left Door  
3 = Back Right Door  
4 = Hood  
5 = Trunk  
6 = Back  
7 = Back2

## Parameters
* **vehicle**: Vehicle.
* **doorIndex**: Index of the door you want to open (0-7)
* **loose**: Whether the door is "loose" (if true the doors have no "spring" and can be closed easily.)
* **openInstantly**: Whether the doors open instantly (if true this native seems to ignore loose)

## Examples
```lua
local Vehicle = GetVehiclePedIsUsing(PlayerPedId())
for i = 0, 5 do
  SetVehicleDoorOpen(Vehicle, i, false, true) -- will open every door from 0-5
end
```
