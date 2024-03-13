---
ns: AUDIO
aliases: ["_SET_RADIO_STATION_IS_VISIBLE"]
---
## SET_RADIO_STATION_AS_FAVOURITE

```c
// 0x4CAFEBFA21EC188D
void SET_RADIO_STATION_AS_FAVOURITE(char* radioStation, BOOL toggle);
```

Mark a radio station as a favourite (by default, all stations are favourites).

## Parameters
* **radioStation**:
* **toggle**: set to false to hide the radio station from the radio wheel, true to show in the radio wheel
