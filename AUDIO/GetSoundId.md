---
ns: AUDIO
---
## GET_SOUND_ID

```c
// 0x430386FE9BF80B45 0x6AE0AD56
int GET_SOUND_ID();
```

```
Returns numbers in order until it reaches 100, when it reaches 100 it starts returning -1. This native appearantly blocks sounds played with PLAY_SOUND_FRONTEND; PLAY_SOUND; PLAY_SOUND_FROM_COORD; PLAY_SOUND_FROM_ENTITY.
```

## Return value
