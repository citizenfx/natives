---
ns: AUDIO
aliases: ["_SET_RADIO_TRACK_MIX"]
---
## SET_RADIO_TRACK_WITH_START_OFFSET

```c
// 0x2CB0075110BE1E56
void SET_RADIO_TRACK_WITH_START_OFFSET(char* radioStationName, char* mixName, int timeOffsetInMs);
```

Forces a specific track on a radio station with a given start offset.
The station must be frozen, and the track will be queued for immediate playback


## Parameters
* **radioStationName**:
* **mixName**:
* **timeOffsetInMs**:
