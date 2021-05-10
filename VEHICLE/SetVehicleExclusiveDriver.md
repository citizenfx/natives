---
ns: VEHICLE
aliases: ["SET_VEHICLE_EXCLUSIVE_DRIVER"]
---
## _0x41062318F23ED854

```c
// 0x41062318F23ED854 0xFF62D324
void _0x41062318F23ED854(Vehicle vehicle, Ped ped, int index);
```

Used to be incorrectly named `SET_VEHICLE_EXCLUSIVE_DRIVER`; likely `SET_VEHICLE_ALLOW_*`.

Toggles a flag related to `SET_VEHICLE_EXCLUSIVE_DRIVER`, however, doesn't enable that feature (or trigger script events related to it).

See [`_SET_VEHICLE_EXCLUSIVE_DRIVER_2`](#_0xB5C51B5502E85E83).

```
NativeDB Parameter 1: BOOL toggle
NativeDB Removed Parameter 2: int index
```

## Parameters
* **vehicle**:
* **ped**:
* **index**:

