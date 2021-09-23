---
ns: VEHICLE
---
## SET_VEHICLE_NUMBER_PLATE_TEXT

```c
// 0x95A88F0B409CDA47 0x400F9556
void SET_VEHICLE_NUMBER_PLATE_TEXT(Vehicle vehicle, char* plateText);
```

## Parameters
* **vehicle**: The vehicle to set the plate for
* **plateText**: The text to set the plate to, 8 chars maximum

## Examples
```lua
local playerPed = PlayerPedId()
local vehicle = GetVehiclePedIsIn(playerPed)
SetVehicleNumberPlateText(vehicle, "KING")
```
