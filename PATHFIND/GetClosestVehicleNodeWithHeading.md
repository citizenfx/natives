---
ns: PATHFIND
---
## GET_CLOSEST_VEHICLE_NODE_WITH_HEADING

```c
// 0xFF071FB798B803B0 0x8BD5759B
BOOL GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(float x, float y, float z, Vector3* outPosition, float* outHeading, int nodeType, float p6, int p7);
```

```
p5, p6 and p7 seems to be about the same as p4, p5 and p6 for GET_CLOSEST_VEHICLE_NODE. p6 and/or p7 has something to do with finding a node on the same path/road and same direction(at least for this native, something to do with the heading maybe). Edit this when you find out more.  
p5 is either 1 or 12. 1 means any path/road. 12, 8, 0 means node in the middle of the closest main (asphalt) road.  
p6 is always 3.0  
p7 is always 0.  
Known node types: simple path/asphalt road, only asphalt road, water, under the map at always the same coords.   
The node types follows a pattern. For example, every fourth node is of the type water i.e. 3, 7, 11, 15, 19, 23, 27, 31, 35, 39... 239. Could not see any difference between nodes within certain types.   
Starting at 2, every fourth node is under the map, always same coords.  
Same with only asphalt road (0, 4, 8, etc) and simple path/asphalt road (1, 5, 9, etc).  
gtaforums.com/topic/843561-pathfind-node-types  
Example of usage, moving vehicle to closest path/road:  
Vector3 coords = ENTITY::GET_ENTITY_COORDS(playerVeh, true);  
Vector3 closestVehicleNodeCoords;   
float roadHeading;   
PATHFIND::GET_CLOSEST_VEHICLE_NODE_WITH_HEADING(coords.x, coords.y, coords.z, &closestVehicleNodeCoords, &roadHeading, 1, 3, 0);   
ENTITY::SET_ENTITY_HEADING(playerVeh, roadHeading);  
ENTITY::SET_ENTITY_COORDS(playerVeh, closestVehicleNodeCoords.x, closestVehicleNodeCoords.y, closestVehicleNodeCoords.z, 1, 0, 0, 1);  
VEHICLE::SET_VEHICLE_ON_GROUND_PROPERLY(playerVeh);  
------------------------------------------------------------------  
C# Example (ins1de) : pastebin.com/fxtMWAHD  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **outPosition**: 
* **outHeading**: 
* **nodeType**: 
* **p6**: 
* **p7**: 

## Return value
