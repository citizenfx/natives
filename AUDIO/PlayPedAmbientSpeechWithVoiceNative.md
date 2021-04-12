---
ns: AUDIO
aliases: ["_PLAY_AMBIENT_SPEECH_WITH_VOICE"]
---
## PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE

```c
// 0x3523634255FC3318 0x8386AE28
void PLAY_PED_AMBIENT_SPEECH_WITH_VOICE_NATIVE(Ped ped, char* speechName, char* voiceName, char* speechParam, BOOL p4);
```

```
This is the same as PLAY_PED_AMBIENT_SPEECH_NATIVE and PLAY_PED_AMBIENT_SPEECH_AND_CLONE_NATIVE but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.
EX (C#):
GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);
The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.
```

## Parameters
* **ped**: 
* **speechName**: 
* **voiceName**: 
* **speechParam**: 
* **p4**: 

