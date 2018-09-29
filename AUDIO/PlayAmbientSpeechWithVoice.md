---
ns: AUDIO
---
## _PLAY_AMBIENT_SPEECH_WITH_VOICE

```c
// 0x3523634255FC3318 0x8386AE28
void _PLAY_AMBIENT_SPEECH_WITH_VOICE(Ped p0, char* speechName, char* voiceName, char* speechParam, BOOL p4);
```

```
This is the same as _PLAY_AMBIENT_SPEECH1 and _PLAY_AMBIENT_SPEECH2 but it will allow you to play a speech file from a specific voice file. It works on players and all peds, even animals.  
EX (C#):  
GTA.Native.Function.Call(Hash._0x3523634255FC3318, Game.Player.Character, "GENERIC_INSULT_HIGH", "s_m_y_sheriff_01_white_full_01", "SPEECH_PARAMS_FORCE_SHOUTED", 0);  
The first param is the ped you want to play it on, the second is the speech name, the third is the voice name, the fourth is the speech param, and the last param is usually always 0.  
Full list of speeches and voices names: gist.github.com/alexguirre/0af600eb3d4c91ad4f900120a63b8992  
```

## Parameters
* **p0**: 
* **speechName**: 
* **voiceName**: 
* **speechParam**: 
* **p4**: 

