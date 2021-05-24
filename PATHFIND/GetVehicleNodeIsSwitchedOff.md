---
ns: PATHFIND
aliases: ["0x4F5070AA58F69279","_GET_IS_SLOW_ROAD_FLAG"]
---
## GET_VEHICLE_NODE_IS_SWITCHED_OFF

```c
// 0x4F5070AA58F69279 0x56737A3C
BOOL GET_VEHICLE_NODE_IS_SWITCHED_OFF(int nodeID);
```

```
Returns true when the node is Offroad. Alleys, some dirt roads, and carparks return true.
Normal roads where plenty of Peds spawn will return false
```

## Parameters
* **nodeID**: 

## Return value
