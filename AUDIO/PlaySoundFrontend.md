---
ns: AUDIO
---
## PLAY_SOUND_FRONTEND

```c
// 0x67C540AA08E4A6F5 0x2E458F74
void PLAY_SOUND_FRONTEND(int soundId, char* audioName, char* audioRef, BOOL p3);
```

```
List: https://pastebin.com/DCeRiaLJ
All occurrences as of Cayo Perico Heist DLC (b2189), sorted alphabetically and identical lines removed: https://git.io/JtLxM
```

## Parameters
* **soundId**: 
* **audioName**: 
* **audioRef**: 
* **p3**: 

```lua
local successSound = {
  soundID = -1, --this should work for most uses
  audioName = "BASE_JUMP_PASSED", --mission/task success sound
  audioRef = "HUD_AWARDS",
}
PlaySoundFrontend(successSound.soundID, successSound.audioName, successSound.audioRef, 1)
-------------------
local loseSound = {
  soundID = -1,
  audioName = "LOSER",
  audioRef = "HUD_AWARDS",
}
PlaySoundFrontend(loseSound.soundID, loseSound.audioName, loseSound.audioRef, 1)
-------------------
PlaySoundFrontend(-1, "Bed", "WastedSounds", false) --Wasted sound
```
