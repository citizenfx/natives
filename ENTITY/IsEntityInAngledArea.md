---
ns: ENTITY
---
## IS_ENTITY_IN_ANGLED_AREA

```c
// 0x51210CED3DA1C78A 0x883622FA
BOOL IS_ENTITY_IN_ANGLED_AREA(Entity entity, float x1, float y1, float z1, float x2, float y2, float z2, float width, BOOL debug, BOOL includez, Any p10);
```

p10 is some entity flag check, also used in [`IS_ENTITY_AT_ENTITY`](#_0x751B70C3D034E187), [`IS_ENTITY_IN_AREA`](#_0x54736AA40E271165) and [`IS_ENTITY_AT_COORD`](#_0x20B60995556D004F).

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

## Parameters
* **entity**: 
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area
* **debug**: a debug flag invoking functions in the same path as ``DRAW_MARKER``
* **includez**: If true, include the Z dimension when doing the height check; otherwise the query becomes two-dimensional
* **p10**: 

## Return value
