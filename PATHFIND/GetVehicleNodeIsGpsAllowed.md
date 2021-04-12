---
ns: PATHFIND
aliases: ["0xA2AE5C478B96E3B6","_GET_SUPPORTS_GPS_ROUTE_FLAG"]
---
## GET_VEHICLE_NODE_IS_GPS_ALLOWED

```c
// 0xA2AE5C478B96E3B6 0xEE4B1219
BOOL GET_VEHICLE_NODE_IS_GPS_ALLOWED(int nodeID);
```

```
Returns false for nodes that aren't used for GPS routes.
Example:
Nodes in Fort Zancudo and LSIA are false
```

## Parameters
* **nodeID**: 

## Return value
