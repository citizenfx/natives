---
ns: ENTITY
---
## REMOVE_MODEL_HIDE

```c
// 0xD9E3006FB3CBD765 0x993DBC10
void REMOVE_MODEL_HIDE(cs_type(Any) float x, cs_type(Any) float y, cs_type(Any) float z, cs_type(Any) float radius, cs_type(Any) Hash model, cs_type(Any) BOOL lazy);
```

Makes all objects of the specified model that were hidden using [`CREATE_MODEL_HIDE`](#_0x8A97BCA30A0CE478) or [`CREATE_MODEL_HIDE_EXCLUDING_SCRIPT_OBJECTS`](#_0x3A52AE588830BF7F) visible again.

If lazy is false, all matching objects currently in scope are restored immediately.
If lazy is true, objects will only reappear when their map is reloaded.


## Parameters
* **x**: X Coordinate of the sphere center.
* **y**: Y Coordinate of the sphere center.
* **z**: Z Coordinate of the sphere center.
* **radius**: Radius of the sphere.
* **model**: The model hash to make visible again.
* **lazy**: The area would need to stream out and back in again to take effect

## Examples
```lua
-- This could be any coordinates, in this example I am using the players ped coordinates
local playerPedCoords = GetEntityCoords(PlayerPedId())

-- Hides all entities with the hash "1437508529" within 1.0 gta units.
CreateModelHide(playerPedCoords, 1.0, 1437508529, true)

Citizen.Wait(2500)

-- This will make all hidden entities with the hash "1437508529" within 1.0 gta units visible.
RemoveModelHide(playerPedCoords, 1.0, 1437508529, false)
```
