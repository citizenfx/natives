---
ns: VEHICLE
---
## _GET_MAKE_NAME_FROM_VEHICLE_MODEL

```c
// 0xF7AF4F159FF99F97
char* _GET_MAKE_NAME_FROM_VEHICLE_MODEL(Hash modelHash);
```

Will return a vehicle's manufacturer display label.
Returns "CARNOTFOUND" if the hash doesn't match a vehicle hash.

```
NativeDB Introduced: v1868
```

## Parameters
* **modelHash**:
