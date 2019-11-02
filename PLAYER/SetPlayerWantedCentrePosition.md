---
ns: PLAYER
---
## SET_PLAYER_WANTED_CENTRE_POSITION

```c
// 0x520E541A97A13354 0xF261633A
void SET_PLAYER_WANTED_CENTRE_POSITION(Player player, float position, float y, float z);
```

```
# Predominant call signatures  
PLAYER::SET_PLAYER_WANTED_CENTRE_POSITION(PLAYER::PLAYER_ID(), ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1));  
# Parameter value ranges  
P0: PLAYER::PLAYER_ID()  
P1: ENTITY::GET_ENTITY_COORDS(PLAYER::PLAYER_PED_ID(), 1)  
P2: Not set by any call  
```

```
NativeDB Parameter 1: Vector3* position
NativeDB Parameter 2: BOOL y
NativeDB Parameter 3: BOOL z
```

## Parameters
* **player**: 
* **position**: 
* **y**: 
* **z**: 

