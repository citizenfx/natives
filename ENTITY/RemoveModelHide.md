---
ns: ENTITY
---
## REMOVE_MODEL_HIDE

```c
// 0xD9E3006FB3CBD765 0x993DBC10
void REMOVE_MODEL_HIDE(cs_type(Any) float x, cs_type(Any) float y, cs_type(Any) float z, cs_type(Any) float radius, cs_type(Any) Hash model, cs_type(Any) BOOL p5);
```

p5 requires more research. See also [`CREATE_MODEL_HIDE`](#_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#_0x92C47782FDA8B2A3).

Network players do not see changes done with this.

## Parameters
* **x**:
* **y**:
* **z**:
* **radius**: The radius specified in gta units
* **model**: The model that you want to make visible
* **p5**:

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
