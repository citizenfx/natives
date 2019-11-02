---
ns: AUDIO
aliases: ["0x774BD811F656A122"]
---
## SET_RADIO_STATION_MUSIC_ONLY

```c
// 0x774BD811F656A122 0xB1FF7137
void SET_RADIO_STATION_MUSIC_ONLY(char* radioStation, BOOL toggle);
```

```
6 calls in the b617d scripts, removed identical lines:  
AUDIO::_774BD811F656A122("RADIO_01_CLASS_ROCK", 1);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 0);  
AUDIO::_774BD811F656A122(AUDIO::GET_RADIO_STATION_NAME(10), 1);  
```

## Parameters
* **radioStation**: 
* **toggle**: 

