---
ns: MISC
aliases: ["0xF56DFB7B61BE7276"]
---
## GET_LINE_PLANE_INTERSECTION

```c
// 0xF56DFB7B61BE7276 0xC6CC812C
BOOL GET_LINE_PLANE_INTERSECTION(float x1, float y1, float z1, float x2, float y2, float z2, float planeX, float planeY, float planeZ, float planeNormalX, float planeNormalY, float planeNormalZ, float* intersectionParameter);
```

Determines whether a line segment intersects a plane and, if so, returns the parameter value at which this intersection occurs.

```
NativeDB Introduced: v323
```

## Parameters
* **x1**: The X-coordinate of the first point of the line segment.
* **y1**: The Y-coordinate of the first point of the line segment.
* **z1**: The Z-coordinate of the first point of the line segment. Together, `x1`, `y1`, and `z1` define the starting point of the line segment.
* **x2**: The X-coordinate of the second point of the line segment.
* **y2**: The Y-coordinate of the second point of the line segment.
* **z2**: The Z-coordinate of the second point of the line segment. Together, `x2`, `y2`, and `z2` define the ending point of the line segment.
* **planeX**: The X-coordinate of a point on the plane. This, along with `planeY` and `planeZ`, specifies a point that lies on the plane's surface.
* **planeY**: The Y-coordinate of a point on the plane.
* **planeZ**: The Z-coordinate of a point on the plane.
* **planeNormalX**: The X-component of the plane's normal vector. The normal vector is perpendicular to the plane's surface and defines its orientation.
* **planeNormalY**: The Y-component of the plane's normal vector.
* **planeNormalZ**: The Z-component of the plane's normal vector. Together, `planeNormalX`, `planeNormalY`, and `planeNormalZ` fully describe the plane's orientation in 3D space.
* **intersectionParameter**: A pointer to a float. This parameter is used to return the value of `t` at which the line segment intersects the plane. The value of `t` is a scalar multiplier that can be used to calculate the exact intersection point on the line segment. If the line does not intersect the plane, the value of `t` is not meaningful.

## Return value
Returns `true` if the line segment intersects the plane, in which case the `intersectionParameter` will contain the intersection point's parameter value. Returns `false` if there is no intersection, making the `intersectionParameter` value irrelevant.

## Examples
```lua
-- Define the line segment with start and end points
local startX, startY, startZ = 100.0, -200.0, 50.0
local endX, endY, endZ = 200.0, -100.0, 50.0

-- Define the plane with a point on the plane and the normal vector
local planeX, planeY, planeZ = 150.0, -150.0, 50.0
local normalX, normalY, normalZ = 0.0, 0.0, 1.0

-- Call the native
local success, intersectionParameter = GetLinePlaneIntersection(startX, startY, startZ, endX, endY, endZ, planeX, planeY, planeZ, normalX, normalY, normalZ, intersectionParameter)

if success then
    -- Calculate the intersection point using intersectionParameter
    local intersectX = startX + (endX - startX) * intersectionParameter
    local intersectY = startY + (endY - startY) * intersectionParameter
    local intersectZ = startZ + (endZ - startZ) * intersectionParameter
    
    print("Intersection point at: (" .. intersectX .. ", " .. intersectY .. ", " .. intersectZ .. ")")
else
    print("No intersection found.")
end
```

```js
// Define the line segment with start and end points
const startX = 100.0, startY = -200.0, startZ = 50.0;
const endX = 200.0, endY = -100.0, endZ = 50.0;

// Define the plane with a point on the plane and the normal vector
const planeX = 150.0, planeY = -150.0, planeZ = 50.0;
const normalX = 0.0, normalY = 0.0, normalZ = 1.0;

// Call the native
const [success, intersectionParameter] = GetLinePlaneIntersection(startX, startY, startZ, endX, endY, endZ, planeX, planeY, planeZ, normalX, normalY, normalZ, intersectionParameter);

if (success) {
    // Calculate the intersection point using intersectionParameter
    const intersectX = startX + (endX - startX) * intersectionParameter;
    const intersectY = startY + (endY - startY) * intersectionParameter;
    const intersectZ = startZ + (endZ - startZ) * intersectionParameter;
    
    console.log(`Intersection point at: (${intersectX}, ${intersectY}, ${intersectZ})`);
} else {
    console.log("No intersection found.");
}
```

```cs
using static CitizenFX.Core.Native.API;

// Define the line segment with start and end points
float startX = 100.0f, startY = -200.0f, startZ = 50.0f;
float endX = 200.0f, endY = -100.0f, endZ = 50.0f;

// Define the plane with a point on the plane and the normal vector
float planeX = 150.0f, planeY = -150.0f, planeZ = 50.0f;
float normalX = 0.0f, normalY = 0.0f, normalZ = 1.0f;

// Call the native
bool success = GetLinePlaneIntersection(startX, startY, startZ, endX, endY, endZ, planeX, planeY, planeZ, normalX, normalY, normalZ, out float intersectionParameter);

if (success) {
    // Calculate the intersection point using intersectionParameter
    float intersectX = startX + (endX - startX) * intersectionParameter;
    float intersectY = startY + (endY - startY) * intersectionParameter;
    float intersectZ = startZ + (endZ - startZ) * intersectionParameter;
    
    Debug.WriteLine($"Intersection point at: ({intersectX}, {intersectY}, {intersectZ})");
} else {
    Debug.WriteLine("No intersection found.");
}
```
