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
I may sort this with alter research, but if someone  
already knows please tell what the difference in   
X2, Y2, Z2 is. I doubt it's rotation. Is it like   
checkpoints where X1, Y1, Z1 is your/a position and  
X2, Y2, Z2 is a given position ahead of that position?  
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
