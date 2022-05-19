---
ns: PATHFIND
---
## GET_CLOSEST_ROAD

```c
// 0x132F52BBA570FE92 0x567B0E11
int GET_CLOSEST_ROAD(float x, float y, float z, float p3, int n, Vector3* destNode, Vector3* srcNode, int* forwardLanes, int* backwardLanes, float* width, BOOL onlyMajorRoads);
```

```
p1 seems to be always 1.0f in the scripts  
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **p3**: Some sort of filter. 0x20 returns closest shortcut link. Needs more research.
* **n**: n edge. A bit broken as it returns a random edge after `n` has gone above edge count, but method still returns 1. Always 1 in Rockstar scripts.
* **destNode**: Position of the edge target
* **srcNode**: Position of the edge source
* **forwardLanes**: Lane count forward
* **backwardLanes**: Lane count backwards
* **width**: Width of gap in middle of road between forward and backward directions
* **onlyMajorRoads**: Return major nodes only

## Return value
Usually always 1 even on failure.
