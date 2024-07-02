---
ns: AUDIO
aliases: ["_PLAY_AMBIENT_SPEECH2"]
---
## PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE

```c
// 0xC6941B4A3A8FBBB9 0x444180DB
void PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE(Ped ped, char* speechName, char* speechParam);
```


This native has a new argument on newer game builds:
* **syncOverNetwork**: indicates whether this speech should automatically be played on clones of the ped on remote machines

## Parameters
* **ped**:
* **speechName**:
* **speechParam**: See [`PLAY_PED_AMBIENT_SPEECH_NATIVE`](#_0x8E04FEDD28D42462) for params
