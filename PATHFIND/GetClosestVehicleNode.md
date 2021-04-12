---
ns: PATHFIND
---
## GET_CLOSEST_VEHICLE_NODE

```c
// 0x240A18690AE96513 0x6F5F1E6C
BOOL GET_CLOSEST_VEHICLE_NODE(float x, float y, float z, Vector3* outPosition, int nodeType, float p5, float p6);
```

```
FYI: When falling through the map (or however you got under it) you will respawn when your player ped's height is <= -200.0 meters (I think you all know this) and when in a vehicle you will actually respawn at the closest vehicle node.
----------
Vector3 nodePos;
GET_CLOSEST_VEHICLE_NODE(x,y,z,&nodePos,...)
p4 is either 0, 1 or 8. 1 means any path/road. 0 means node in the middle of the closest main (asphalt) road.
p5, p6 are always the same:
0x40400000 (3.0), 0
p5 can also be 100.0 and p6 can be 2.5:
PATHFIND::GET_CLOSEST_VEHICLE_NODE(a_0, &v_5, v_9, 100.0, 2.5)
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.
Starting at 2, every fourth node is under the map, always same coords.
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).
gtaforums.com/topic/843561-pathfind-node-types
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **outPosition**: 
* **nodeType**: 
* **p5**: 
* **p6**: 

## Return value
