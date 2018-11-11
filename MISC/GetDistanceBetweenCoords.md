---
ns: MISC
---
## GET_DISTANCE_BETWEEN_COORDS

```c
// 0xF1B760881820C952 0xF698765E
float GET_DISTANCE_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, BOOL useZ);
```

Returns the distance between two three-dimensional points, optionally ignoring the Z values.

You'll most likely want to use your language's native vector functionality instead.

## Parameters
* **x1**: The X coordinate of the first point.
* **y1**: The Y coordinate of the first point.
* **z1**: The Z coordinate of the first point.
* **x2**: The X coordinate of the second point.
* **y2**: The Y coordinate of the second point.
* **z2**: The Z coordinate of the second point.
* **useZ**: Whether or not to use the Z coordinate.

## Return value
The distance between the passed points in units.

## Examples
```lua
local dist = GetDistanceBetweenCoords(0.0, 0.0, 0.0, 5.0, 5.0, 5.0, true)

-- equivalent:

dist = #(vector3(0.0, 0.0, 0.0) - vector3(5.0, 5.0, 5.0))
```