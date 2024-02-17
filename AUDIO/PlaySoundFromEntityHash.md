---
ns: AUDIO
aliases: ["0x5B9853296731E88D"]
---
## PLAY_SOUND_FROM_ENTITY_HASH

```c
// 0x5B9853296731E88D
void PLAY_SOUND_FROM_ENTITY_HASH(int soundId, cs_type(Any) Hash soundNameHash, cs_type(Any) Entity entity, cs_type(Any) Hash setNameHash, cs_type(Any) BOOL bOverNetwork, int nNetworkRange);
```

Plays back a sound from an entity's location, the sound's position will track the entity's position as it moves.

If the sound doesn't need to be stopped (or have variables passed to it) then a soundId of -1 should be used, otherwise use GET_SOUND_ID to assign the sound a SoundId.

## Parameters
* **soundId**:
* **soundNameHash**:
* **entity**:
* **setNameHash**: Defaults to 0
* **bOverNetwork**: Defaults to false
* **nNetworkRange**: Defaults to 0

