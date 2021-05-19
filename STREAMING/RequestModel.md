---
ns: STREAMING
---
## REQUEST_MODEL

```c
// 0x963D27A58DF860AC 0xFFF1B500
void REQUEST_MODEL(Hash model);
```

```
Request a model to be loaded into memory.
```
**Note**: the function **also** accepts a model passed by ped name. (string)

e.g.: RequestModel('ig_abigail')

Same as: RequestModel(0x400AEC41)


## Parameters
* **model**: 

## Examples
```lua
local enemyInfo = {model ="csb_ramp_marine",
  coords = vector3(playerSpawnCoords.x + 4.5,        
  playerSpawnCoords.y + 1.5,
  playerSpawnCoords.z),
  heading = 180.0}
RequestModel(enemyInfo.model)
```
