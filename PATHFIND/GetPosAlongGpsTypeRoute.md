---
ns: PATHFIND
aliases: ["0xF3162836C28F9DA5", "GET_GPS_WAYPOINT_ROUTE_END"]
---
## GET_POS_ALONG_GPS_TYPE_ROUTE

```c
// 0xF3162836C28F9DA5 0x40BB1149
BOOL GET_POS_ALONG_GPS_TYPE_ROUTE(Vector3* result, BOOL bStartAtPlayerPos, float fDistanceAlongRoute, int slotType);
```

Native to get a position along current player GPS route using supplied slot.
This native was previously named `GET_GPS_WAYPOINT_ROUTE_END`, but its named changed.

```c
enum eGpsSlotType {
	GPS_SLOT_WAYPOINT = 0,
	GPS_SLOT_RADAR_BLIP = 1,
	GPS_SLOT_DISCRETE = 2
}
```

## Parameters
* **result**: Coordinates of waypoint marker
* **bStartAtPlayerPos**: Should we project distance from the player position or from next node.
* **fDistanceAlongRoute**: Distance we want to get the position along the route.
* **slotType**: Type of gps route to check against. See `eGpsSlotType`.

## Return value
will return `true` if a position is returned, `false` if not.
