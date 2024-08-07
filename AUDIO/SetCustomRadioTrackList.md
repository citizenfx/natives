---
ns: AUDIO
aliases: ["0x4E404A9361F75BB2"]
---
## SET_CUSTOM_RADIO_TRACK_LIST

```c
// 0x4E404A9361F75BB2 0x128C3873
void SET_CUSTOM_RADIO_TRACK_LIST(char* radioStation, char* trackListName, BOOL forceNow);
```

Queues up a custom track list on the specified radio station. The content in the track list will be played as soon as possible.
The station does not have to be frozen.


## Parameters
* **radioStation**:
* **trackListName**:
* **forceNow**: wheter or not to interrupt the current track on the tracklist

