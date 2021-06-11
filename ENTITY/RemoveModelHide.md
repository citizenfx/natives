---
ns: ENTITY
---
## REMOVE_MODEL_HIDE

```c
// 0xD9E3006FB3CBD765 0x993DBC10
void REMOVE_MODEL_HIDE(Any x, Any y, Any z, Any radius, Any model, Any p5);
```

p5 requires more research. See also [`CREATE_MODEL_HIDE`](#_0x8A97BCA30A0CE478) and [`CREATE_MODEL_SWAP`](#_0x92C47782FDA8B2A3).

Network players do not see changes done with this.

```
NativeDB Parameter 0: float x
NativeDB Parameter 1: float y
NativeDB Parameter 2: float z
NativeDB Parameter 3: float radius
NativeDB Parameter 4: Hash model
NativeDB Parameter 5: BOOL p5
```

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
