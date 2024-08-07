---
ns: AUDIO
---
## SET_AMBIENT_ZONE_STATE_PERSISTENT

```c
// 0x1D6650420CEC9D3B 0xC1FFB672
void SET_AMBIENT_ZONE_STATE_PERSISTENT(char* zoneName, BOOL enabled, BOOL forceUpdate);
```


## Parameters
* **zoneName**:
* **enabled**: Enables/disables an ambient zone for the duration of this script
* **forceUpdate**: Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.

