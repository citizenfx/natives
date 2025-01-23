---
ns: ENTITY
---
## IS_ENTITY_AT_COORD

```c
// 0x20B60995556D004F 0xD749B606
BOOL IS_ENTITY_AT_COORD(Entity entity, float xPos, float yPos, float zPos, float xSize, float ySize, float zSize, BOOL highlightArea, BOOL do3dCheck, int transportMode);
```

Checks if the entity is within the given square of size xSize, ySize, zSize centered around the given coordinates.

The sizes given are the apothem (half of side) of the square, so a size of 5 would result in a square of 10x10, not 5x5.


For the highlightArea, if do3dCheck is true, the marker will be drawn at the bottom of the target area. So if the square is centered on the ground with a zSize larger than 0, the marker will appear under the ground.
The marker also doesn't scale, so it is always the same size (around half a meter).
So unfortunately the marker isn't that useful as it doesn't convey the correct information about the area (the marker doesn't reflect when the player is actually in the marker or not)

## Parameters
* **entity**: The entity to check the position of
* **xPos**: The position of the square along the x-axis
* **yPos**: The position of the square along the y-axis
* **zPos**: The position of the square along the z-axis (only applicable if do3dCheck is true)
* **xSize**: The apothem of the square along the x-axis
* **ySize**: The apothem of the square along the y-axis
* **zSize**: The apothem of the square along the z-axis (only applicable if do3dCheck is true)
* **highlightArea**: Whether to draw a marker (yellow cylindrical marker at the given coords)
* **do3dCheck**: Whether to check the z-axis
* **transportMode**: Checks the transport mode the ped is using, only does something if entity is a ped. Transport modes are: 0 (any), 1 (on foot), 2 (in vehicle)

## Return value
A boolean value which represents if the entity is within the given square area.

## Examples
```lua
-- Simple demonstration which slides the ped along the x and y axis until the ped is outside the given area
local offset = 10
while IsEntityAtCoord(PlayerPedId(), coords.x, coords.y, coords.z, 20.0, 20.0, 20.0, false, false, 0) do
    offset += 0.1
    local targetCoords = coords + vector3(offset, offset, 0)
    SetEntityCoords(PlayerPedId(), targetCoords.x, targetCoords.y, targetCoords.z)
    Citizen.Wait(0)
end
print(i) -- Prints 20.1, as expected
```
