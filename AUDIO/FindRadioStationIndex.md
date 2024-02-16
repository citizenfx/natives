---
ns: AUDIO
---
## FIND_RADIO_STATION_INDEX

```c
// 0x8D67489793FF428B 0xECA1512F
int FIND_RADIO_STATION_INDEX(int stationNameHash);
```

## Parameters
* **stationNameHash**: the station name hash to search for

## Return value
The station index for the specified hash, or 254 if the radio station did not exist.
