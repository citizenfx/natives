---
ns: VEHICLE
aliases: ["0xC970D0E0FC31D768"]
---
## _SET_TYRE_TRACTION_LOSS_MULTIPLIER

```c
// 0xC970D0E0FC31D768
void _SET_TYRE_TRACTION_LOSS_MULTIPLIER(Vehicle vehicle, int wheelIndex, float multiplier);
```

```
Controls how much traction the wheel loses.
Default values from Rockstar's Open Wheel Race JSON's:
"owrtds" (Soft): 0.05
"owrtdm" (Medium): 0.45
"owrtdh" (Hard): 0.8
Usable wheels:
0: wheel_lf
1: wheel_rf
2: wheel_lm1
3: wheel_rm1
4: wheel_lr
5: wheel_rr
```

```
NativeDB Introduced: v2060
```

## Parameters
* **vehicle**:
* **wheelIndex**:
* **multiplier**:
