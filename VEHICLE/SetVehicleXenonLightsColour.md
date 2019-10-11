---
ns: VEHICLE
aliases: ["0xE41033B25D003A07","_SET_VEHICLE_HEADLIGHTS_COLOUR"]
---
## _SET_VEHICLE_XENON_LIGHTS_COLOUR

```c
// 0xE41033B25D003A07
void _SET_VEHICLE_XENON_LIGHTS_COLOUR(Vehicle vehicle, int color);
```

color is the paint index for the vehicle.
Paint index goes from 0 to 12.
Be aware that it only works on xenon lights.

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