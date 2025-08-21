---
ns: ZONE
---
## GET_ZONE_FROM_NAME_ID

```c
// 0x98CD1D2934B76CC1 0x8EC68304
int GET_ZONE_FROM_NAME_ID(char* zoneName);
```

Refer to https://docs.fivem.net/docs/game-references/zones/ for a list of all zones including their integer ID, string ID, short name and full name

## Parameters
* **zoneName**: The zone name like "Z_RMAN2", most-left column of popzone.ipl

## Return value
The zone ID, index in the popzone.ipl file starting with 1

## Examples

```lua
local zoneId = GetZoneFromNameId("Z_GOLF3")
print(zoneId) -- 3
```
