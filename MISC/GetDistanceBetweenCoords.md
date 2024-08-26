---
ns: MISC
---
## GET_DISTANCE_BETWEEN_COORDS

```c
// 0xF1B760881820C952 0xF698765E
float GET_DISTANCE_BETWEEN_COORDS(float x1, float y1, float z1, float x2, float y2, float z2, BOOL useZ);
```

Returns the distance between two three-dimensional points, optionally ignoring the Z values.
If useZ is false, only the 2D plane (X-Y) will be considered for calculating the distance.
Consider using this faster native instead: SYSTEM::VDIST - DVIST always takes in consideration the 3D coordinates.

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

-- language faster equivalent:
local firstVec = vector3(0.0, 0.0, 0.0)
local secondVec = vector3(5.0, 5.0, 5.0)

local dist = #(firstVec - secondVec) -- Use Z
local dist = #(firstVec.xy - secondVec.xy) -- Do not use Z
```
```cs
float dist = GetDistanceBetweenCoords(0f, 0f, 0f, 5f, 5f, 5f, true)

// language faster equivalent:

Vector3 firstVec = new Vector3(0f, 0f, 0f);
Vector3 secondVec = new Vector3(5f, 5f, 5f);

float dist = firstVec.DistanceToSquared(secondVec); // Use Z
float dist = firstVec.DistanceToSquared2D(secondVec); // Do not use Z
```
