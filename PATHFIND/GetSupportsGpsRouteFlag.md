---
ns: PATHFIND
aliases: ["0xA2AE5C478B96E3B6"]
---
## _GET_SUPPORTS_GPS_ROUTE_FLAG

```c
// 0xA2AE5C478B96E3B6 0xEE4B1219
BOOL _GET_SUPPORTS_GPS_ROUTE_FLAG(int nodeID);
```

```
p0 = VEHICLE_NODE_ID  
Returns false for nodes that aren't used for GPS routes.  
Example:  
Nodes in Fort Zancudo and LSIA are false  
```

## Parameters
* **nodeID**: 

## Return value
