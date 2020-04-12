---
ns: PATHFIND
---
## CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS

```c
// 0xADD95C7005C4A197 0xB114489B
float CALCULATE_TRAVEL_DISTANCE_BETWEEN_POINTS(float x1, float y1, float z1, float x2, float y2, float z2);
```

Calculates the travel distance between a set of points.
Doesn't seem to correlate with distance on gps sometimes.

This function returns the value 100000.0 over long distances, seems to be a failure mode result, potentially occurring when not all path nodes are loaded into pathfind.

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 

## Return value
