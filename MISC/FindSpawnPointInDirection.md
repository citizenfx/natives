---
ns: MISC
---
## FIND_SPAWN_POINT_IN_DIRECTION

```c
// 0x6874E2190B0C1972 0x71AEFD77
BOOL FIND_SPAWN_POINT_IN_DIRECTION(float posX, float posY, float posZ, float dirX, float dirY, float dirZ, float distance, Vector3* spawnPoint);
```

```
Finds a position ahead of the player by predicting the players next actions.  
The positions match path finding node positions.  
When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
```

## Parameters
* **posX**: 
* **posY**: 
* **posZ**: 
* **dirX**: 
* **dirY**: 
* **dirZ**: 
* **distance**: 
* **spawnPoint**: 

## Return value
