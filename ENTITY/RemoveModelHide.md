---
ns: ENTITY
---
## REMOVE_MODEL_HIDE

```c
// 0xD9E3006FB3CBD765 0x993DBC10
void REMOVE_MODEL_HIDE(float x, float y, float z, float radius, Hash modelHash, BOOL p5);
```

```
This native makes entities visible that are hidden by the native CREATE_MODEL_HIDE

p5 is set to false in decompiled scripts. If p5 is set to true nothing will happen
```

## Parameters
* **x**:
* **y**: 
* **z**: 
* **radius**: The radius specified in gta units
* **modelHash**: The modelHash that you want to make visible
* **p5**: false, true does nothing

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
