---
ns: VEHICLE
aliases: ["0x3DFF319A831E0CDB","_GET_VEHICLE_HEADLIGHTS_COLOUR","_GET_VEHICLE_XENON_LIGHTS_COLOUR"]
---
## _GET_VEHICLE_XENON_LIGHTS_COLOR

```c
// 0x3DFF319A831E0CDB
int _GET_VEHICLE_XENON_LIGHTS_COLOR(Vehicle vehicle);
```

Use [_SET_VEHICLE_HEADLIGHTS_COLOUR](#_0xE41033B25D003A07) to set the headlights color for the vehicle.

You must enable xenon headlights for this native to work properly.

```c
enum eHeadlightColors {
    Default = 255,
    White = 0,
    Blue = 1,
    ElectricBlue = 2,
    MintGreen = 3,
    LimeGreen = 4,
    Yellow = 5,
    GoldenShower = 6,
    Orange = 7,
    Red = 8,
    PonyPink = 9,
    HotPink = 10,
    Purple = 11,
    Blacklight = 12
}
```

## Parameters
* **vehicle**: The vehicle to get the headlight color from.

## Return value
Returns the xenons light color, refer to `eHeadlightColors`
