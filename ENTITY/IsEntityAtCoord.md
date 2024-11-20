---
ns: ENTITY
---
## IS_ENTITY_AT_COORD

```c
// 0x20B60995556D004F 0xD749B606
BOOL IS_ENTITY_AT_COORD(Entity entity, float xPos, float yPos, float zPos, float xSize, float ySize, float zSize, BOOL highlightArea, BOOL do3dCheck, int transportMode);
```

Checks if the entity's root is located in the given area defined by a centre point and a locate size. 
Specifying a non-zero transport mode will return false early if the entity does not meet the requirements of the transport mode.

```c
enum eTransportMode
{
    TM_ANY = 0,
    TM_ON_FOOT = 1,
    TM_IN_VEHICLE = 2,
}
```

## Parameters
* **entity**: entity to check
* **xPos**: X position of point to check
* **yPos**: Y position of point to check
* **zPos**: Z position of point to check
* **xSize**: X size of area to check
* **ySize**: Y size of area to check
* **zSize**: Z size of area to check
* **highlightArea**: draws a small marker at the center of the point
* **do3dCheck**: whether or not to check the z dimension
* **transportMode**: 0 for any, 1 for on foot, 2 for in vehicle. 

## Return value
* **TRUE**: if the entity is within the bounds specified and aligns with the transport mode
* **FALSE**: if the entity is not within the bounds specified or does not align with the transport mode

## Examples
```lua
Citizen.CreateThread(function()
    while true do
        Citizen.Wait(0)

        local player = PlayerPedId()
        local point = vec3(-3041.72, 32.72, 8.52)
        local size = vec3(10.0, 10.0, 0.0)
        local highlightArea = true
        local do3DCheck = false
        local transportMode = 0

        local isEntityInCoords = IsEntityAtCoord(player, point, size, highlightArea, do3DCheck, transportMode)
    end
end)
```