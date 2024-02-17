---
ns: AUDIO
---
## PREPARE_MUSIC_EVENT

```c
// 0x1E5185B72EF5158A 0x534A5C1C
BOOL PREPARE_MUSIC_EVENT(char* eventName);
```

Prepares the specified music event. Preparing it in advance will preload any required data so that it's ready to play immediately.

## Parameters
* **eventName**:

## Return value
Returns true if the event is prepared, false otherwise
