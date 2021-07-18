---
ns: MISC
---
## FIND_SPAWN_POINT_IN_DIRECTION

```c
// 0x6874E2190B0C1972 0x71AEFD77
BOOL FIND_SPAWN_POINT_IN_DIRECTION(float x1, float y1, float z1, float x2, float y2, float z2, float distance, Vector3* spawnPoint);
```

```
Finds a position ahead of the player by predicting the players next actions.  
The positions match path finding node positions.  
When roads diverge, the position may rapidly change between two or more positions. This is due to the engine not being certain of which path the player will take.  
=======================================================  
1st vector = center position
2nd vector = heading vector
Works great when you pass ENTITY::GET_ENTITY_VELOCITY() as the second vector.
 
=======================================================  
```

## Parameters
* **x1**: 
* **y1**: 
* **z1**: 
* **x2**: 
* **y2**: 
* **z2**: 
* **distance**: 
* **spawnPoint**: 

## Return value
