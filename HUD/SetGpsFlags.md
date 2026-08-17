---
ns: HUD
---
## SET_GPS_FLAGS

```c
// 0x5B440763A4C8D15B 0x60539BAB
void SET_GPS_FLAGS(int flags, float blippedRouteDisplayDistance);
```

Sets flags to control GPS behaviour, for routes which use the scripted GPS slot. This includes blip-routes, racetrack, and multi-gps routes. Values will be returned to `GPS_FLAG_NONE` upon mission exit.

```c
enum eGPSFlags {
    GPS_FLAG_NONE						= 0,
	GPS_FLAG_IGNORE_ONE_WAY				= 1,
	GPS_FLAG_FOLLOW_RULES				= 2,
	GPS_FLAG_AVOID_HIGHWAY				= 4,
	GPS_FLAG_NO_ROUTE_SHIFT				= 8,
	GPS_FLAG_CUSTOM_PROXIMITY			= 16,
	GPS_FLAG_NO_PULL_PATH_TO_RIGHT_LANE = 32,
	GPS_FLAG_AVOID_OFF_ROAD				= 64,
	GPS_FLAG_IGNORE_DESTINATION_Z 		= 128
}
```

## Parameters
* **flags**: See `eGPSFlags`
* **blippedRouteDisplayDistance**: the distance which a blipped entity must be away from the player before a GPS route to them is displayed; use this to avoid displaying a GPS for entities which are close enough to the player (default `0`)

