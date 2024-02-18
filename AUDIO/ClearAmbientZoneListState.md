---
ns: AUDIO
---
## CLEAR_AMBIENT_ZONE_LIST_STATE

```c
// 0x120C48C614909FA4 0x38B9B8D4
void CLEAR_AMBIENT_ZONE_LIST_STATE(cs_type(AnyPtr) char* zoneListName, BOOL forceUpdate);
```

Resets the list of ambients zones enabled/disabled status to its value before it was modified by this script.

Default behaviour is that any state change only gets applied once the player leaves the zone.

## Parameters
* **zoneListName**: The zone name to clear
* **forceUpdate**: Whether ot not to force a zone to become disabled even if its currently active

