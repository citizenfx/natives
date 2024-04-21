---
ns: SYSTEM
---
## VDIST2

```c
// 0xB7A628320EFF8E47 0xC85DEF1F
float VDIST2(float x1, float y1, float z1, float x2, float y2, float z2);
```

Calculates distance between vectors but does not perform Sqrt operations. Its way faster than [`VDIST`](#_0x2A488C176D52CCA5), but it's not faster than direct mathematical calculations.

```
NativeDB Introduced: v323
```

## Parameters
* **x1**: X coordinate of the first point.
* **y1**: Y coordinate of the first point.
* **z1**: Z coordinate of the first point. Represents the height or elevation at the first point.
* **x2**: X coordinate of the second point.
* **y2**: Y coordinate of the second point.
* **z2**: Z coordinate of the second point. Represents the height or elevation at the second point.

## Return value
Returns the distance as a float between the two points (`x1`, `y1`, `z1`) and (`x2`, `y2`, `z2`) in the game world.
