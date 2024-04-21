---
ns: CUTSCENE
---
## GET_CUTSCENE_TOTAL_DURATION

```c
// 0xEE53B14A19E480D4 0x0824EBE8
int GET_CUTSCENE_TOTAL_DURATION();
```

Gets the total length of the cutscene irrespective of playback list in milliseconds
To account for sections, see [`_GET_CUTSCENE_END_TIME`](#_0x971D7B15BCDBEF99)

## Return value
Cutscene total length in milliseconds