---
ns: MISC
---
## CLEAR_AREA_OF_COPS

```c
// 0x04F8FC8FCF58F88D 0x95C53824
void CLEAR_AREA_OF_COPS(float x, float y, float z, float radius, cs_type(int) BOOL createNetEvent);
```

Clears an area of cops at the given coordinates and radius.

## Parameters
* **x**: The x coordinate of where to clear cops.
* **y**: The y coordinate of where to clear cops.
* **z**: The z coordinate of where to clear cops.
* **radius**: The area radius to clear cops.
* **createNetEvent**: specifies whether a `CClearAreaEvent` event of should be created for online use.

## Examples
```lua
-- Clear the area, do also create an event
ClearAreaOfCops(0.0, 0.0, 0.0, 10000.0, true)
```
