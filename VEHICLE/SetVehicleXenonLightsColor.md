---
ns: VEHICLE
aliases: ["0xE41033B25D003A07","_SET_VEHICLE_HEADLIGHTS_COLOUR","_SET_VEHICLE_XENON_LIGHTS_COLOUR"]
---
## _SET_VEHICLE_XENON_LIGHTS_COLOR

```c
// 0xE41033B25D003A07
void _SET_VEHICLE_XENON_LIGHTS_COLOR(Vehicle vehicle, int color);
```

Paint index goes from 0 to 12.

You can find the list of colors and ids here: [_GET_VEHICLE_HEADLIGHTS_COLOUR](#_0x3DFF319A831E0CDB)

## Parameters
* **vehicle**: The vehicle handle.
* **color**: The paint index.

**Result**:
> ![](https://i.imgur.com/yV3cpG9.png)

## Examples

```lua
local veh = GetVehiclePedIsUsing(PlayerPedId())
ToggleVehicleMod(veh, 22, true) -- toggle xenon
SetVehicleHeadlightsColour(veh, 2)
```