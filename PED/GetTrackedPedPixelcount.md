---
ns: PED
aliases: ["0x511F1A683387C7E2"]
---
## GET_TRACKED_PED_PIXELCOUNT

```c
// 0x511F1A683387C7E2 0x5B1B70AA
int GET_TRACKED_PED_PIXELCOUNT(Ped ped);
```

Returns the amount of visible pixels of a tracked ped. Requires ped to be tracked first
using [`REQUEST_PED_VISIBILITY`](#_0x7D7A2E43E74E2EB8). 

## Parameters
* **ped**: 

## Return value
int Counter of how many pixels from the tracked ped are visible.
