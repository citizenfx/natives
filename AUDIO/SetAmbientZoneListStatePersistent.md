---
ns: AUDIO
---
## SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT

```c
// 0xF3638DAE8C4045E1 0x5F5A2605
void SET_AMBIENT_ZONE_LIST_STATE_PERSISTENT(char* ambientZone, BOOL enabled, BOOL forceUpdate);
```


## Parameters
* **ambientZone**:
* **enabled**: Enables/disables a list of ambient zones persistently
* **forceUpdate**: Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.
