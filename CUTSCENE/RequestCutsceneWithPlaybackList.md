---
ns: CUTSCENE
aliases: ["0xC23DE0E91C30B58C","_REQUEST_CUTSCENE_EX"]
---
## REQUEST_CUTSCENE_WITH_PLAYBACK_LIST

```c
// 0xC23DE0E91C30B58C 0xD98F656A
void REQUEST_CUTSCENE_WITH_PLAYBACK_LIST(char* cutsceneName, int playbackFlags, int flags);
```

```
playbackFlags: Which scenes should be played.
Example: 0x105 (bit 0, 2 and 8 set) will enable scene 1, 3 and 9.
```

## Parameters
* **cutsceneName**: 
* **playbackFlags**: 
* **flags**: Usually 8

