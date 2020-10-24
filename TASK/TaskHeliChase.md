---
ns: TASK
---
## TASK_HELI_CHASE

```c
// 0xAC83B1DB38D0ADA0 0xAC290A21
void TASK_HELI_CHASE(Ped pilot, Entity entityToFollow, float x, float y, float z);
```

```
Ped pilot should be in a heli.  
EntityToFollow can be a vehicle or Ped.  
x,y,z appear to be how close to the EntityToFollow the heli should be. Scripts use 0.0, 0.0, 80.0. Then the heli tries to position itself 80 units above the EntityToFollow. If you reduce it to -5.0, it tries to go below (if the EntityToFollow is a heli or plane)  
NOTE: If the pilot finds enemies, it will engage them, then remain there idle, not continuing to chase the Entity given.  
```

## Parameters
* **pilot**: 
* **entityToFollow**: 
* **x**: 
* **y**: 
* **z**: 

