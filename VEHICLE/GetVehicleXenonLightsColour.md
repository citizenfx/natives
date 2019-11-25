---
ns: VEHICLE
aliases: ["0x3DFF319A831E0CDB","_GET_VEHICLE_HEADLIGHTS_COLOUR"]
---
## _GET_VEHICLE_XENON_LIGHTS_COLOUR

```c
// 0x3DFF319A831E0CDB
int _GET_VEHICLE_XENON_LIGHTS_COLOUR(Vehicle vehicle);
```

Returns the headlight color index from the vehicle. Value between 0, 12.
Use [_SET_VEHICLE_HEADLIGHTS_COLOUR](#_0xE41033B25D003A07) to set the headlights color for the vehicle.
Must enable xenon headlights before it'll take affect.

List of colors and ids:
```
enum headlightColors {
    Default = -1,
    White = 0,
    Blue = 1,
    Electric_Blue = 2,
    Mint_Green = 3,
    Lime_Green = 4,
    Yellow = 5,
    Golden_Shower = 6,
    Orange = 7,
    Red = 8,
    Pony_Pink = 9,
    Hot_Pink = 10,
    Purple = 11,
    Blacklight = 12
}
```

## Parameters
* **vehicle**: The vehicle to get the headlight color from.

## Return value
Returns an int, value between 0-12 or 255 if no color is set.



