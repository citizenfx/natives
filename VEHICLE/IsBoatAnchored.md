---
ns: VEHICLE
aliases: ["0xB0AD1238A709B1A2", "_IS_BOAT_ANCHORED_AND_FROZEN"]
---
## IS_BOAT_ANCHORED

```c
// 0xB0AD1238A709B1A2
BOOL IS_BOAT_ANCHORED(Vehicle boat);
```

Checks if a boat is currently anchored.

This native is a getter for [SET_BOAT_ANCHOR](#_0x75DBEC174AEEAD10).


```
NativeDB Introduced: v573
```

## Parameters
* **boat**: The boat to check.

## Return value
Returns `true` if the boat is currently anchored, `false` otherwise.