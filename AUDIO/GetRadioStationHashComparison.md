---
ns: AUDIO
aliases: ["0x34D66BC058019CE0"]
apiset: client
---
## _GET_RADIO_STATION_HASH_COMPARISON

```c
// 0x34D66BC058019CE0
Hash _GET_RADIO_STATION_HASH_COMPARISON(char* radioStationName);
```

```
GET_CURRENT_*

NativeDB Introduced: v1493
```

In decompiled scripts, this appears to be used for comparison against a variable. While 0x3E65CDE5215832C1 is used for setting variable values.

## Parameters
* **radioStationName**: The name of the radio station

## Returns
* **hash**: Radio station name hash
