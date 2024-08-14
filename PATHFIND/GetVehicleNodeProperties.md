---
ns: PATHFIND
---
## GET_VEHICLE_NODE_PROPERTIES

```c
// 0x0568566ACBB5DEDC 0xCC90110B
BOOL GET_VEHICLE_NODE_PROPERTIES(float x, float y, float z, int* density, int* flags);
```

Gets the density and flags of the closest node to the specified position.  
Density is a value between 0 and 15, indicating how busy the road is.  

```c
enum eVehicleNodeProperties {
	OFF_ROAD = 1 << 0,
	ON_PLAYERS_ROAD =  1 << 1,
	NO_BIG_VEHICLES = 1 << 2,
	SWITCHED_OFF = 1 << 3,
	TUNNEL_OR_INTERIOR = 1 << 4,
	LEADS_TO_DEAD_END = 1 << 5,
	HIGHWAY = 1 << 6,
	JUNCTION = 1 << 7,
	TRAFFIC_LIGHT = 1 << 8,
	GIVE_WAY = 1 << 9,
	WATER = 1 << 10,
}
```

## Parameters
* **x**: x position of search
* **y**: y position of search
* **z**: z position of search
* **density**: The traffic density the current node will spawn in a range of 0-15.
* **flags**: The vehicle node flags, see `eVehicleNodeProperties`.


## Return value
Returns `true` if the node was found, or `false` if the node was not found, or was not streamed in.
