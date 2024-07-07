---
ns: AUDIO
---
## SET_AMBIENT_ZONE_STATE

```c
// 0xBDA07E5950085E46 0x2849CAC9
void SET_AMBIENT_ZONE_STATE(cs_type(AnyPtr) char* zoneName, BOOL enabled, BOOL forceUpdate);
```

## Parameters
* **zoneName**:
* **enabled**: Enables/disables an ambient zone for the duration of this script
* **forceUpdate**: Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.

