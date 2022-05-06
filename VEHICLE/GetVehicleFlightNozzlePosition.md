---
ns: VEHICLE
aliases: ["0xDA62027C8BDB326E","_GET_PLANE_HOVER_MODE_PERCENTAGE","_GET_VEHICLE_HOVER_MODE_PERCENTAGE","_GET_PLANE_VTOL_DIRECTION"]
---
## GET_VEHICLE_FLIGHT_NOZZLE_POSITION

```c
// 0xDA62027C8BDB326E 0xAD40AD55
float GET_VEHICLE_FLIGHT_NOZZLE_POSITION(Vehicle aircraft);
```

## Parameters
* **aircraft**: The vehicle to check the hover mode on.

## Return value
A float indicating the percentage of the hover mode. 1.0 = in VTOL mode, 0.0 = in normal flying mode.

## Examples
```lua
local vehicle = GetVehiclePedIsIn(PlayerPedId(), false)

if GetVehicleHoverModePercentage(vehicle) == 0.0 then
    print("Flying normally!")
elseif GetVehicleHoverModePercentage(vehicle) == 1.0 then
    print("Flying in VTOL mode!")
else
    print("Currently switching hover mode!")
end

```

```cs
int vehicle = GetVehiclePedIsIn(PlayerPedId(), false);

if (GetVehicleHoverModePercentage(vehicle) == 0f)
{
    Debug.WriteLine("Flying normally!");
}
else if (GetVehicleHoverModePercentage(vehicle) == 1f)
{
    Debug.WriteLine("Flying in VTOL mode!");
}
else
{
    Debug.WriteLine("Currently switching hover mode!");
}
```
