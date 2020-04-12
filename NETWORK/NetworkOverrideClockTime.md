---
ns: NETWORK
---
## NETWORK_OVERRIDE_CLOCK_TIME

```c
// 0xE679E3E06E363892 0xC077BCD6
void NETWORK_OVERRIDE_CLOCK_TIME(int Hours, int Minutes, int Seconds);
```

Works in Singleplayer too.

Actually has a 4th param (BOOL) that sets byte_14273C46C (in b944) to whatever was passed to p3.

Passing wrong data (e.g. hours above 23) will cause the game to crash.

## Parameters
* **Hours**: 
* **Minutes**: 
* **Seconds**: 

