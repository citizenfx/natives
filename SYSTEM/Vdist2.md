---
ns: SYSTEM
---
## VDIST2

```c
// 0xB7A628320EFF8E47 0xC85DEF1F
float VDIST2(float x1, float y1, float z1, float x2, float y2, float z2);
```

Returns the squared distance between two points, without taking the square root. Faster than [`VDIST`](#_0x2A488C176D52CCA5) when only comparing distances.

Note: Prefer direct mathematical calculations using language built-ins.

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
Returns the squared distance as a float between the two points (`x1`, `y1`, `z1`) and (`x2`, `y2`, `z2`) in the game world.

## Examples
```lua
local squaredDistance = Vdist2(0.0, 0.0, 0.0, 3.0, 4.0, 0.0) -- 25.0
```

```js
const squaredDistance = Vdist2(0.0, 0.0, 0.0, 3.0, 4.0, 0.0); // 25
```

```cs
using static CitizenFX.Core.Native.API;
float squaredDistance = Vdist2(0.0f, 0.0f, 0.0f, 3.0f, 4.0f, 0.0f); // 25
```
