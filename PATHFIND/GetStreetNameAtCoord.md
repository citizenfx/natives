---
ns: PATHFIND
---
## GET_STREET_NAME_AT_COORD

```c
// 0x2EB41072B4C1E4C0 0xDEBEEFCF
void GET_STREET_NAME_AT_COORD(float x, float y, float z, Hash* streetName, Hash* crossingRoad);
```

```
Determines the name of the street which is the closest to the given coordinates.
x,y,z - the coordinates of the street
streetName - returns a hash to the name of the street the coords are on
crossingRoad - if the coordinates are on an intersection, a hash to the name of the crossing road
Note: the names are returned as hashes, the strings can be returned using the function HUD::GET_STREET_NAME_FROM_HASH_KEY.
```

## Parameters
* **x**: 
* **y**: 
* **z**: 
* **streetName**: 
* **crossingRoad**: 

