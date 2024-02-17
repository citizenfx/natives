---
ns: AUDIO
---
## PLAY_SOUND

```c
// 0x7FF4944CC209192D 0xB6E1917F
void PLAY_SOUND(int soundId, char* audioName, char* audioRef, BOOL bOverNetwork, int nNetworkRange, BOOL enableOnReplay);
```

If the sound is to be manipulated - i.e. stopped - then a SoundId should be acquired using GET_SOUND_ID(), otherwise use -1.

If this is used to play a sound for which no Pan or Speakermask is set by the sound designer, then the sound will play from the map's origin -
therefore this should only be used to play frontend sounds like menu bleeps or other artificially panned effects.

## Parameters
* **soundId**:
* **audioName**:
* **audioRef**:
* **bOverNetwork**:
* **nNetworkRange**:
* **enableOnReplay**:

