---
ns: INTERIOR
aliases: ["_GET_INTERIOR_HEADING"]
---
## GET_INTERIOR_HEADING

```c
// 0xF49B58631D9E22D9
float GET_INTERIOR_HEADING(int interior);
```

```
NativeDB Introduced: v1493
```

## Parameters
* **interior**: ID of the interior

## Return value
Returns interior heading in radians. Multiply the returned value with 57.29578 (or 180.0 / math.pi) to convert it to degrees.
