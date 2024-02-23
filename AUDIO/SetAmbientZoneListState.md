---
ns: AUDIO
---
## SET_AMBIENT_ZONE_LIST_STATE

```c
// 0x9748FA4DE50CCE3E 0xBF80B412
void SET_AMBIENT_ZONE_LIST_STATE(char* zoneListName, BOOL enabled, BOOL forceUpdate);
```



## Parameters
* **zoneListName**:
* **enabled**: Enables/disables a list of ambient zones for the duration of this script
* **forceUpdate**: Set to true to force a zone to become disabled even if its currently active, default behaviour is to only change state when the player leaves the zone.

