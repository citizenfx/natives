---
ns: AUDIO
---
## CLEAR_AMBIENT_ZONE_STATE

```c
// 0x218DD44AAAC964FF 0xCDFF3C82
void CLEAR_AMBIENT_ZONE_STATE(char* zoneName, BOOL forceUpdate);
```

Resets the ambient zone enabled/disabled status to its value before it was modified by this script

Default behaviour is that any state change only gets applied once the player leaves the zone.

## Parameters
* **zoneName**: the zone name to clear
* **forceUpdate**: Whether ot not to force a zone to become disabled even if its currently active

