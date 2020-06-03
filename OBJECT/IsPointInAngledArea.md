---
ns: OBJECT
---
## IS_POINT_IN_ANGLED_AREA

```c
// 0x2A70BAE8883E4C81 0x73BCFFDC
BOOL IS_POINT_IN_ANGLED_AREA(float xPos, float yPos, float zPos, float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL p10, BOOL includez);
```

An **angled area** is an X-Z oriented rectangle with three parameters: 
1. **origin**: the mid-point along a base edge of the rectangle; 
2. **extent**: the mid-point of opposite base edge on the other Z;
3. **width**: the length of the base edge; (named derived from logging strings ``CNetworkRoadNodeWorldStateData``).

The oriented rectangle can then be derived from the direction of the two points (``norm(origin - extent)``), its orthonormal, and the width, e.g:
1. [golf_mp](https://i.imgur.com/JhsQAK9.png)
2. [am_taxi](https://i.imgur.com/TJWCZaT.jpg)

## Parameters
* **xPos**: The x coordinate.
* **yPos**: The y coordinate.
* **zPos**: The z coordinate.
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area
* **p10**: a debug flag invoking functions in the same path as ``DRAW_MARKER``
* **includez**: If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional

## Return value
