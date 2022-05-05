---
ns: CUTSCENE
aliases: ['0x971D7B15BCDBEF99']
---
## _GET_CUTSCENE_END_TIME

```c
// 0x971D7B15BCDBEF99
int _GET_CUTSCENE_END_TIME();
```

Returns the time of the cutscene's end accounting for [`REQUEST_CUTSCENE_WITH_PLAYBACK_LIST`](#_0xC23DE0E91C30B58C) 

If a cutscene is laid out with 10 second sections, and section 0 and 1 are enabled then it would be 20000ms.

```
NativeDB Introduced: v1734
```

