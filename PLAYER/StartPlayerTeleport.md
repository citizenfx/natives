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
* **findCollisionLand**: This teleports the player to land when set to true and will not consider the Z coordinate parameter provided by you. It will automatically put the Z coordinate so that you don't fall from sky.
* **p7**: 
