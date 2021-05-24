---
ns: PATHFIND
---
## SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA

```c
// 0x0027501B9F3B407E 0x9DB5D209
void SET_ROADS_BACK_TO_ORIGINAL_IN_ANGLED_AREA(float x1, float y1, float z1, float x2, float y2, float z2, float width);
```

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

```
NativeDB Added Parameter 8: Any p7

bool p7 - always 1  
```

## Parameters
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area

