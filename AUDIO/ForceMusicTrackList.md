---
ns: AUDIO
aliases: ["0x4E0AF9114608257C", "_FORCE_RADIO_TRACK_LIST_POSITION"]
---
## FORCE_​MUSIC_​TRACK_​LIST

```c
// 0x4E0AF9114608257C
void FORCE_​MUSIC_​TRACK_​LIST(char* radioStation, char* trackListName, int milliseconds);
```

```
Changes start time of a tracklist (milliseconds)
R* uses a random int: MISC::GET_RANDOM_INT_IN_RANGE(0, 13) * 60000)

NativeDB Introduced: v2372
```


## Parameters
* **radioStation**: The name of the radio station
* **trackListName**: The name of the tracklist.
* **milliseconds**: The desired start time of the tracklist in milliseconds.
