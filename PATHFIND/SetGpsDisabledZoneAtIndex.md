---
ns: PATHFIND
aliases: ["0xD0BC1C6FB18EE154"]
---
## SET_GPS_DISABLED_ZONE_AT_INDEX

```c
// 0xD0BC1C6FB18EE154 0x98BDB311
void SET_GPS_DISABLED_ZONE_AT_INDEX(float x1, float y1, float z1, float x2, float y2, float z2, int index);
```

Disables the GPS route displayed on the minimap while within a certain zone (area). When in a disabled zone and creating a waypoint, the GPS route is not shown on the minimap until you are outside of the zone. When disabled, the direct distance is shown on minimap opposed to distance to travel. Seems to only work before setting a waypoint.

You can clear the disabled zone with CLEAR_GPS_DISABLED_ZONE_AT_INDEX.

**Setting a waypoint at the same coordinate:**

Disabled Zone: [https://i.imgur.com/P9VUuxM.png](https://i.imgur.com/P9VUuxM.png)

Enabled Zone (normal): [https://i.imgur.com/BPi24aw.png](https://i.imgur.com/BPi24aw.png)


## Parameters
* **x1**: X coordinate of first vector.
* **y1**: Y coordinate of first vector.
* **z1**: Z coordinate of first vector.
* **x2**: X coordinate of second vector.
* **y2**: Y coordinate of second vector.
* **z2**: Z coordinate of second vector.
* **index**: Index of zone.
