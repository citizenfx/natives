---
ns: VEHICLE
aliases: ["_GET_SUBMARINE_IS_BELOW_FIRST_CRUSH_DEPTH"]
---
## GET_SUBMARINE_IS_UNDER_DESIGN_DEPTH

```c
// 0x3E71D0B300B7AA79
BOOL GET_SUBMARINE_IS_UNDER_DESIGN_DEPTH(Vehicle submarine);
```

Determines if the submarine is operating below its designated crush depth.

```
NativeDB Introduced: v2189
```

## Parameters
* **submarine**: The submarine vehicle to be evaluated for being under its crush depth threshold.

## Return value
Returns `true` if the submarine is below its designated crush depth, `false` otherwise.
