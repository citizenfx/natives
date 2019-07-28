---
ns: PLAYER
---
## START_PLAYER_TELEPORT

```c
// 0xAD15F075A4DA0FDE 0xC552E06C
void START_PLAYER_TELEPORT(Player player, float x, float y, float z, float heading, BOOL p5, BOOL findCollisionLand, BOOL p7);
```


## Parameters
* **player**: 
* **x**: 
* **y**: 
* **z**: 
* **heading**: 
* **p5**: 
* **findCollisionLand**: 
* **p7**: 

The boolean findCollisionLand teleports the player to land and will not consider the Z coordinate parameter provided by you, it will automatically put the Z coordinate so that you don't fall from sky.
