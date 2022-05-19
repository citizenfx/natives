---
ns: PATHFIND
---
## GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0x80CA6A8B6C094CC4 0x7349C856
BOOL GET_NTH_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, int nthClosest, Vector3* outPosition, float* heading, int* totalLanes, int nodeType, float unknown3, float unknown4);
```

```
Get the nth closest vehicle node with its heading and total lane count. (unknown3 = 3.0, unknown4 = 2.5)  

Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.
Starting at 2, every fourth node is under the map, always same coords.
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).
gtaforums.com/topic/843561-pathfind-node-types

If you need specific foward and backward lane counts use `GET_CLOSEST_ROAD`
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **nthClosest**: 
* **outPosition**: 
* **heading**: 
* **totalLanes**: 
* **nodeType**: 
* **unknown3**: 
* **unknown4**: 

## Return value
