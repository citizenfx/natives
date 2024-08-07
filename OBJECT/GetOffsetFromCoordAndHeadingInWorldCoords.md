---
ns: OBJECT
aliases: ["0x163E252DE035A133", "_GET_OBJECT_OFFSET_FROM_COORDS"]
---
## GET_OFFSET_FROM_COORD_AND_HEADING_IN_WORLD_COORDS 

```c
// 0x163E252DE035A133 0x87A42A12
Vector3 GET_OFFSET_FROM_COORD_AND_HEADING_IN_WORLD_COORDS(float xPos, float yPos, float zPos, float heading, float xOffset, float yOffset, float zOffset);
```

Calculates the world coordinates after applying the specified offsets to the given position, relative to a certain heading.
This native is similar to [`GET_OFFSET_FROM_ENTITY_IN_WORLD_COORDS`](#_0x1899F328B0E12848), but uses a world position and heading as the reference point.

## Parameters
* **xPos**: The X coordinate of the original position.
* **yPos**: The Y coordinate of the original position.
* **zPos**: The Z coordinate of the original position.
* **heading**: The heading (in degrees) relative to which the offsets are applied.
* **xOffset**: Left/right offset from the coord.
* **yOffset**: Forward/backward offset from the coord.
* **zOffset**: Upward/downward offset from the coord.

## Return value
Returns a Vector3 representing the new world coordinates after applying the offsets to the original position relative to the specified heading.
