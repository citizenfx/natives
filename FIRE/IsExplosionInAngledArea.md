---
ns: FIRE
---
## IS_EXPLOSION_IN_ANGLED_AREA

```c
// 0xA079A6C51525DC4B 0x0128FED9
BOOL IS_EXPLOSION_IN_ANGLED_AREA(int explosionType, float x1, float y1, float z1, float x2, float y2, float z2, float width);
```

See [`IS_POINT_IN_ANGLED_AREA`](#_0x2A70BAE8883E4C81) for the definition of an angled area.

## Parameters
* **explosionType**: explosion enum, -1 for any explosion type. See [ADD_EXPLOSION](#_0xE3AD2BDBAEE269AC).
* **x1**: X dimension of the angled area 'origin'
* **y1**: Y dimension of the angled area 'origin'
* **z1**: Z dimension of the angled area 'origin'
* **x2**: X dimension of the angled area 'extent'
* **y2**: Y dimension of the angled area 'extent'
* **z2**: Z dimension of the angled area 'extent'
* **width**: Width of the angled area

## Return value
