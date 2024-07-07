---
ns: VEHICLE
---
## GET_VEHICLE_DOOR_ANGLE_RATIO

```c
// 0xFE3F9C29F7B32BD5 0x0E399C26
float GET_VEHICLE_DOOR_ANGLE_RATIO(Vehicle vehicle, int doorIndex);
```
Checks the angle of the door mapped from 0.0 - 1.0 where 0.0 is fully closed and 1.0 is fully open.

See eDoorId declared in [`SET_VEHICLE_DOOR_SHUT`](#_0x93D9BD300D7789E5)

## Parameters
* **vehicle**: Vehicle
* **doorIndex**: Index of door to check

## Return value
A float representing angle of door mapped from 0.0 to 1.0

## Examples
```lua
local veh = GetVehiclePedIsIn(PlayerPedId()
-- check if driver door is open
if GetVehicleDoorAngleRatio(veh, 0) > 0.0 then
  print("Driver door is open!)
end
```
