---
ns: VEHICLE
aliases: ["0x8664170EF165C4A6"]
---
## SET_IGNORE_PLANES_SMALL_PITCH_CHANGE

```c
// 0x8664170EF165C4A6
void SET_IGNORE_PLANES_SMALL_PITCH_CHANGE(Vehicle vehicle, cs_type(Any) BOOL ignorePitching);
```

Sets a flag on planes to ignore minor pitch differences.

```
NativeDB Introduced: v2189
```

## Parameters
* **vehicle**: The plane to which the ignore pitch setting will be applied.
* **ignorePitching**: A boolean value where `true` activate the flag that causes the plane to disregard small pitch changes and `false` deactivates this behavior, allowing the plane to respond to all pitch variations.