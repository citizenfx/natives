---
ns: STREAMING
---
## HAS_MODEL_LOADED

```c
// 0x98A4EB5D89A0C952 0x62BFDB37
BOOL HAS_MODEL_LOADED(Hash model);
```

```
Checks if the specified model has loaded into memory.  
```
**Note**: the function **also** accepts a model passed by ped name. (string)

e.g.: HasModelLoaded('ig_abigail')

Same as: HasModelLoaded(0x400AEC41)


## Parameters
* **model**: 

## Return value

## Examples
```lua
local enemyInfo = {model ="csb_ramp_marine",
  coords = vector3(playerSpawnCoords.x + 4.5,        
  playerSpawnCoords.y + 1.5,
  playerSpawnCoords.z),
  heading = 180.0}
HasModelLoaded(enemyInfo.model)
```
