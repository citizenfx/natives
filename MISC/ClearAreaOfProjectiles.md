---
ns: MISC
---
## CLEAR_AREA_OF_PROJECTILES

```c
// 0x0A1CB9094635D1A6 0x18DB5434
void CLEAR_AREA_OF_PROJECTILES(float x, float y, float z, float radius, cs_type(int) BOOL createNetEvent);
```

Clears an area of projectiles at the given coordinates and radius.

## Examples
```lua
-- Clear the area, do also create an event
ClearAreaOfProjectiles(0.0, 0.0, 0.0, 10000.0, true)
```


## Parameters
* **x**: The x coordinate of where to clear projectiles.
* **y**: The y coordinate of where to clear projectiles.
* **z**: The z coordinate of where to clear projectiles.
* **radius**: The area radius to clear projectiles.
* **createNetEvent**: specifies whether a `CClearAreaEvent` event of should be created for online use.

