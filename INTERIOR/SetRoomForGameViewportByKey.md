---
ns: INTERIOR
aliases: ["0x405DC2AEF6AF95B9"]
---
## SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY

```c
// 0x405DC2AEF6AF95B9 0x0E9529CC
void SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(Hash roomHashKey);
```
Associates the game viewport with the specified interior room to ensure that it renders correctly after a camera cut or warp.

```
Usage: INTERIOR::SET_ROOM_FOR_GAME_VIEWPORT_BY_KEY(INTERIOR::GET_KEY_FOR_ENTITY_IN_ROOM(PLAYER::PLAYER_PED_ID()));  
```

## Parameters
* **roomHashKey**: 

